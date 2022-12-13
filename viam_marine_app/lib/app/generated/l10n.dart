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

  /// `Welcome to\nViam Marine`
  String get add_boat_page_header_welcome_text {
    return Intl.message(
      'Welcome to\nViam Marine',
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
