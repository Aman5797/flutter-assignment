# Flutter Assignment

- To demonstrate google/facebook login.
- GoRouter is used for navigation.
- Pixel Perfect UI with flutter_screen_util
- API calling with dio.
- MVVM Architecture is used with Bloc

# Assumptions

- Orientation is fixed to Portrait
- Linedin auth is incomplete due to issues in redirection
- Test cases only written for API repository.

## Tech Stack

**SDK:** Flutter 3.13

## Dependencies

Additional packages-

#### cupertino_icons: ^1.0.2 :

This is an asset repo containing the default set of icon assets used by Flutter's Cupertino widgets.

#### go_router: ^11.0.0

A declarative routing package for Flutter that uses the Router API to provide a convenient, url-based API for navigating between different screens. You can define URL patterns, navigate using a URL, handle deep links, and a number of other navigation-related scenarios.

#### flutter_bloc: ^8.1.3

Flutter State Management Tool

#### flutter_screenutil: ^5.9.0

A flutter plugin for adapting screen and font size.Let your UI display a reasonable layout on different screen sizes.

#### build_runner: ^2.4.6

The build_runner package provides a concrete way of generating files using Dart code.

#### freezed:

Code generator for data-classes/unions/pattern-matching/cloning

#### freezed_annotation: ^2.4.1

Annotations for freezed.

#### intl: ^0.18.1

Provides internationalization and localization facilities, including message translation, plurals and genders, date/number formatting and parsing, and bidirectional text.

#### intl_utils: ^2.8.4

Dart package that creates a binding between your translations from .arb files and your Flutter app. It generates boilerplate code for official Dart Intl library and adds auto-complete for keys in Dart code.

#### cached_network_image: ^3.2.3

A flutter library to show images from the internet and keep them in the cache directory.

#### equatable: ^2.0.5

Being able to compare objects in Dart often involves having to override the == operator as well as hashCode.

#### shared_preferences: ^2.2.1

Wraps platform-specific persistent storage for simple data (NSUserDefaults on iOS and macOS, SharedPreferences on Android, etc.). Data may be persisted to disk asynchronously, and there is no guarantee that writes will be persisted to disk after returning, so this plugin must not be used for storing critical data.

#### flutter_svg: ^2.0.7

To render SVG assets on flutter.

#### firebase_core: ^2.15.1

A Flutter plugin to use the Firebase Core API, which enables connecting to multiple Firebase apps.

#### firebase_auth: ^4.10.0

A Flutter plugin to use the Firebase Authentication API.

#### google_sign_in: ^6.1.5

To implement google login feature.

#### flutter_login_facebook: ^1.8.0

Flutter Plugin to login via Facebook.

#### linkedin_login: ^2.3.1

Flutter Plugin to login via LinkedIn.

#### dio: ^5.3.2

A powerful HTTP networking package for Dart/Flutter, supports Global configuration, Interceptors, FormData, Request cancellation, File uploading/downloading, Timeout, Custom adapters, Transformers, etc.

#### internet_connection_checker: ^1.0.0+1

A Pure Dart Utility library that checks for an Active Internet connection by opening a socket to a list of specified addresses, each with individual port and timeout. Defaults are provided for convenience.
