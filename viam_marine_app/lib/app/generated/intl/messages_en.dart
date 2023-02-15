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

  static String m1(name) => "${name} (gal)";

  static String m2(lat, lon) => "${lat}, ${lon}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "add_boat_confirmation_popup_content":
            MessageLookupByLibrary.simpleMessage(
                "Changes you made may not be saved."),
        "add_boat_confirmation_popup_title":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to leave this page?"),
        "add_boat_connection_error_msg": MessageLookupByLibrary.simpleMessage(
            "Failed to connect to the boat. Please check your credentials and try again"),
        "add_boat_page_header_add_next_boat":
            MessageLookupByLibrary.simpleMessage("Add New Boat"),
        "add_boat_page_header_welcome_text":
            MessageLookupByLibrary.simpleMessage("Welcome to"),
        "app_name": MessageLookupByLibrary.simpleMessage("Viam Marine"),
        "boat_name_taken_error_message": MessageLookupByLibrary.simpleMessage(
            "The boat name is already taken. Choose a different name."),
        "boats": MessageLookupByLibrary.simpleMessage("Boats"),
        "camera_tile_camera_name": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "change_boat_name_dialog_accept_button_label":
            MessageLookupByLibrary.simpleMessage("Change"),
        "change_boat_name_dialog_title":
            MessageLookupByLibrary.simpleMessage("New boat name"),
        "dashboard_camera_title":
            MessageLookupByLibrary.simpleMessage("Camera Feed"),
        "dashboard_gps_title": MessageLookupByLibrary.simpleMessage("GPS Feed"),
        "dashboard_sensors_title":
            MessageLookupByLibrary.simpleMessage("Boat Sensors"),
        "delete_boat_confirmation_popup_content":
            MessageLookupByLibrary.simpleMessage(
                "You are about delete this boat."),
        "delete_boat_confirmation_popup_title":
            MessageLookupByLibrary.simpleMessage("Are you sure?"),
        "drawer_add_boat_button_text":
            MessageLookupByLibrary.simpleMessage("Add New Boat"),
        "east": MessageLookupByLibrary.simpleMessage("E"),
        "error_something_went_wrong":
            MessageLookupByLibrary.simpleMessage("Something went wrong."),
        "error_while_connecting_msg": MessageLookupByLibrary.simpleMessage(
            "An error occurred while connecting to the boat."),
        "graphical_sensor_name": m1,
        "log_in": MessageLookupByLibrary.simpleMessage("Log In"),
        "map_tile_boat_coordinates": m2,
        "map_tile_boat_loaction":
            MessageLookupByLibrary.simpleMessage("Boat Location"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "north": MessageLookupByLibrary.simpleMessage("N"),
        "north_east": MessageLookupByLibrary.simpleMessage("NE"),
        "north_west": MessageLookupByLibrary.simpleMessage("NW"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "scan_qr": MessageLookupByLibrary.simpleMessage("Scan QR"),
        "scan_qr_camera_permissions_denied_msg":
            MessageLookupByLibrary.simpleMessage(
                "This app needs camera permissions to allow you to scan the QR code."),
        "scan_qr_page_error_msg":
            MessageLookupByLibrary.simpleMessage("Failed to scan QR code."),
        "sensor_name_heading": MessageLookupByLibrary.simpleMessage("Heading"),
        "sensor_name_speed": MessageLookupByLibrary.simpleMessage("Speed"),
        "settings_page_change_name_button":
            MessageLookupByLibrary.simpleMessage("Change boat name"),
        "settings_page_remove_boat_button":
            MessageLookupByLibrary.simpleMessage("Remove boat"),
        "settings_page_title": MessageLookupByLibrary.simpleMessage("Settings"),
        "settings_page_upload_image_button":
            MessageLookupByLibrary.simpleMessage("Upload image"),
        "south": MessageLookupByLibrary.simpleMessage("S"),
        "south_east": MessageLookupByLibrary.simpleMessage("SE"),
        "south_west": MessageLookupByLibrary.simpleMessage("SW"),
        "text_field_label_address":
            MessageLookupByLibrary.simpleMessage("Address"),
        "text_field_label_name":
            MessageLookupByLibrary.simpleMessage("Boat Name"),
        "text_field_label_secret":
            MessageLookupByLibrary.simpleMessage("Secret"),
        "viking_yachts": MessageLookupByLibrary.simpleMessage("Viking Yachts"),
        "west": MessageLookupByLibrary.simpleMessage("W"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
