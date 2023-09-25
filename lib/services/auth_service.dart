import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_assignment/generated/l10n.dart';
import 'package:flutter_assignment/models/apiResult/api_result.dart';
import 'package:flutter_assignment/models/userModel/user_model.dart';
import 'package:flutter_assignment/services/apiService/app_enums.dart';
import 'package:flutter_assignment/ui/dialogs/app_snackbar.dart';
import 'package:flutter_assignment/utils/app_preferences.dart';

import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:internet_connection_checker/internet_connection_checker.dart';

class AuthService {
  static final AuthService _instance = AuthService._init();
  AuthService._init();
  factory AuthService() => _instance;

  final _googleSignIn = GoogleSignIn();
  final _facebookLogin = FacebookLogin();
  final _firebaseAuth = firebase_auth.FirebaseAuth.instance;

  Future<ApiResult<UserModel?>> loginGoogle() async {
    String? message;
    if (!await hasConnected()) {
      AppSnackbar().rawSnackbar(S.current.noInternetMessage);
      return ApiResult(
        apiState: ApiState.noInternet,
        message: S.current.noInternetMessage,
      );
    }
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        final googleAuth = await googleUser.authentication;
        final credential = firebase_auth.GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        firebase_auth.User? user =
            (await _firebaseAuth.signInWithCredential(credential)).user;
        if (user != null) {
          UserModel userModel = UserModel(
            id: user.uid,
            profileImage: user.photoURL,
            firstName: user.displayName,
            emailAddress: user.email,
            contactNumber: user.phoneNumber,
            type: LoginType.google,
          );
          log('UID ::::: ${user.uid}');

          return ApiResult(
            apiState: ApiState.success,
            data: userModel,
          );
        }
        log('${googleUser.displayName} Signed in successfully.');
      } else {
        log('Error in Signin!!!');
      }
    } catch (error) {
      message = "$error";
      log('$error');
    }
    return ApiResult(
      apiState: ApiState.failed,
      message: message ?? S.current.noInternetMessage,
    );
  }

  Future<ApiResult<UserModel?>> loginFacebook() async {
    String? message;
    if (!await hasConnected()) {
      AppSnackbar().rawSnackbar(S.current.noInternetMessage);
      return ApiResult(
        apiState: ApiState.noInternet,
        message: S.current.noInternetMessage,
      );
    }
    final facebookLoginResult = await _facebookLogin.logIn(permissions: [
      FacebookPermission.email,
      FacebookPermission.publicProfile,
    ]);
    // Check result status
    switch (facebookLoginResult.status) {
      case FacebookLoginStatus.success:
        final FacebookAccessToken? accessToken =
            facebookLoginResult.accessToken;
        log('Access token: ${accessToken!.token}');
        final credential =
            firebase_auth.FacebookAuthProvider.credential(accessToken.token);
        firebase_auth.User? user = (await firebase_auth.FirebaseAuth.instance
                .signInWithCredential(credential))
            .user;
        log('Access token: ${accessToken.token}');

        if (user != null) {
          log('User ID :${user.uid}');
          log('User Name :${user.displayName}');
          UserModel userModel = UserModel(
            id: user.uid,
            profileImage: user.photoURL,
            firstName: user.displayName,
            emailAddress: user.email,
            contactNumber: user.phoneNumber,
            type: LoginType.facebook,
          );
          log('UID ::::: ${user.uid}');

          return ApiResult(
            apiState: ApiState.success,
            data: userModel,
          );
        }
        break;
      case FacebookLoginStatus.cancel:
        message = "Process canceled!!!";
        log('User cancelled log in');
        break;
      case FacebookLoginStatus.error:
        // Log in failed
        log('Custom Error while log in: ${facebookLoginResult.error}');
        break;
    }
    return ApiResult(
      apiState: ApiState.failed,
      message: message ?? S.current.noInternetMessage,
    );
  }

  Future<ApiResult<UserModel?>> getCurrentUser() async {
    firebase_auth.User? user = firebase_auth.FirebaseAuth.instance.currentUser;
    if (user != null) {
      UserModel userModel = UserModel(
        id: user.uid,
        profileImage: user.photoURL,
        firstName: user.displayName,
        emailAddress: user.email,
        contactNumber: user.phoneNumber,
      );
      log('UID ::::: ${user.uid}');
      return ApiResult(
        apiState: ApiState.success,
        data: userModel,
      );
    }
    return ApiResult(
      apiState: ApiState.failed,
      message: S.current.noInternetMessage,
    );
  }

  Future<bool> logout(LoginType? type) async {
    if (type == null) {
      return false;
    }
    try {
      switch (type) {
        case LoginType.facebook:
          await _facebookLogin.logOut();
          break;
        case LoginType.google:
          await _googleSignIn.signOut();
          break;
        case LoginType.linkedin:
          break;
        default:
      }
      await _firebaseAuth.signOut();
      await AppPreferences().clearData();
      log('Logged out');
      return true;
    } catch (error) {
      log('Logged out Error ::: $error');
    }
    return false;
  }

  Future<bool> hasConnected() async {
    try {
      if (kIsWeb) return true;
      bool result = await InternetConnectionChecker().hasConnection;
      if (result == true) {
        return true;
      } else {
        return false;
      }
    } on SocketException catch (_) {
      return false;
    }
  }
}
