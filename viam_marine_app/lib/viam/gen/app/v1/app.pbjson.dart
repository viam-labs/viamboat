///
//  Generated code. Do not modify.
//  source: app/v1/app.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use robotDescriptor instead')
const Robot$json = const {
  '1': 'Robot',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'name'},
    const {'1': 'location', '3': 3, '4': 1, '5': 9, '8': const {}, '10': 'location'},
    const {'1': 'last_access', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'lastAccess'},
  ],
};

/// Descriptor for `Robot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List robotDescriptor = $convert.base64Decode('CgVSb2JvdBIzCgJpZBgBIAEoCUIjmoSeAx5ic29uOiJfaWQiIGpzb246ImlkLG9taXRlbXB0eSJSAmlkEjAKBG5hbWUYAiABKAlCHJqEngMXYnNvbjoibmFtZSIganNvbjoibmFtZSJSBG5hbWUSQAoIbG9jYXRpb24YAyABKAlCJJqEngMfYnNvbjoibG9jYXRpb24iIGpzb246ImxvY2F0aW9uIlIIbG9jYXRpb24SZwoLbGFzdF9hY2Nlc3MYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQiqahJ4DJWJzb246Imxhc3RfYWNjZXNzIiBqc29uOiJsYXN0X2FjY2VzcyJSCmxhc3RBY2Nlc3M=');
@$core.Deprecated('Use robotPartDescriptor instead')
const RobotPart$json = const {
  '1': 'RobotPart',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'name'},
    const {'1': 'dns_name', '3': 10, '4': 1, '5': 9, '8': const {}, '10': 'dnsName'},
    const {'1': 'secret', '3': 3, '4': 1, '5': 9, '8': const {}, '10': 'secret'},
    const {'1': 'robot', '3': 4, '4': 1, '5': 9, '8': const {}, '10': 'robot'},
    const {'1': 'location_id', '3': 12, '4': 1, '5': 9, '8': const {}, '10': 'locationId'},
    const {'1': 'robot_config', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '8': const {}, '10': 'robotConfig'},
    const {'1': 'last_access', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'lastAccess'},
    const {'1': 'user_supplied_info', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '8': const {}, '10': 'userSuppliedInfo'},
    const {'1': 'main_part', '3': 8, '4': 1, '5': 8, '8': const {}, '10': 'mainPart'},
    const {'1': 'fqdn', '3': 9, '4': 1, '5': 9, '10': 'fqdn'},
    const {'1': 'local_fqdn', '3': 11, '4': 1, '5': 9, '10': 'localFqdn'},
  ],
};

/// Descriptor for `RobotPart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List robotPartDescriptor = $convert.base64Decode('CglSb2JvdFBhcnQSMwoCaWQYASABKAlCI5qEngMeYnNvbjoiX2lkIiBqc29uOiJpZCxvbWl0ZW1wdHkiUgJpZBIwCgRuYW1lGAIgASgJQhyahJ4DF2Jzb246Im5hbWUiIGpzb246Im5hbWUiUgRuYW1lEj8KCGRuc19uYW1lGAogASgJQiSahJ4DH2Jzb246ImRuc19uYW1lIiBqc29uOiJkbnNfbmFtZSJSB2Ruc05hbWUSQgoGc2VjcmV0GAMgASgJQiqahJ4DJWJzb246InNlY3JldCIganNvbjoic2VjcmV0LG9taXRlbXB0eSJSBnNlY3JldBI0CgVyb2JvdBgEIAEoCUIemoSeAxlic29uOiJyb2JvdCIganNvbjoicm9ib3QiUgVyb2JvdBJBCgtsb2NhdGlvbl9pZBgMIAEoCUIgmoSeAxtic29uOiJsb2NhdGlvbl9pZCIganNvbjoiLSJSCmxvY2F0aW9uSWQSYgoMcm9ib3RfY29uZmlnGAUgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdEImmoSeAyFic29uOiJjb25maWciIGpzb246InJvYm90X2NvbmZpZyJSC3JvYm90Q29uZmlnEmcKC2xhc3RfYWNjZXNzGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIqmoSeAyVic29uOiJsYXN0X2FjY2VzcyIganNvbjoibGFzdF9hY2Nlc3MiUgpsYXN0QWNjZXNzEn8KEnVzZXJfc3VwcGxpZWRfaW5mbxgHIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RCOJqEngMzYnNvbjoidXNlcl9zdXBwbGllZF9pbmZvIiBqc29uOiJ1c2VyX3N1cHBsaWVkX2luZm8iUhB1c2VyU3VwcGxpZWRJbmZvEkMKCW1haW5fcGFydBgIIAEoCEImmoSeAyFic29uOiJtYWluX3BhcnQiIGpzb246Im1haW5fcGFydCJSCG1haW5QYXJ0EhIKBGZxZG4YCSABKAlSBGZxZG4SHQoKbG9jYWxfZnFkbhgLIAEoCVIJbG9jYWxGcWRu');
@$core.Deprecated('Use robotPartHistoryEntryDescriptor instead')
const RobotPartHistoryEntry$json = const {
  '1': 'RobotPartHistoryEntry',
  '2': const [
    const {'1': 'part', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'part'},
    const {'1': 'robot', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'robot'},
    const {'1': 'when', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'when'},
    const {'1': 'old', '3': 4, '4': 1, '5': 11, '6': '.viam.app.v1.RobotPart', '8': const {}, '10': 'old'},
  ],
};

