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
  String get viam_marine {
    return Intl.message(
      'Viam Marine',
      name: 'viam_marine',
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

  /// `Save changes`
  String get save_changes {
    return Intl.message(
      'Save changes',
      name: 'save_changes',
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

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
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

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
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

  /// `The boat name is already taken. Choose a different name.`
  String get boat_name_taken_error_message {
    return Intl.message(
      'The boat name is already taken. Choose a different name.',
      name: 'boat_name_taken_error_message',
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

  /// `• Maximum 20 characters`
  String get text_field_max_characters {
    return Intl.message(
      '• Maximum 20 characters',
      name: 'text_field_max_characters',
      desc: '',
      args: [],
    );
  }

  /// `Add boat`
  String get add_boat {
    return Intl.message(
      'Add boat',
      name: 'add_boat',
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

  /// `{name} (gal)`
  String graphical_sensor_name(Object name) {
    return Intl.message(
      '$name (gal)',
      name: 'graphical_sensor_name',
      desc: '',
      args: [name],
    );
  }

  /// `No sensors found`
  String get dashboard_sensors_empty_state_title {
    return Intl.message(
      'No sensors found',
      name: 'dashboard_sensors_empty_state_title',
      desc: '',
      args: [],
    );
  }

  /// `Connect sensors on your boat to display the screen`
  String get dashboard_sensors_empty_state_subtitle {
    return Intl.message(
      'Connect sensors on your boat to display the screen',
      name: 'dashboard_sensors_empty_state_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `GPS Feed`
  String get map_page_gps_title {
    return Intl.message(
      'GPS Feed',
      name: 'map_page_gps_title',
      desc: '',
      args: [],
    );
  }

  /// `No GPS found`
  String get map_page_empty_state_title {
    return Intl.message(
      'No GPS found',
      name: 'map_page_empty_state_title',
      desc: '',
      args: [],
    );
  }

  /// `Connect GPS sensor on your boat to display the screen`
  String get map_page_empty_state_subtitle {
    return Intl.message(
      'Connect GPS sensor on your boat to display the screen',
      name: 'map_page_empty_state_subtitle',
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

  /// `An error occurred while trying to find your boat`
  String get map_inital_error {
    return Intl.message(
      'An error occurred while trying to find your boat',
      name: 'map_inital_error',
      desc: '',
      args: [],
    );
  }

  /// `Camera Feed`
  String get camera_page_camera_feed {
    return Intl.message(
      'Camera Feed',
      name: 'camera_page_camera_feed',
      desc: '',
      args: [],
    );
  }

  /// `No camera found`
  String get camera_empty_state_title {
    return Intl.message(
      'No camera found',
      name: 'camera_empty_state_title',
      desc: '',
      args: [],
    );
  }

  /// `Connect camera on your boat to display the screen`
  String get camera_empty_state_subtitle {
    return Intl.message(
      'Connect camera on your boat to display the screen',
      name: 'camera_empty_state_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `{cameraName} Feed`
  String camera_tile_camera_name(Object cameraName) {
    return Intl.message(
      '$cameraName Feed',
      name: 'camera_tile_camera_name',
      desc: '',
      args: [cameraName],
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

  /// `Choose photo`
  String get settings_page_choose_photo_dialog_button {
    return Intl.message(
      'Choose photo',
      name: 'settings_page_choose_photo_dialog_button',
      desc: '',
      args: [],
    );
  }

  /// `Capture photo`
  String get settings_page_capture_photo_dialog_button {
    return Intl.message(
      'Capture photo',
      name: 'settings_page_capture_photo_dialog_button',
      desc: '',
      args: [],
    );
  }

  /// `Capture or choose photo of your boat`
  String get settings_page_photo_dialog_description {
    return Intl.message(
      'Capture or choose photo of your boat',
      name: 'settings_page_photo_dialog_description',
      desc: '',
      args: [],
    );
  }

  /// `Boat Photo`
  String get settings_page_photo_dialog_title {
    return Intl.message(
      'Boat Photo',
      name: 'settings_page_photo_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `Organizations`
  String get organizations {
    return Intl.message(
      'Organizations',
      name: 'organizations',
      desc: '',
      args: [],
    );
  }

  /// `Locations`
  String get locations {
    return Intl.message(
      'Locations',
      name: 'locations',
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
