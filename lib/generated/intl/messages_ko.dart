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
        "bootom_nav_label_post": MessageLookupByLibrary.simpleMessage("새무드"),
        "bootom_nav_label_profile": MessageLookupByLibrary.simpleMessage("설정"),
        "bottom_nav_label_home": MessageLookupByLibrary.simpleMessage("홈"),
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
            MessageLookupByLibrary.simpleMessage("오늘의 기분은 어떠신가요?"),
        "mood_edit_content_hint":
            MessageLookupByLibrary.simpleMessage("기분을 적어주세요"),
        "mood_edit_edit_mood": MessageLookupByLibrary.simpleMessage("무드 수정"),
        "mood_edit_name":
            MessageLookupByLibrary.simpleMessage("오늘의 기분은 어떠신가요?"),
        "mood_edit_new_mood": MessageLookupByLibrary.simpleMessage("새 무드 추가"),
        "mood_edit_save": MessageLookupByLibrary.simpleMessage("등록"),
        "mood_edit_saved_failed":
            MessageLookupByLibrary.simpleMessage("저장에 실패하였습니다."),
        "mood_edit_saved_success":
            MessageLookupByLibrary.simpleMessage("저장 되었습니다."),
        "moods_add_mood": MessageLookupByLibrary.simpleMessage("첫 무드를 추가하세요!"),
        "moods_delete_failed":
            MessageLookupByLibrary.simpleMessage("삭제에 실패 하였습니다."),
        "moods_delete_mood": MessageLookupByLibrary.simpleMessage("삭제 하시겠습니까?"),
        "moods_delete_mood_cancel": MessageLookupByLibrary.simpleMessage("취소"),
        "moods_delete_mood_confirm":
            MessageLookupByLibrary.simpleMessage("정말로 삭제하시겠습니까?"),
        "moods_delete_mood_delete": MessageLookupByLibrary.simpleMessage("삭제"),
        "moods_delete_success":
            MessageLookupByLibrary.simpleMessage("삭제 되었습니다."),
        "moods_no_moods": MessageLookupByLibrary.simpleMessage("하나도 없네요~"),
        "moods_screen_Title": MessageLookupByLibrary.simpleMessage("오늘의 무드?"),
        "prefixAgo": MessageLookupByLibrary.simpleMessage(""),
        "prefixFromNow": MessageLookupByLibrary.simpleMessage("지금부터"),
        "settings_locale": MessageLookupByLibrary.simpleMessage("언어(영어)"),
        "settings_locale_subtitle":
            MessageLookupByLibrary.simpleMessage("영어 / 한글"),
        "settings_logout": MessageLookupByLibrary.simpleMessage("로그아웃"),
        "settings_screen_Title": MessageLookupByLibrary.simpleMessage("개인설정"),
        "settings_theme": MessageLookupByLibrary.simpleMessage("모드(다크모드)"),
        "settings_theme_subtitle":
            MessageLookupByLibrary.simpleMessage("다크모드 / 라이트모드"),
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