/// Descriptor for `RobotPartHistoryEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List robotPartHistoryEntryDescriptor = $convert.base64Decode('ChVSb2JvdFBhcnRIaXN0b3J5RW50cnkSMAoEcGFydBgBIAEoCUIcmoSeAxdic29uOiJwYXJ0IiBqc29uOiJwYXJ0IlIEcGFydBI0CgVyb2JvdBgCIAEoCUIemoSeAxlic29uOiJyb2JvdCIganNvbjoicm9ib3QiUgVyb2JvdBJMCgR3aGVuGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIcmoSeAxdic29uOiJ3aGVuIiBqc29uOiJ3aGVuIlIEd2hlbhJECgNvbGQYBCABKAsyFi52aWFtLmFwcC52MS5Sb2JvdFBhcnRCGpqEngMVYnNvbjoib2xkIiBqc29uOiJvbGQiUgNvbGQ=');
@$core.Deprecated('Use listOrganizationsRequestDescriptor instead')
const ListOrganizationsRequest$json = const {
  '1': 'ListOrganizationsRequest',
};

/// Descriptor for `ListOrganizationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOrganizationsRequestDescriptor = $convert.base64Decode('ChhMaXN0T3JnYW5pemF0aW9uc1JlcXVlc3Q=');
@$core.Deprecated('Use organizationDescriptor instead')
const Organization$json = const {
  '1': 'Organization',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Organization`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List organizationDescriptor = $convert.base64Decode('CgxPcmdhbml6YXRpb24SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWU=');
@$core.Deprecated('Use listOrganizationsResponseDescriptor instead')
const ListOrganizationsResponse$json = const {
  '1': 'ListOrganizationsResponse',
  '2': const [
    const {'1': 'organizations', '3': 1, '4': 3, '5': 11, '6': '.viam.app.v1.Organization', '10': 'organizations'},
  ],
};

/// Descriptor for `ListOrganizationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOrganizationsResponseDescriptor = $convert.base64Decode('ChlMaXN0T3JnYW5pemF0aW9uc1Jlc3BvbnNlEj8KDW9yZ2FuaXphdGlvbnMYASADKAsyGS52aWFtLmFwcC52MS5Pcmdhbml6YXRpb25SDW9yZ2FuaXphdGlvbnM=');
@$core.Deprecated('Use locationDescriptor instead')
const Location$json = const {
  '1': 'Location',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Location`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDescriptor = $convert.base64Decode('CghMb2NhdGlvbhIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use listLocationsRequestDescriptor instead')
const ListLocationsRequest$json = const {
  '1': 'ListLocationsRequest',
  '2': const [
    const {'1': 'organization_id', '3': 1, '4': 1, '5': 9, '10': 'organizationId'},
  ],
};

/// Descriptor for `ListLocationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listLocationsRequestDescriptor = $convert.base64Decode('ChRMaXN0TG9jYXRpb25zUmVxdWVzdBInCg9vcmdhbml6YXRpb25faWQYASABKAlSDm9yZ2FuaXphdGlvbklk');
@$core.Deprecated('Use listLocationsResponseDescriptor instead')
const ListLocationsResponse$json = const {
  '1': 'ListLocationsResponse',
  '2': const [
    const {'1': 'locations', '3': 1, '4': 3, '5': 11, '6': '.viam.app.v1.Location', '10': 'locations'},
  ],
};

/// Descriptor for `ListLocationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listLocationsResponseDescriptor = $convert.base64Decode('ChVMaXN0TG9jYXRpb25zUmVzcG9uc2USMwoJbG9jYXRpb25zGAEgAygLMhUudmlhbS5hcHAudjEuTG9jYXRpb25SCWxvY2F0aW9ucw==');
@$core.Deprecated('Use locationAuthDescriptor instead')
const LocationAuth$json = const {
  '1': 'LocationAuth',
  '2': const [
    const {'1': 'secret', '3': 1, '4': 1, '5': 9, '10': 'secret'},
  ],
};

/// Descriptor for `LocationAuth`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationAuthDescriptor = $convert.base64Decode('CgxMb2NhdGlvbkF1dGgSFgoGc2VjcmV0GAEgASgJUgZzZWNyZXQ=');
@$core.Deprecated('Use locationAuthRequestDescriptor instead')
const LocationAuthRequest$json = const {
  '1': 'LocationAuthRequest',
  '2': const [
    const {'1': 'location_id', '3': 1, '4': 1, '5': 9, '10': 'locationId'},
  ],
};

/// Descriptor for `LocationAuthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationAuthRequestDescriptor = $convert.base64Decode('ChNMb2NhdGlvbkF1dGhSZXF1ZXN0Eh8KC2xvY2F0aW9uX2lkGAEgASgJUgpsb2NhdGlvbklk');
@$core.Deprecated('Use locationAuthResponseDescriptor instead')
const LocationAuthResponse$json = const {
  '1': 'LocationAuthResponse',
  '2': const [
    const {'1': 'auth', '3': 1, '4': 1, '5': 11, '6': '.viam.app.v1.LocationAuth', '10': 'auth'},
  ],
};

/// Descriptor for `LocationAuthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationAuthResponseDescriptor = $convert.base64Decode('ChRMb2NhdGlvbkF1dGhSZXNwb25zZRItCgRhdXRoGAEgASgLMhkudmlhbS5hcHAudjEuTG9jYXRpb25BdXRoUgRhdXRo');
@$core.Deprecated('Use getRobotRequestDescriptor instead')
const GetRobotRequest$json = const {
  '1': 'GetRobotRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRobotRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRobotRequestDescriptor = $convert.base64Decode('Cg9HZXRSb2JvdFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use getRobotResponseDescriptor instead')
const GetRobotResponse$json = const {
  '1': 'GetRobotResponse',
  '2': const [
    const {'1': 'robot', '3': 1, '4': 1, '5': 11, '6': '.viam.app.v1.Robot', '10': 'robot'},
  ],
};

/// Descriptor for `GetRobotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRobotResponseDescriptor = $convert.base64Decode('ChBHZXRSb2JvdFJlc3BvbnNlEigKBXJvYm90GAEgASgLMhIudmlhbS5hcHAudjEuUm9ib3RSBXJvYm90');
@$core.Deprecated('Use getRobotPartsRequestDescriptor instead')
const GetRobotPartsRequest$json = const {
  '1': 'GetRobotPartsRequest',
  '2': const [
    const {'1': 'robot_id', '3': 1, '4': 1, '5': 9, '10': 'robotId'},
  ],
};

/// Descriptor for `GetRobotPartsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRobotPartsRequestDescriptor = $convert.base64Decode('ChRHZXRSb2JvdFBhcnRzUmVxdWVzdBIZCghyb2JvdF9pZBgBIAEoCVIHcm9ib3RJZA==');
@$core.Deprecated('Use getRobotPartsResponseDescriptor instead')
const GetRobotPartsResponse$json = const {
  '1': 'GetRobotPartsResponse',
  '2': const [
    const {'1': 'parts', '3': 1, '4': 3, '5': 11, '6': '.viam.app.v1.RobotPart', '10': 'parts'},
  ],
};

/// Descriptor for `GetRobotPartsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRobotPartsResponseDescriptor = $convert.base64Decode('ChVHZXRSb2JvdFBhcnRzUmVzcG9uc2USLAoFcGFydHMYASADKAsyFi52aWFtLmFwcC52MS5Sb2JvdFBhcnRSBXBhcnRz');
@$core.Deprecated('Use getRobotPartRequestDescriptor instead')
const GetRobotPartRequest$json = const {
  '1': 'GetRobotPartRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRobotPartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRobotPartRequestDescriptor = $convert.base64Decode('ChNHZXRSb2JvdFBhcnRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use getRobotPartResponseDescriptor instead')
const GetRobotPartResponse$json = const {
  '1': 'GetRobotPartResponse',
  '2': const [
    const {'1': 'part', '3': 1, '4': 1, '5': 11, '6': '.viam.app.v1.RobotPart', '10': 'part'},
    const {'1': 'config_json', '3': 2, '4': 1, '5': 9, '10': 'configJson'},
  ],
};

/// Descriptor for `GetRobotPartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRobotPartResponseDescriptor = $convert.base64Decode('ChRHZXRSb2JvdFBhcnRSZXNwb25zZRIqCgRwYXJ0GAEgASgLMhYudmlhbS5hcHAudjEuUm9ib3RQYXJ0UgRwYXJ0Eh8KC2NvbmZpZ19qc29uGAIgASgJUgpjb25maWdKc29u');
@$core.Deprecated('Use getRobotPartLogsRequestDescriptor instead')
const GetRobotPartLogsRequest$json = const {
  '1': 'GetRobotPartLogsRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'errors_only', '3': 2, '4': 1, '5': 8, '10': 'errorsOnly'},
  ],
};

/// Descriptor for `GetRobotPartLogsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRobotPartLogsRequestDescriptor = $convert.base64Decode('ChdHZXRSb2JvdFBhcnRMb2dzUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSHwoLZXJyb3JzX29ubHkYAiABKAhSCmVycm9yc09ubHk=');
@$core.Deprecated('Use logEntryDescriptor instead')
const LogEntry$json = const {
  '1': 'LogEntry',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'level', '3': 2, '4': 1, '5': 9, '10': 'level'},
    const {'1': 'time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'time'},
    const {'1': 'logger_name', '3': 4, '4': 1, '5': 9, '10': 'loggerName'},
    const {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'caller', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'caller'},
    const {'1': 'stack', '3': 7, '4': 1, '5': 9, '10': 'stack'},
    const {'1': 'fields', '3': 8, '4': 3, '5': 11, '6': '.google.protobuf.Struct', '10': 'fields'},
  ],
};

/// Descriptor for `LogEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logEntryDescriptor = $convert.base64Decode('CghMb2dFbnRyeRISCgRob3N0GAEgASgJUgRob3N0EhQKBWxldmVsGAIgASgJUgVsZXZlbBIuCgR0aW1lGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIEdGltZRIfCgtsb2dnZXJfbmFtZRgEIAEoCVIKbG9nZ2VyTmFtZRIYCgdtZXNzYWdlGAUgASgJUgdtZXNzYWdlEi8KBmNhbGxlchgGIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSBmNhbGxlchIUCgVzdGFjaxgHIAEoCVIFc3RhY2sSLwoGZmllbGRzGAggAygLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIGZmllbGRz');
@$core.Deprecated('Use getRobotPartLogsResponseDescriptor instead')
const GetRobotPartLogsResponse$json = const {
  '1': 'GetRobotPartLogsResponse',
  '2': const [
    const {'1': 'logs', '3': 1, '4': 3, '5': 11, '6': '.viam.app.v1.LogEntry', '10': 'logs'},
  ],
};

/// Descriptor for `GetRobotPartLogsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRobotPartLogsResponseDescriptor = $convert.base64Decode('ChhHZXRSb2JvdFBhcnRMb2dzUmVzcG9uc2USKQoEbG9ncxgBIAMoCzIVLnZpYW0uYXBwLnYxLkxvZ0VudHJ5UgRsb2dz');
@$core.Deprecated('Use tailRobotPartLogsRequestDescriptor instead')
const TailRobotPartLogsRequest$json = const {
  '1': 'TailRobotPartLogsRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'errors_only', '3': 2, '4': 1, '5': 8, '10': 'errorsOnly'},
  ],
};

/// Descriptor for `TailRobotPartLogsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tailRobotPartLogsRequestDescriptor = $convert.base64Decode('ChhUYWlsUm9ib3RQYXJ0TG9nc1JlcXVlc3QSDgoCaWQYASABKAlSAmlkEh8KC2Vycm9yc19vbmx5GAIgASgIUgplcnJvcnNPbmx5');
@$core.Deprecated('Use tailRobotPartLogsResponseDescriptor instead')
const TailRobotPartLogsResponse$json = const {
  '1': 'TailRobotPartLogsResponse',
  '2': const [
    const {'1': 'logs', '3': 1, '4': 3, '5': 11, '6': '.viam.app.v1.LogEntry', '10': 'logs'},
  ],
};

/// Descriptor for `TailRobotPartLogsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tailRobotPartLogsResponseDescriptor = $convert.base64Decode('ChlUYWlsUm9ib3RQYXJ0TG9nc1Jlc3BvbnNlEikKBGxvZ3MYASADKAsyFS52aWFtLmFwcC52MS5Mb2dFbnRyeVIEbG9ncw==');
@$core.Deprecated('Use getRobotPartHistoryRequestDescriptor instead')
const GetRobotPartHistoryRequest$json = const {
  '1': 'GetRobotPartHistoryRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRobotPartHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRobotPartHistoryRequestDescriptor = $convert.base64Decode('ChpHZXRSb2JvdFBhcnRIaXN0b3J5UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use getRobotPartHistoryResponseDescriptor instead')
const GetRobotPartHistoryResponse$json = const {
  '1': 'GetRobotPartHistoryResponse',
  '2': const [
    const {'1': 'history', '3': 1, '4': 3, '5': 11, '6': '.viam.app.v1.RobotPartHistoryEntry', '10': 'history'},
  ],
};

/// Descriptor for `GetRobotPartHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRobotPartHistoryResponseDescriptor = $convert.base64Decode('ChtHZXRSb2JvdFBhcnRIaXN0b3J5UmVzcG9uc2USPAoHaGlzdG9yeRgBIAMoCzIiLnZpYW0uYXBwLnYxLlJvYm90UGFydEhpc3RvcnlFbnRyeVIHaGlzdG9yeQ==');
@$core.Deprecated('Use updateRobotPartRequestDescriptor instead')
const UpdateRobotPartRequest$json = const {
  '1': 'UpdateRobotPartRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'robot_config', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'robotConfig'},
  ],
};

/// Descriptor for `UpdateRobotPartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRobotPartRequestDescriptor = $convert.base64Decode('ChZVcGRhdGVSb2JvdFBhcnRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEjoKDHJvYm90X2NvbmZpZxgDIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSC3JvYm90Q29uZmln');
@$core.Deprecated('Use updateRobotPartResponseDescriptor instead')
const UpdateRobotPartResponse$json = const {
  '1': 'UpdateRobotPartResponse',
  '2': const [
    const {'1': 'part', '3': 1, '4': 1, '5': 11, '6': '.viam.app.v1.RobotPart', '10': 'part'},
  ],
};

/// Descriptor for `UpdateRobotPartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRobotPartResponseDescriptor = $convert.base64Decode('ChdVcGRhdGVSb2JvdFBhcnRSZXNwb25zZRIqCgRwYXJ0GAEgASgLMhYudmlhbS5hcHAudjEuUm9ib3RQYXJ0UgRwYXJ0');
@$core.Deprecated('Use newRobotPartRequestDescriptor instead')
const NewRobotPartRequest$json = const {
  '1': 'NewRobotPartRequest',
  '2': const [
    const {'1': 'robot_id', '3': 1, '4': 1, '5': 9, '10': 'robotId'},
    const {'1': 'part_name', '3': 2, '4': 1, '5': 9, '10': 'partName'},
  ],
};

/// Descriptor for `NewRobotPartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newRobotPartRequestDescriptor = $convert.base64Decode('ChNOZXdSb2JvdFBhcnRSZXF1ZXN0EhkKCHJvYm90X2lkGAEgASgJUgdyb2JvdElkEhsKCXBhcnRfbmFtZRgCIAEoCVIIcGFydE5hbWU=');
@$core.Deprecated('Use newRobotPartResponseDescriptor instead')
const NewRobotPartResponse$json = const {
  '1': 'NewRobotPartResponse',
  '2': const [
    const {'1': 'part_id', '3': 1, '4': 1, '5': 9, '10': 'partId'},
  ],
};

/// Descriptor for `NewRobotPartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newRobotPartResponseDescriptor = $convert.base64Decode('ChROZXdSb2JvdFBhcnRSZXNwb25zZRIXCgdwYXJ0X2lkGAEgASgJUgZwYXJ0SWQ=');
@$core.Deprecated('Use deleteRobotPartRequestDescriptor instead')
const DeleteRobotPartRequest$json = const {
  '1': 'DeleteRobotPartRequest',
  '2': const [
    const {'1': 'part_id', '3': 1, '4': 1, '5': 9, '10': 'partId'},
  ],
};

/// Descriptor for `DeleteRobotPartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRobotPartRequestDescriptor = $convert.base64Decode('ChZEZWxldGVSb2JvdFBhcnRSZXF1ZXN0EhcKB3BhcnRfaWQYASABKAlSBnBhcnRJZA==');
@$core.Deprecated('Use deleteRobotPartResponseDescriptor instead')
const DeleteRobotPartResponse$json = const {
  '1': 'DeleteRobotPartResponse',
};

/// Descriptor for `DeleteRobotPartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRobotPartResponseDescriptor = $convert.base64Decode('ChdEZWxldGVSb2JvdFBhcnRSZXNwb25zZQ==');
@$core.Deprecated('Use fragmentDescriptor instead')
const Fragment$json = const {
  '1': 'Fragment',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'name'},
    const {'1': 'fragment', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '8': const {}, '10': 'fragment'},
    const {'1': 'organization_owner', '3': 4, '4': 1, '5': 9, '8': const {}, '10': 'organizationOwner'},
    const {'1': 'public', '3': 5, '4': 1, '5': 8, '8': const {}, '10': 'public'},
  ],
};

