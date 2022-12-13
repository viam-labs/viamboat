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

  static String m0(cameraName) => "[${cameraName}] Feed";

  static String m1(lat, lon) => "${lat}, ${lon}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_boat_page_header":
            MessageLookupByLibrary.simpleMessage("Welcome to\nViam Marine"),
        "app_name": MessageLookupByLibrary.simpleMessage("Viam Marine"),
        "boats": MessageLookupByLibrary.simpleMessage("Boats"),
        "camera_tile_camera_name": m0,
        "drawer_add_boat_button_text":
            MessageLookupByLibrary.simpleMessage("Add New Boat"),
        "error_something_went_wrong":
            MessageLookupByLibrary.simpleMessage("Something went wrong."),
        "error_while_connecting_msg": MessageLookupByLibrary.simpleMessage(
            "An error occurred while connecting to the boat."),
        "log_in": MessageLookupByLibrary.simpleMessage("Log In"),
        "map_tile_boat_coordinates": m1,
        "map_tile_boat_loaction":
            MessageLookupByLibrary.simpleMessage("Boat Location"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "text_field_label_address":
            MessageLookupByLibrary.simpleMessage("Address"),
        "text_field_label_name":
            MessageLookupByLibrary.simpleMessage("Boat Name"),
        "text_field_label_secret":
            MessageLookupByLibrary.simpleMessage("Secret")
      };
}
