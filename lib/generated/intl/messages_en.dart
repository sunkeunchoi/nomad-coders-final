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

  static String m0(d) => "${d} days";

  static String m1(h) => "${h} hours";

  static String m2(min) => "${min} minutes";

  static String m3(m) => "${m} months";

  static String m4(y) => "${y} years";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aDay": MessageLookupByLibrary.simpleMessage("a day"),
        "aboutAMinute": MessageLookupByLibrary.simpleMessage("a minute"),
        "aboutAMonth": MessageLookupByLibrary.simpleMessage("about a month"),
        "aboutAYear": MessageLookupByLibrary.simpleMessage("about a year"),
        "aboutAnHour": MessageLookupByLibrary.simpleMessage("about an hour"),
        "app_name": MessageLookupByLibrary.simpleMessage("How is your moods?"),
        "bootom_nav_lable_post": MessageLookupByLibrary.simpleMessage("Post"),
        "bottom_nav_lable_home": MessageLookupByLibrary.simpleMessage("Home"),
        "days": m0,
        "hours": m1,
        "language": MessageLookupByLibrary.simpleMessage("English (US)"),
        "lessThanOneMinute": MessageLookupByLibrary.simpleMessage("a moment"),
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
        "minutes": m2,
        "months": m3,
        "mood_edit_content":
            MessageLookupByLibrary.simpleMessage("How do you feel?"),
        "mood_edit_content_hint":
            MessageLookupByLibrary.simpleMessage("Write it down here!"),
        "mood_edit_edit_mood":
            MessageLookupByLibrary.simpleMessage("Edit Mood"),
        "mood_edit_name":
            MessageLookupByLibrary.simpleMessage("What\'s your mood?"),
        "mood_edit_new_mood": MessageLookupByLibrary.simpleMessage("New Mood"),
        "mood_edit_save": MessageLookupByLibrary.simpleMessage("Post"),
        "mood_edit_saved_failed":
            MessageLookupByLibrary.simpleMessage("Mood save failed"),
        "mood_edit_saved_success":
            MessageLookupByLibrary.simpleMessage("Mood saved successfully"),
        "moods_add_mood":
            MessageLookupByLibrary.simpleMessage("Add your first mood"),
        "moods_delete_failed":
            MessageLookupByLibrary.simpleMessage("Mood delete failed"),
        "moods_delete_mood":
            MessageLookupByLibrary.simpleMessage("Delete Mood?"),
        "moods_delete_mood_cancel":
            MessageLookupByLibrary.simpleMessage("Cancel"),
        "moods_delete_mood_confirm": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to do this?"),
        "moods_delete_mood_delete":
            MessageLookupByLibrary.simpleMessage("Delete"),
        "moods_delete_success":
            MessageLookupByLibrary.simpleMessage("Mood deleted successfully"),
        "moods_no_moods": MessageLookupByLibrary.simpleMessage("No moods yet"),
        "moods_screen_Title": MessageLookupByLibrary.simpleMessage("Moods"),
        "prefixAgo": MessageLookupByLibrary.simpleMessage(""),
        "prefixFromNow": MessageLookupByLibrary.simpleMessage(""),
        "signup_screen_AlreadyHaveAccountButton":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "signup_screen_CreateNewAccountButton":
            MessageLookupByLibrary.simpleMessage("Create account"),
        "signup_screen_Title": MessageLookupByLibrary.simpleMessage("Join!"),
        "suffixAgo": MessageLookupByLibrary.simpleMessage("ago"),
        "suffixFromNow": MessageLookupByLibrary.simpleMessage("from now"),
        "wordSeparator": MessageLookupByLibrary.simpleMessage(" "),
        "years": m4
      };
}
