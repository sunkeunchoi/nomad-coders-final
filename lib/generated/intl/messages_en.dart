// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "app_name": MessageLookupByLibrary.simpleMessage("How is your moods?"),
        "bootom_nav_lable_post": MessageLookupByLibrary.simpleMessage("Post"),
        "bottom_nav_lable_home": MessageLookupByLibrary.simpleMessage("Home"),
        "language": MessageLookupByLibrary.simpleMessage("English (US)"),
        "login_screen_CreateAccountButton":
            MessageLookupByLibrary.simpleMessage("Create an account →"),
        "login_screen_EmailHint": MessageLookupByLibrary.simpleMessage("Email"),
        "login_screen_ForgotPasswordButton":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "login_screen_LoginButton":
            MessageLookupByLibrary.simpleMessage("Enter"),
        "login_screen_PasswordHint":
            MessageLookupByLibrary.simpleMessage("Password"),
        "login_screen_Title": MessageLookupByLibrary.simpleMessage(
            "Welcome to the Mood Diaray App"),
        "moods_add_mood":
            MessageLookupByLibrary.simpleMessage("Add your first mood"),
        "moods_no_moods": MessageLookupByLibrary.simpleMessage("No moods yet"),
        "moods_screen_Title": MessageLookupByLibrary.simpleMessage("Moods"),
        "signup_screen_AlreadyHaveAccountButton":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "signup_screen_CreateNewAccountButton":
            MessageLookupByLibrary.simpleMessage("Create account"),
        "signup_screen_Title": MessageLookupByLibrary.simpleMessage("Join!")
      };
}
