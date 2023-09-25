// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ABV`
  String get abv {
    return Intl.message(
      'ABV',
      name: 'abv',
      desc: '',
      args: [],
    );
  }

  /// `ATTENTION LEVEL`
  String get attentionLevel {
    return Intl.message(
      'ATTENTION LEVEL',
      name: 'attentionLevel',
      desc: '',
      args: [],
    );
  }

  /// `back`
  String get back {
    return Intl.message(
      'back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message(
      'Facebook',
      name: 'facebook',
      desc: '',
      args: [],
    );
  }

  /// `First Brewed`
  String get firstBrewed {
    return Intl.message(
      'First Brewed',
      name: 'firstBrewed',
      desc: '',
      args: [],
    );
  }

  /// `EBC`
  String get ebc {
    return Intl.message(
      'EBC',
      name: 'ebc',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get google {
    return Intl.message(
      'Google',
      name: 'google',
      desc: '',
      args: [],
    );
  }

  /// `IBU`
  String get ibu {
    return Intl.message(
      'IBU',
      name: 'ibu',
      desc: '',
      args: [],
    );
  }

  /// `LinkedIn`
  String get linkedIn {
    return Intl.message(
      'LinkedIn',
      name: 'linkedIn',
      desc: '',
      args: [],
    );
  }

  /// `PH`
  String get ph {
    return Intl.message(
      'PH',
      name: 'ph',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with`
  String get signInWith {
    return Intl.message(
      'Sign in with',
      name: 'signInWith',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong!!!`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong!!!',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `SRM`
  String get srm {
    return Intl.message(
      'SRM',
      name: 'srm',
      desc: '',
      args: [],
    );
  }

  /// `TARGET FG`
  String get targetFg {
    return Intl.message(
      'TARGET FG',
      name: 'targetFg',
      desc: '',
      args: [],
    );
  }

  /// `TARGET OG`
  String get targetOg {
    return Intl.message(
      'TARGET OG',
      name: 'targetOg',
      desc: '',
      args: [],
    );
  }

  /// `Time to Cheers! Choose your beer...`
  String get timeToCheers {
    return Intl.message(
      'Time to Cheers! Choose your beer...',
      name: 'timeToCheers',
      desc: '',
      args: [],
    );
  }

  /// `Please connect to internet!!!`
  String get noInternetMessage {
    return Intl.message(
      'Please connect to internet!!!',
      name: 'noInternetMessage',
      desc: '',
      args: [],
    );
  }

  /// `Try again...`
  String get tryAgain {
    return Intl.message(
      'Try again...',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
