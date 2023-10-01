// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
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
  String get localeName => 'ko';

  static String m0(d) => "${d}일";

  static String m1(h) => "${h}시간";

  static String m2(min) => "${min}분";

  static String m3(m) => "${m}달";

  static String m4(y) => "${y}년";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aDay": MessageLookupByLibrary.simpleMessage("약 1일"),
        "aboutAMinute": MessageLookupByLibrary.simpleMessage("약 1분"),
        "aboutAMonth": MessageLookupByLibrary.simpleMessage("약 1달"),
        "aboutAYear": MessageLookupByLibrary.simpleMessage("약 1년"),
        "aboutAnHour": MessageLookupByLibrary.simpleMessage("약 1시간"),
        "app_name": MessageLookupByLibrary.simpleMessage("당신의 기분은?"),
        "bootom_nav_lable_post": MessageLookupByLibrary.simpleMessage("Post"),
        "bottom_nav_lable_home": MessageLookupByLibrary.simpleMessage("Home"),
        "days": m0,
        "hours": m1,
        "language": MessageLookupByLibrary.simpleMessage("한글"),
        "lessThanOneMinute": MessageLookupByLibrary.simpleMessage("방금"),
        "login_screen_CreateAccountButton":
            MessageLookupByLibrary.simpleMessage("계정 생성하기 →"),
        "login_screen_EmailHint": MessageLookupByLibrary.simpleMessage("이메일"),
        "login_screen_ForgotPasswordButton":
            MessageLookupByLibrary.simpleMessage("비밀번호를 잊으셨나요?"),
        "login_screen_LoginButton": MessageLookupByLibrary.simpleMessage("로그인"),
        "login_screen_PasswordHint":
            MessageLookupByLibrary.simpleMessage("패스워드"),
        "login_screen_Title":
            MessageLookupByLibrary.simpleMessage("무드 트래커에 오신 것을 환영합니다"),
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
        "moods_no_moods": MessageLookupByLibrary.simpleMessage("No moods yet"),
        "moods_screen_Title": MessageLookupByLibrary.simpleMessage("Moods"),
        "prefixAgo": MessageLookupByLibrary.simpleMessage(""),
        "prefixFromNow": MessageLookupByLibrary.simpleMessage("지금부터"),
        "signup_screen_AlreadyHaveAccountButton":
            MessageLookupByLibrary.simpleMessage("이미 계정이 있으신가요?"),
        "signup_screen_CreateNewAccountButton":
            MessageLookupByLibrary.simpleMessage("계정을 만드세요"),
        "signup_screen_Title":
            MessageLookupByLibrary.simpleMessage("무드 트래커에 가입하세요~"),
        "suffixAgo": MessageLookupByLibrary.simpleMessage("전"),
        "suffixFromNow": MessageLookupByLibrary.simpleMessage("후"),
        "wordSeparator": MessageLookupByLibrary.simpleMessage(" "),
        "years": m4
      };
}