/// Descriptor for `Fragment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fragmentDescriptor = $convert.base64Decode('CghGcmFnbWVudBIzCgJpZBgBIAEoCUIjmoSeAx5ic29uOiJfaWQiIGpzb246ImlkLG9taXRlbXB0eSJSAmlkEjAKBG5hbWUYAiABKAlCHJqEngMXYnNvbjoibmFtZSIganNvbjoibmFtZSJSBG5hbWUSWQoIZnJhZ21lbnQYAyABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0QiSahJ4DH2Jzb246ImZyYWdtZW50IiBqc29uOiJmcmFnbWVudCJSCGZyYWdtZW50EloKEm9yZ2FuaXphdGlvbl9vd25lchgEIAEoCUIrmoSeAyZic29uOiJvcmdhbml6YXRpb25fb3duZXIiIGpzb246Im93bmVyIlIRb3JnYW5pemF0aW9uT3duZXISOAoGcHVibGljGAUgASgIQiCahJ4DG2Jzb246InB1YmxpYyIganNvbjoicHVibGljIlIGcHVibGlj');
@$core.Deprecated('Use findRobotsRequestDescriptor instead')
const FindRobotsRequest$json = const {
  '1': 'FindRobotsRequest',
  '2': const [
    const {'1': 'location_id', '3': 1, '4': 1, '5': 9, '10': 'locationId'},
  ],
};

