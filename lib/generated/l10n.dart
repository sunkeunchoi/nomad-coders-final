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

  /// `How is your moods?`
  String get app_name {
    return Intl.message(
      'How is your moods?',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to the Mood Diaray App`
  String get login_screen_Title {
    return Intl.message(
      'Welcome to the Mood Diaray App',
      name: 'login_screen_Title',
      desc: '',
      args: [],
    );
  }

  /// `Join!`
  String get signup_screen_Title {
    return Intl.message(
      'Join!',
      name: 'signup_screen_Title',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get login_screen_EmailHint {
    return Intl.message(
      'Email',
      name: 'login_screen_EmailHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get login_screen_PasswordHint {
    return Intl.message(
      'Password',
      name: 'login_screen_PasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `Enter`
  String get login_screen_LoginButton {
    return Intl.message(
      'Enter',
      name: 'login_screen_LoginButton',
      desc: '',
      args: [],
    );
  }

  /// `Create an account →`
  String get login_screen_CreateAccountButton {
    return Intl.message(
      'Create an account →',
      name: 'login_screen_CreateAccountButton',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get login_screen_ForgotPasswordButton {
    return Intl.message(
      'Forgot password?',
      name: 'login_screen_ForgotPasswordButton',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get signup_screen_CreateNewAccountButton {
    return Intl.message(
      'Create account',
      name: 'signup_screen_CreateNewAccountButton',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get signup_screen_AlreadyHaveAccountButton {
    return Intl.message(
      'Already have an account?',
      name: 'signup_screen_AlreadyHaveAccountButton',
      desc: '',
      args: [],
    );
  }

  /// `Moods`
  String get moods_screen_Title {
    return Intl.message(
      'Moods',
      name: 'moods_screen_Title',
      desc: '',
      args: [],
    );
  }

  /// `No moods yet`
  String get moods_no_moods {
    return Intl.message(
      'No moods yet',
      name: 'moods_no_moods',
      desc: '',
      args: [],
    );
  }

  /// `Add your first mood`
  String get moods_add_mood {
    return Intl.message(
      'Add your first mood',
      name: 'moods_add_mood',
      desc: '',
      args: [],
    );
  }

  /// `English (US)`
  String get language {
    return Intl.message(
      'English (US)',
      name: 'language',
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
      Locale.fromSubtags(languageCode: 'ko'),
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
