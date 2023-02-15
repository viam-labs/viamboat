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

class Strings {
  Strings();

  static Strings? _current;

  static Strings get current {
    assert(_current != null,
        'No instance of Strings was loaded. Try to initialize the Strings delegate before accessing Strings.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Strings> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Strings();
      Strings._current = instance;

      return instance;
    });
  }

  static Strings of(BuildContext context) {
    final instance = Strings.maybeOf(context);
    assert(instance != null,
        'No instance of Strings present in the widget tree. Did you add Strings.delegate in localizationsDelegates?');
    return instance!;
  }

  static Strings? maybeOf(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  /// `Viam Marine`
  String get app_name {
    return Intl.message(
      'Viam Marine',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Boat Location`
  String get map_tile_boat_loaction {
    return Intl.message(
      'Boat Location',
      name: 'map_tile_boat_loaction',
      desc: '',
      args: [],
    );
  }

  /// `{lat}, {lon}`
  String map_tile_boat_coordinates(Object lat, Object lon) {
    return Intl.message(
      '$lat, $lon',
      name: 'map_tile_boat_coordinates',
      desc: '',
      args: [lat, lon],
    );
  }

  /// `[{cameraName}] Feed`
  String camera_tile_camera_name(Object cameraName) {
    return Intl.message(
      '[$cameraName] Feed',
      name: 'camera_tile_camera_name',
      desc: '',
      args: [cameraName],
    );
  }

  /// `Something went wrong.`
  String get error_something_went_wrong {
    return Intl.message(
      'Something went wrong.',
      name: 'error_something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while connecting to the boat.`
  String get error_while_connecting_msg {
    return Intl.message(
      'An error occurred while connecting to the boat.',
      name: 'error_while_connecting_msg',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to`
  String get add_boat_page_header_welcome_text {
    return Intl.message(
      'Welcome to',
      name: 'add_boat_page_header_welcome_text',
      desc: '',
      args: [],
    );
  }

  /// `Add New Boat`
  String get add_boat_page_header_add_next_boat {
    return Intl.message(
      'Add New Boat',
      name: 'add_boat_page_header_add_next_boat',
      desc: '',
      args: [],
    );
  }

  /// `Boat Name`
  String get text_field_label_name {
    return Intl.message(
      'Boat Name',
      name: 'text_field_label_name',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get text_field_label_address {
    return Intl.message(
      'Address',
      name: 'text_field_label_address',
      desc: '',
      args: [],
    );
  }

  /// `Secret`
  String get text_field_label_secret {
    return Intl.message(
      'Secret',
      name: 'text_field_label_secret',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get log_in {
    return Intl.message(
      'Log In',
      name: 'log_in',
      desc: '',
      args: [],
    );
  }

  /// `Boats`
  String get boats {
    return Intl.message(
      'Boats',
      name: 'boats',
      desc: '',
      args: [],
    );
  }

  /// `Add New Boat`
  String get drawer_add_boat_button_text {
    return Intl.message(
      'Add New Boat',
      name: 'drawer_add_boat_button_text',
      desc: '',
      args: [],
    );
  }

  /// `Failed to connect to the boat. Please check your credentials and try again`
  String get add_boat_connection_error_msg {
    return Intl.message(
      'Failed to connect to the boat. Please check your credentials and try again',
      name: 'add_boat_connection_error_msg',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to leave this page?`
  String get add_boat_confirmation_popup_title {
    return Intl.message(
      'Are you sure you want to leave this page?',
      name: 'add_boat_confirmation_popup_title',
      desc: '',
      args: [],
    );
  }

  /// `Changes you made may not be saved.`
  String get add_boat_confirmation_popup_content {
    return Intl.message(
      'Changes you made may not be saved.',
      name: 'add_boat_confirmation_popup_content',
      desc: '',
      args: [],
    );
  }

  /// `New boat name`
  String get change_boat_name_dialog_title {
    return Intl.message(
      'New boat name',
      name: 'change_boat_name_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change_boat_name_dialog_accept_button_label {
    return Intl.message(
      'Change',
      name: 'change_boat_name_dialog_accept_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Remove boat`
  String get delete_boat_confirmation_popup_title {
    return Intl.message(
      'Remove boat',
      name: 'delete_boat_confirmation_popup_title',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this boat?`
  String get delete_boat_confirmation_popup_content {
    return Intl.message(
      'Are you sure you want to delete this boat?',
      name: 'delete_boat_confirmation_popup_content',
      desc: '',
      args: [],
    );
  }

  /// `Scan QR`
  String get scan_qr {
    return Intl.message(
      'Scan QR',
      name: 'scan_qr',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Failed to scan QR code.`
  String get scan_qr_page_error_msg {
    return Intl.message(
      'Failed to scan QR code.',
      name: 'scan_qr_page_error_msg',
      desc: '',
      args: [],
    );
  }

  /// `This app needs camera permissions to allow you to scan the QR code.`
  String get scan_qr_camera_permissions_denied_msg {
    return Intl.message(
      'This app needs camera permissions to allow you to scan the QR code.',
      name: 'scan_qr_camera_permissions_denied_msg',
      desc: '',
      args: [],
    );
  }

  /// `N`
  String get north {
    return Intl.message(
      'N',
      name: 'north',
      desc: '',
      args: [],
    );
  }

  /// `NE`
  String get north_east {
    return Intl.message(
      'NE',
      name: 'north_east',
      desc: '',
      args: [],
    );
  }

  /// `NW`
  String get north_west {
    return Intl.message(
      'NW',
      name: 'north_west',
      desc: '',
      args: [],
    );
  }

  /// `S`
  String get south {
    return Intl.message(
      'S',
      name: 'south',
      desc: '',
      args: [],
    );
  }

  /// `SE`
  String get south_east {
    return Intl.message(
      'SE',
      name: 'south_east',
      desc: '',
      args: [],
    );
  }

  /// `SW`
  String get south_west {
    return Intl.message(
      'SW',
      name: 'south_west',
      desc: '',
      args: [],
    );
  }

  /// `E`
  String get east {
    return Intl.message(
      'E',
      name: 'east',
      desc: '',
      args: [],
    );
  }

  /// `W`
  String get west {
    return Intl.message(
      'W',
      name: 'west',
      desc: '',
      args: [],
    );
  }

  /// `Speed`
  String get sensor_name_speed {
    return Intl.message(
      'Speed',
      name: 'sensor_name_speed',
      desc: '',
      args: [],
    );
  }

  /// `Heading`
  String get sensor_name_heading {
    return Intl.message(
      'Heading',
      name: 'sensor_name_heading',
      desc: '',
      args: [],
    );
  }

  /// `Boat Sensors`
  String get dashboard_sensors_title {
    return Intl.message(
      'Boat Sensors',
      name: 'dashboard_sensors_title',
      desc: '',
      args: [],
    );
  }

  /// `GPS Feed`
  String get dashboard_gps_title {
    return Intl.message(
      'GPS Feed',
      name: 'dashboard_gps_title',
      desc: '',
      args: [],
    );
  }

  /// `Camera Feed`
  String get dashboard_camera_title {
    return Intl.message(
      'Camera Feed',
      name: 'dashboard_camera_title',
      desc: '',
      args: [],
    );
  }

  /// `{name} (gal)`
  String graphical_sensor_name(Object name) {
    return Intl.message(
      '$name (gal)',
      name: 'graphical_sensor_name',
      desc: '',
      args: [name],
    );
  }

  /// `Viking Yachts`
  String get viking_yachts {
    return Intl.message(
      'Viking Yachts',
      name: 'viking_yachts',
      desc: '',
      args: [],
    );
  }

  /// `The boat name is already taken. Choose a different name.`
  String get boat_name_taken_error_message {
    return Intl.message(
      'The boat name is already taken. Choose a different name.',
      name: 'boat_name_taken_error_message',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings_page_title {
    return Intl.message(
      'Settings',
      name: 'settings_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Change boat name`
  String get settings_page_change_name_button {
    return Intl.message(
      'Change boat name',
      name: 'settings_page_change_name_button',
      desc: '',
      args: [],
    );
  }

  /// `Upload image`
  String get settings_page_upload_image_button {
    return Intl.message(
      'Upload image',
      name: 'settings_page_upload_image_button',
      desc: '',
      args: [],
    );
  }

  /// `Remove boat`
  String get settings_page_remove_boat_button {
    return Intl.message(
      'Remove boat',
      name: 'settings_page_remove_boat_button',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Strings> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Strings> load(Locale locale) => Strings.load(locale);
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