/// Descriptor for `FindRobotsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findRobotsRequestDescriptor = $convert.base64Decode('ChFGaW5kUm9ib3RzUmVxdWVzdBIfCgtsb2NhdGlvbl9pZBgBIAEoCVIKbG9jYXRpb25JZA==');
@$core.Deprecated('Use findRobotsResponseDescriptor instead')
const FindRobotsResponse$json = const {
  '1': 'FindRobotsResponse',
  '2': const [
    const {'1': 'robots', '3': 1, '4': 3, '5': 11, '6': '.viam.app.v1.Robot', '10': 'robots'},
  ],
};

/// Descriptor for `FindRobotsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findRobotsResponseDescriptor = $convert.base64Decode('ChJGaW5kUm9ib3RzUmVzcG9uc2USKgoGcm9ib3RzGAEgAygLMhIudmlhbS5hcHAudjEuUm9ib3RSBnJvYm90cw==');
@$core.Deprecated('Use newRobotRequestDescriptor instead')
const NewRobotRequest$json = const {
  '1': 'NewRobotRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'location', '3': 2, '4': 1, '5': 9, '10': 'location'},
  ],
};

/// Descriptor for `NewRobotRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newRobotRequestDescriptor = $convert.base64Decode('Cg9OZXdSb2JvdFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIaCghsb2NhdGlvbhgCIAEoCVIIbG9jYXRpb24=');
@$core.Deprecated('Use newRobotResponseDescriptor instead')
const NewRobotResponse$json = const {
  '1': 'NewRobotResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `NewRobotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newRobotResponseDescriptor = $convert.base64Decode('ChBOZXdSb2JvdFJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use updateRobotRequestDescriptor instead')
const UpdateRobotRequest$json = const {
  '1': 'UpdateRobotRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'location', '3': 3, '4': 1, '5': 9, '10': 'location'},
  ],
};

