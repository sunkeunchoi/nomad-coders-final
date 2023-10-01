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

  /// `New Mood`
  String get mood_edit_new_mood {
    return Intl.message(
      'New Mood',
      name: 'mood_edit_new_mood',
      desc: '',
      args: [],
    );
  }

  /// `Edit Mood`
  String get mood_edit_edit_mood {
    return Intl.message(
      'Edit Mood',
      name: 'mood_edit_edit_mood',
      desc: '',
      args: [],
    );
  }

  /// `How do you feel?`
  String get mood_edit_content {
    return Intl.message(
      'How do you feel?',
      name: 'mood_edit_content',
      desc: '',
      args: [],
    );
  }

  /// `Write it down here!`
  String get mood_edit_content_hint {
    return Intl.message(
      'Write it down here!',
      name: 'mood_edit_content_hint',
      desc: '',
      args: [],
    );
  }

  /// `What's your mood?`
  String get mood_edit_name {
    return Intl.message(
      'What\'s your mood?',
      name: 'mood_edit_name',
      desc: '',
      args: [],
    );
  }

  /// `Post`
  String get mood_edit_save {
    return Intl.message(
      'Post',
      name: 'mood_edit_save',
      desc: '',
      args: [],
    );
  }

  /// `Mood saved successfully`
  String get mood_edit_saved_success {
    return Intl.message(
      'Mood saved successfully',
      name: 'mood_edit_saved_success',
      desc: '',
      args: [],
    );
  }

  /// `Mood save failed`
  String get mood_edit_saved_failed {
    return Intl.message(
      'Mood save failed',
      name: 'mood_edit_saved_failed',
      desc: '',
      args: [],
    );
  }

  /// `Mood deleted successfully`
  String get moods_delete_success {
    return Intl.message(
      'Mood deleted successfully',
      name: 'moods_delete_success',
      desc: '',
      args: [],
    );
  }

  /// `Mood delete failed`
  String get moods_delete_failed {
    return Intl.message(
      'Mood delete failed',
      name: 'moods_delete_failed',
      desc: '',
      args: [],
    );
  }

  /// `Delete Mood?`
  String get moods_delete_mood {
    return Intl.message(
      'Delete Mood?',
      name: 'moods_delete_mood',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to do this?`
  String get moods_delete_mood_confirm {
    return Intl.message(
      'Are you sure you want to do this?',
      name: 'moods_delete_mood_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get moods_delete_mood_cancel {
    return Intl.message(
      'Cancel',
      name: 'moods_delete_mood_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get moods_delete_mood_delete {
    return Intl.message(
      'Delete',
      name: 'moods_delete_mood_delete',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get bottom_nav_label_home {
    return Intl.message(
      'Home',
      name: 'bottom_nav_label_home',
      desc: '',
      args: [],
    );
  }

  /// `Post`
  String get bootom_nav_label_post {
    return Intl.message(
      'Post',
      name: 'bootom_nav_label_post',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get bootom_nav_label_profile {
    return Intl.message(
      'Profile',
      name: 'bootom_nav_label_profile',
      desc: '',
      args: [],
    );
  }

  /// `Profiles`
  String get settings_screen_Title {
    return Intl.message(
      'Profiles',
      name: 'settings_screen_Title',
      desc: '',
      args: [],
    );
  }

  /// `Theme(Dark)`
  String get settings_theme {
    return Intl.message(
      'Theme(Dark)',
      name: 'settings_theme',
      desc: '',
      args: [],
    );
  }

  /// `Choose your theme (Dark, Light)`
  String get settings_theme_subtitle {
    return Intl.message(
      'Choose your theme (Dark, Light)',
      name: 'settings_theme_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Language(English)`
  String get settings_locale {
    return Intl.message(
      'Language(English)',
      name: 'settings_locale',
      desc: '',
      args: [],
    );
  }

  /// `Choose your language (English, Korean)`
  String get settings_locale_subtitle {
    return Intl.message(
      'Choose your language (English, Korean)',
      name: 'settings_locale_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get settings_logout {
    return Intl.message(
      'Logout',
      name: 'settings_logout',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get prefixAgo {
    return Intl.message(
      '',
      name: 'prefixAgo',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get prefixFromNow {
    return Intl.message(
      '',
      name: 'prefixFromNow',
      desc: '',
      args: [],
    );
  }

  /// `ago`
  String get suffixAgo {
    return Intl.message(
      'ago',
      name: 'suffixAgo',
      desc: '',
      args: [],
    );
  }

  /// `from now`
  String get suffixFromNow {
    return Intl.message(
      'from now',
      name: 'suffixFromNow',
      desc: '',
      args: [],
    );
  }

  /// `a moment`
  String get lessThanOneMinute {
    return Intl.message(
      'a moment',
      name: 'lessThanOneMinute',
      desc: '',
      args: [],
    );
  }

  /// `a minute`
  String get aboutAMinute {
    return Intl.message(
      'a minute',
      name: 'aboutAMinute',
      desc: '',
      args: [],
    );
  }

  /// `{min} minutes`
  String minutes(int min) {
    return Intl.message(
      '$min minutes',
      name: 'minutes',
      desc: '',
      args: [min],
    );
  }

  /// `about an hour`
  String get aboutAnHour {
    return Intl.message(
      'about an hour',
      name: 'aboutAnHour',
      desc: '',
      args: [],
    );
  }

  /// `{h} hours`
  String hours(int h) {
    return Intl.message(
      '$h hours',
      name: 'hours',
      desc: '',
      args: [h],
    );
  }

  /// `a day`
  String get aDay {
    return Intl.message(
      'a day',
      name: 'aDay',
      desc: '',
      args: [],
    );
  }

  /// `{d} days`
  String days(int d) {
    return Intl.message(
      '$d days',
      name: 'days',
      desc: '',
      args: [d],
    );
  }

  /// `about a month`
  String get aboutAMonth {
    return Intl.message(
      'about a month',
      name: 'aboutAMonth',
      desc: '',
      args: [],
    );
  }

  /// `{m} months`
  String months(int m) {
    return Intl.message(
      '$m months',
      name: 'months',
      desc: '',
      args: [m],
    );
  }

  /// `about a year`
  String get aboutAYear {
    return Intl.message(
      'about a year',
      name: 'aboutAYear',
      desc: '',
      args: [],
    );
  }

  /// `{y} years`
  String years(int y) {
    return Intl.message(
      '$y years',
      name: 'years',
      desc: '',
      args: [y],
    );
  }

  /// ` `
  String get wordSeparator {
    return Intl.message(
      ' ',
      name: 'wordSeparator',
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
