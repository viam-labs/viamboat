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

  static String m0(cameraName) => "${cameraName} Feed";

  static String m1(depth) => "${depth}m";

  static String m2(value) => "${value} gal/kn";

  static String m3(name) => "Fuel consumption over time | ${name}";

  static String m4(value) => "${value} g/m";

  static String m5(name) => "${name}  (gal) ";

  static String m6(lat, lon) => "${lat}, ${lon}";

  static String m7(organizationName) => "Boats  |  ${organizationName}";

  static String m8(name) => "${name}  (m) ";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_boat": MessageLookupByLibrary.simpleMessage("Add boat"),
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
        "analytics_empty_state_subtitle": MessageLookupByLibrary.simpleMessage(
            "Add sensors to your boat to see analytics"),
        "analytics_page_title":
            MessageLookupByLibrary.simpleMessage("Analytics"),
        "analytics_tile_empty_state": MessageLookupByLibrary.simpleMessage(
            "No data found. Make sure to capture the data on your boat and try again."),
        "analytics_tile_error_body_refresh":
            MessageLookupByLibrary.simpleMessage("Refresh"),
        "analytics_tile_error_body_title":
            MessageLookupByLibrary.simpleMessage("Oops… something went wrong"),
        "boat_name_taken_error_message": MessageLookupByLibrary.simpleMessage(
            "The boat name is already taken. Choose a different name."),
        "boats": MessageLookupByLibrary.simpleMessage("Boats"),
        "camera_empty_state_subtitle": MessageLookupByLibrary.simpleMessage(
            "Connect camera on your boat to display the screen"),
        "camera_empty_state_title":
            MessageLookupByLibrary.simpleMessage("No camera found"),
        "camera_page_camera_feed":
            MessageLookupByLibrary.simpleMessage("Camera Feed"),
        "camera_tile_camera_name": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "dashboard_sensors_empty_state_subtitle":
            MessageLookupByLibrary.simpleMessage(
                "Connect sensors on your boat to display the screen"),
        "dashboard_sensors_empty_state_title":
            MessageLookupByLibrary.simpleMessage("No sensors found"),
        "delete_boat_confirmation_popup_content":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to delete this boat?"),
        "delete_boat_confirmation_popup_title":
            MessageLookupByLibrary.simpleMessage("Remove boat"),
        "depth_over_time_chart_tile_current":
            MessageLookupByLibrary.simpleMessage("Current:"),
        "depth_over_time_chart_tile_current_depth": m1,
        "depth_over_time_chart_tile_title":
            MessageLookupByLibrary.simpleMessage("Depth over time"),
        "error_can_not_connect_to_the_boat":
            MessageLookupByLibrary.simpleMessage("Can\'t connect to the boat"),
        "error_logout_message": MessageLookupByLibrary.simpleMessage(
            "Something went wrong. Please try again."),
        "error_occured":
            MessageLookupByLibrary.simpleMessage("An error occurred"),
        "error_something_went_wrong":
            MessageLookupByLibrary.simpleMessage("Something went wrong."),
        "error_while_connecting_msg": MessageLookupByLibrary.simpleMessage(
            "An error occurred while connecting to the boat."),
        "filters_screen_apply": MessageLookupByLibrary.simpleMessage("Apply"),
        "filters_screen_date_from":
            MessageLookupByLibrary.simpleMessage("Date from"),
        "filters_screen_date_to":
            MessageLookupByLibrary.simpleMessage("Date to"),
        "filters_screen_depth_range":
            MessageLookupByLibrary.simpleMessage("Depth range"),
        "filters_screen_temperature_range":
            MessageLookupByLibrary.simpleMessage("Temperature range"),
        "filters_screen_title": MessageLookupByLibrary.simpleMessage("Filters"),
        "fuel_consumption_over_time_chart_tile_current_value": m2,
        "fuel_consumption_over_time_chart_tile_title": m3,
        "fuel_consumption_per_mile_chart_tile_current_value": m4,
        "fuel_consumption_per_mile_chart_tile_title":
            MessageLookupByLibrary.simpleMessage("Fuel consumption per mile"),
        "graphical_sensor_name": m5,
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "map_inital_error": MessageLookupByLibrary.simpleMessage(
            "An error occurred while trying to find your boat"),
        "map_page_empty_state_subtitle": MessageLookupByLibrary.simpleMessage(
            "Connect GPS sensor on your boat to display the screen"),
        "map_page_empty_state_title":
            MessageLookupByLibrary.simpleMessage("No GPS found"),
        "map_page_gps_title": MessageLookupByLibrary.simpleMessage("GPS Feed"),
        "map_tile_boat_coordinates": m6,
        "max": MessageLookupByLibrary.simpleMessage("Max"),
        "min": MessageLookupByLibrary.simpleMessage("Min"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "popup_coords": MessageLookupByLibrary.simpleMessage("Coords:"),
        "popup_date": MessageLookupByLibrary.simpleMessage("Date:"),
        "remove": MessageLookupByLibrary.simpleMessage("Remove"),
        "remove_filters":
            MessageLookupByLibrary.simpleMessage("Remove filters"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "save_changes": MessageLookupByLibrary.simpleMessage("Save changes"),
        "scan_qr": MessageLookupByLibrary.simpleMessage("Scan QR"),
        "scan_qr_camera_permissions_denied_msg":
            MessageLookupByLibrary.simpleMessage(
                "This app needs camera permissions to allow you to scan the QR code."),
        "scan_qr_page_error_msg":
            MessageLookupByLibrary.simpleMessage("Failed to scan QR code."),
        "select_robot_page_connecting_to_robot_title":
            MessageLookupByLibrary.simpleMessage("Connecting to robot..."),
        "select_robot_page_loaded_loc_and_robots_empty_loc_subtitle":
            MessageLookupByLibrary.simpleMessage(
                "Please add location and try again"),
        "select_robot_page_loaded_loc_and_robots_empty_loc_title":
            MessageLookupByLibrary.simpleMessage("No location found"),
        "select_robot_page_loaded_loc_and_robots_empty_robots":
            MessageLookupByLibrary.simpleMessage(
                "No robots found in this location"),
        "select_robot_page_loaded_loc_and_robots_error":
            MessageLookupByLibrary.simpleMessage(
                "Failed to load locations and robots"),
        "select_robot_page_loaded_loc_and_robots_title": m7,
        "select_robot_page_locations_and_robots_loading_title":
            MessageLookupByLibrary.simpleMessage(
                "Loading locations and robots..."),
        "select_robot_page_org_loading_title":
            MessageLookupByLibrary.simpleMessage("Loading organizations..."),
        "select_robot_page_organizations":
            MessageLookupByLibrary.simpleMessage("Organizations"),
        "select_robot_page_organizations_empty_state_subtitle":
            MessageLookupByLibrary.simpleMessage(
                "Please add an organization and try again"),
        "select_robot_page_organizations_empty_state_title":
            MessageLookupByLibrary.simpleMessage("No organization found"),
        "select_robot_page_organizations_error":
            MessageLookupByLibrary.simpleMessage("Faild to load organizations"),
        "sensor_error": MessageLookupByLibrary.simpleMessage(
            "Oops, we lost connection. Please check your internet or your boat’s connection."),
        "sensor_name_depth": m8,
        "sensor_name_heading":
            MessageLookupByLibrary.simpleMessage("Heading  (°) "),
        "sensor_name_speed":
            MessageLookupByLibrary.simpleMessage("Speed  (kn) "),
        "sensor_warning":
            MessageLookupByLibrary.simpleMessage("Oops, we lost connection."),
        "settings_page_capture_photo_dialog_button":
            MessageLookupByLibrary.simpleMessage("Capture photo"),
        "settings_page_change_name_button":
            MessageLookupByLibrary.simpleMessage("Change boat name"),
        "settings_page_choose_photo_dialog_button":
            MessageLookupByLibrary.simpleMessage("Choose photo"),
        "settings_page_photo_dialog_description":
            MessageLookupByLibrary.simpleMessage(
                "Capture or choose photo of your boat"),
        "settings_page_photo_dialog_title":
            MessageLookupByLibrary.simpleMessage("Boat Photo"),
        "settings_page_remove_boat_button":
            MessageLookupByLibrary.simpleMessage("Remove boat"),
        "settings_page_title": MessageLookupByLibrary.simpleMessage("Settings"),
        "settings_page_upload_image_button":
            MessageLookupByLibrary.simpleMessage("Upload image"),
        "text_field_label_address":
            MessageLookupByLibrary.simpleMessage("Address"),
        "text_field_label_name":
            MessageLookupByLibrary.simpleMessage("Boat Name"),
        "text_field_label_secret":
            MessageLookupByLibrary.simpleMessage("Secret"),
        "text_field_max_characters":
            MessageLookupByLibrary.simpleMessage("• Maximum 20 characters"),
        "try_again": MessageLookupByLibrary.simpleMessage("Try Again"),
        "viam_marine": MessageLookupByLibrary.simpleMessage("Viam Marine"),
        "water_depth_chart_title":
            MessageLookupByLibrary.simpleMessage("Depth"),
        "water_depth_popup_depth":
            MessageLookupByLibrary.simpleMessage("Depth:"),
        "water_depth_screen_filters":
            MessageLookupByLibrary.simpleMessage("Filters"),
        "water_depth_screen_title":
            MessageLookupByLibrary.simpleMessage("Water Depth"),
        "water_temp_chart_title":
            MessageLookupByLibrary.simpleMessage("Temperature"),
        "water_temp_popup_temp":
            MessageLookupByLibrary.simpleMessage("Temperature:"),
        "water_temp_screen_filters":
            MessageLookupByLibrary.simpleMessage("Filters"),
        "water_temp_screen_title":
            MessageLookupByLibrary.simpleMessage("Water Temperature"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