/// Descriptor for `UpdateRobotRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRobotRequestDescriptor = $convert.base64Decode('ChJVcGRhdGVSb2JvdFJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSGgoIbG9jYXRpb24YAyABKAlSCGxvY2F0aW9u');
@$core.Deprecated('Use updateRobotResponseDescriptor instead')
const UpdateRobotResponse$json = const {
  '1': 'UpdateRobotResponse',
  '2': const [
    const {'1': 'robot', '3': 1, '4': 1, '5': 11, '6': '.viam.app.v1.Robot', '10': 'robot'},
  ],
};

/// Descriptor for `UpdateRobotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRobotResponseDescriptor = $convert.base64Decode('ChNVcGRhdGVSb2JvdFJlc3BvbnNlEigKBXJvYm90GAEgASgLMhIudmlhbS5hcHAudjEuUm9ib3RSBXJvYm90');
@$core.Deprecated('Use deleteRobotRequestDescriptor instead')
const DeleteRobotRequest$json = const {
  '1': 'DeleteRobotRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteRobotRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRobotRequestDescriptor = $convert.base64Decode('ChJEZWxldGVSb2JvdFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use deleteRobotResponseDescriptor instead')
const DeleteRobotResponse$json = const {
  '1': 'DeleteRobotResponse',
};

/// Descriptor for `DeleteRobotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRobotResponseDescriptor = $convert.base64Decode('ChNEZWxldGVSb2JvdFJlc3BvbnNl');
@$core.Deprecated('Use markPartAsMainRequestDescriptor instead')
const MarkPartAsMainRequest$json = const {
  '1': 'MarkPartAsMainRequest',
  '2': const [
    const {'1': 'part_id', '3': 1, '4': 1, '5': 9, '10': 'partId'},
  ],
};

/// Descriptor for `MarkPartAsMainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List markPartAsMainRequestDescriptor = $convert.base64Decode('ChVNYXJrUGFydEFzTWFpblJlcXVlc3QSFwoHcGFydF9pZBgBIAEoCVIGcGFydElk');
@$core.Deprecated('Use markPartAsMainResponseDescriptor instead')
const MarkPartAsMainResponse$json = const {
  '1': 'MarkPartAsMainResponse',
};

/// Descriptor for `MarkPartAsMainResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List markPartAsMainResponseDescriptor = $convert.base64Decode('ChZNYXJrUGFydEFzTWFpblJlc3BvbnNl');
