// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:file_picker/file_picker.dart' as _i7;
import 'package:firebase_analytics/firebase_analytics.dart' as _i8;
import 'package:flutter/material.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
<<<<<<< HEAD
import 'package:permission_handler/permission_handler.dart' as _i16;
import 'package:shared_preferences/shared_preferences.dart' as _i18;
import 'package:uuid/uuid.dart' as _i20;

import '../../sdk/viam_sdk.dart' as _i53;
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i27;
import '../data/analytics/service/analytics_service_impl.dart' as _i29;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i6;
import '../data/boat/service/boat_service_impl.dart' as _i42;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i34;
import '../data/camera/data_source/camera_api_data_source.dart' as _i56;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart' as _i22;
import '../data/camera/service/camera_service_impl.dart' as _i62;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i12;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i14;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i63;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart' as _i23;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart' as _i24;
import '../data/movement/service/movement_service_impl.dart' as _i65;
import '../data/permissions/data_source/camera_permission_data_source.dart' as _i30;
import '../data/permissions/service/permissions_service_impl.dart' as _i39;
import '../data/resource/data_source/resource_api_data_source.dart' as _i59;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart' as _i21;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart' as _i25;
import '../data/resource/service/resource_service_impl.dart' as _i67;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i60;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart' as _i26;
import '../data/sensor/service/sensor_service_impl.dart' as _i69;
import '../domain/analytics/service/analytics_service.dart' as _i28;
import '../../sdk/viam_sdk.dart' as _i16;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i28;
import '../data/analytics/service/analytics_service_impl.dart' as _i30;
import '../data/app/data_source/viam_app_app_data_source.dart' as _i17;
import '../data/app/mapper/viam_organization_to_viam_app_organization.dart' as _i22;
import '../data/app/service/viam_app_app_service_impl.dart' as _i42;
=======
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i27;
import '../data/analytics/service/analytics_service_impl.dart' as _i29;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i30;
import '../data/app_viam/mapper/viam_organization_to_viam_app_organization.dart'
    as _i21;
import '../data/app_viam/service/app_viam_service.dart' as _i32;
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
=======
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i30;
import '../data/analytics/service/analytics_service_impl.dart' as _i32;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i33;
=======
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i31;
import '../data/analytics/service/analytics_service_impl.dart' as _i33;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i34;
>>>>>>> 213278c ([VIAM-110-robots] get robots)
=======
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i32;
import '../data/analytics/service/analytics_service_impl.dart' as _i34;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i35;
>>>>>>> 492325b ([VIAM-110-connect] Add connect to robot)
=======
import 'package:permission_handler/permission_handler.dart' as _i11;
import 'package:shared_preferences/shared_preferences.dart' as _i13;
import 'package:uuid/uuid.dart' as _i18;

import '../../sdk/viam_sdk.dart' as _i19;
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i35;
import '../data/analytics/service/analytics_service_impl.dart' as _i37;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i38;
>>>>>>> 07df98d ([VIAM-110-connect] Store accessToken and code refactor)
import '../data/app_viam/mapper/viam_location_auth_to_viam_app_location_auth_mapper.dart'
    as _i64;
import '../data/app_viam/mapper/viam_location_organization_to_viam_app_location_organization_mapper.dart'
<<<<<<< HEAD
    as _i22;
<<<<<<< HEAD
import '../data/app_viam/mapper/viam_robot_to_viam_app_robot.dart' as _i25;
import '../data/app_viam/mapper/viam_shared_secret_state_to_viam_app_shared_secret_state_mapper.dart'
    as _i29;
<<<<<<< HEAD
import '../data/app_viam/service/app_viam_service.dart' as _i48;
>>>>>>> 243fd5c ([VIAM-110-location] Get locations)
=======
import '../data/app_viam/mapper/viam_shared_secret_to_viam_app_shared_secret_mapper.dart'
    as _i30;
import '../data/app_viam/service/app_viam_service.dart' as _i49;
>>>>>>> 213278c ([VIAM-110-robots] get robots)
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i6;
import '../data/boat/service/boat_service_impl.dart' as _i51;
import '../data/boat/store/boat_box_impl.dart' as _i4;
<<<<<<< HEAD
<<<<<<< HEAD
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i36;
import '../data/camera/data_source/camera_api_data_source.dart' as _i60;
<<<<<<< HEAD
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart' as _i19;
import '../data/camera/service/camera_service_impl.dart' as _i66;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i67;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart' as _i21;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart' as _i23;
import '../data/movement/service/movement_service_impl.dart' as _i69;
import '../data/permissions/data_source/camera_permission_data_source.dart' as _i32;
import '../data/permissions/service/permissions_service_impl.dart' as _i39;
import '../data/resource/data_source/resource_api_data_source.dart' as _i63;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart' as _i18;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart' as _i24;
import '../data/resource/service/resource_service_impl.dart' as _i71;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i64;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart' as _i25;
import '../data/sensor/service/sensor_service_impl.dart' as _i73;
import '../data/viam/data_source/viam_data_source.dart' as _i20;
import '../data/viam/service/viam_service_impl.dart' as _i27;
import '../domain/analytics/service/analytics_service.dart' as _i29;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i35;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart' as _i36;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i37;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i5;
import '../domain/boat/service/boat_service.dart' as _i41;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i33;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i54;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i43;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i44;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i45;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i46;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i48;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i15;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i49;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i50;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart' as _i19;
import '../domain/camera/service/camera_service.dart' as _i61;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i71;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i72;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart' as _i80;
import '../domain/current_time/get_current_time_use_case.dart' as _i9;
import '../domain/local_photo/service/local_photo_service.dart' as _i13;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart' as _i31;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart' as _i32;
import '../domain/movement/service/movement_service.dart' as _i64;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i73;
import '../domain/movement/usecase/get_position_use_case.dart' as _i74;
import '../domain/permissions/service/permissions_service.dart' as _i38;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart' as _i47;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart' as _i40;
import '../domain/resource/service/resource_service.dart' as _i66;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i75;
import '../domain/sensor/service/sensor_service_impl.dart' as _i68;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i76;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i70;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i55;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart' as _i81;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart' as _i57;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i58;
import '../presentation/page/main/cubit/main_cubit.dart' as _i77;
import '../presentation/page/map/cubit/map_cubit.dart' as _i78;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i17;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i51;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i52;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart' as _i82;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart' as _i79;
import 'camera_permission_injectable.dart' as _i87;
import 'file_picker_injectable.dart' as _i83;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i84;
import 'image_picker_injectable.dart' as _i86;
import 'navigator_key_injectable.dart' as _i85;
import 'shared_preferences_injectable.dart' as _i88;
import 'uuid_injectable.dart' as _i89;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i90;
import '../domain/app/service/viam_app_app_servcie.dart' as _i41;
import '../domain/app/usecase/list_organizations_use_case.dart' as _i52;
=======
=======
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i37;
import '../data/camera/data_source/camera_api_data_source.dart' as _i67;
>>>>>>> 243fd5c ([VIAM-110-location] Get locations)
=======
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i38;
import '../data/camera/data_source/camera_api_data_source.dart' as _i70;
>>>>>>> 213278c ([VIAM-110-robots] get robots)
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i18;
import '../data/camera/service/camera_service_impl.dart' as _i76;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i77;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i20;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
=======
import '../data/app_viam/mapper/viam_location_to_app_viam_location_mapper.dart'
    as _i59;
import '../data/app_viam/mapper/viam_organization_to_viam_app_organization.dart'
>>>>>>> 492325b ([VIAM-110-connect] Add connect to robot)
    as _i23;
import '../data/app_viam/mapper/viam_robot_to_viam_app_robot.dart' as _i26;
import '../data/app_viam/mapper/viam_shared_secret_state_to_viam_app_shared_secret_state_mapper.dart'
    as _i30;
import '../data/app_viam/mapper/viam_shared_secret_to_viam_app_shared_secret_mapper.dart'
    as _i31;
import '../data/app_viam/service/app_viam_service.dart' as _i61;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i6;
import '../data/boat/service/boat_service_impl.dart' as _i63;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i40;
import '../data/camera/data_source/camera_api_data_source.dart' as _i37;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i19;
import '../data/camera/service/camera_service_impl.dart' as _i50;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i17;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i21;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i24;
import '../data/movement/service/movement_service_impl.dart' as _i52;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i38;
import '../data/permissions/service/permissions_service_impl.dart' as _i45;
import '../data/resource/data_source/resource_api_data_source.dart' as _i47;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i18;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
=======
>>>>>>> 07df98d ([VIAM-110-connect] Store accessToken and code refactor)
    as _i25;
import '../data/app_viam/mapper/viam_location_to_app_viam_location_mapper.dart'
    as _i65;
import '../data/app_viam/mapper/viam_organization_to_viam_app_organization.dart'
    as _i26;
import '../data/app_viam/mapper/viam_robot_to_viam_app_robot.dart' as _i29;
import '../data/app_viam/mapper/viam_shared_secret_state_to_viam_app_shared_secret_state_mapper.dart'
    as _i33;
import '../data/app_viam/mapper/viam_shared_secret_to_viam_app_shared_secret_mapper.dart'
    as _i34;
import '../data/app_viam/service/app_viam_service.dart' as _i67;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i6;
import '../data/boat/service/boat_service_impl.dart' as _i69;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i45;
import '../data/camera/data_source/camera_api_data_source.dart' as _i40;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i22;
import '../data/camera/service/camera_service_impl.dart' as _i57;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i20;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i24;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i27;
import '../data/movement/service/movement_service_impl.dart' as _i59;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i41;
import '../data/permissions/service/permissions_service_impl.dart' as _i51;
import '../data/resource/data_source/resource_api_data_source.dart' as _i53;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i21;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i28;
import '../data/resource/service/resource_service_impl.dart' as _i61;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i54;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i30;
import '../data/sensor/service/sensor_service_impl.dart' as _i63;
import '../data/viam/data_source/viam_data_source.dart' as _i23;
import '../data/viam/service/viam_service_impl.dart' as _i32;
import '../data/viam/store/token_box.dart' as _i15;
import '../data/viam/store/token_store_impl.dart' as _i17;
import '../domain/analytics/service/analytics_service.dart' as _i36;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i47;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    as _i39;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i40;
<<<<<<< HEAD
import '../domain/app_viam/service/app_viam_service.dart' as _i31;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i37;
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
=======
import '../domain/app_viam/service/app_viam_service.dart' as _i47;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i57;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i58;
>>>>>>> 243fd5c ([VIAM-110-location] Get locations)
=======
    as _i40;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i41;
import '../domain/app_viam/service/app_viam_service.dart' as _i48;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i58;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i60;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i59;
>>>>>>> 213278c ([VIAM-110-robots] get robots)
=======
    as _i42;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i43;
import '../domain/app_viam/service/app_viam_service.dart' as _i60;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i73;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i77;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i74;
>>>>>>> 492325b ([VIAM-110-connect] Add connect to robot)
=======
    as _i48;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i49;
import '../domain/app_viam/service/app_viam_service.dart' as _i66;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i79;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i83;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i80;
>>>>>>> 07df98d ([VIAM-110-connect] Store accessToken and code refactor)
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i5;
import '../domain/boat/service/boat_service.dart' as _i68;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i44;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i96;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i70;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i71;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i72;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i73;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i77;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i10;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i54;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i55;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart' as _i14;
import '../domain/camera/service/camera_service.dart' as _i65;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i75;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i76;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart' as _i84;
import '../domain/current_time/get_current_time_use_case.dart' as _i8;
import '../domain/movement/service/movement_service.dart' as _i68;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i77;
import '../domain/movement/usecase/get_position_use_case.dart' as _i78;
<<<<<<< HEAD
import '../domain/permissions/service/permissions_service.dart' as _i38;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart' as _i50;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart' as _i40;
=======
import '../domain/permissions/service/permissions_service.dart' as _i42;
=======
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i61;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i62;
=======
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i63;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i65;
>>>>>>> 213278c ([VIAM-110-robots] get robots)
=======
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i83;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i86;
>>>>>>> 492325b ([VIAM-110-connect] Add connect to robot)
=======
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i89;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i92;
>>>>>>> 07df98d ([VIAM-110-connect] Store accessToken and code refactor)
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i14;
import '../domain/camera/service/camera_service.dart' as _i56;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i74;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i76;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
<<<<<<< HEAD
    as _i89;
import '../domain/current_time/get_current_time_use_case.dart' as _i8;
<<<<<<< HEAD
<<<<<<< HEAD
import '../domain/movement/service/movement_service.dart' as _i75;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i84;
import '../domain/movement/usecase/get_position_use_case.dart' as _i85;
import '../domain/permissions/service/permissions_service.dart' as _i41;
>>>>>>> 243fd5c ([VIAM-110-location] Get locations)
=======
import '../domain/movement/service/movement_service.dart' as _i78;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i87;
import '../domain/movement/usecase/get_position_use_case.dart' as _i88;
import '../domain/permissions/service/permissions_service.dart' as _i42;
>>>>>>> 213278c ([VIAM-110-robots] get robots)
=======
import '../domain/movement/service/movement_service.dart' as _i51;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i72;
import '../domain/movement/usecase/get_position_use_case.dart' as _i75;
import '../domain/permissions/service/permissions_service.dart' as _i44;
>>>>>>> 492325b ([VIAM-110-connect] Add connect to robot)
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i69;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    as _i44;
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
import '../domain/resource/service/resource_service.dart' as _i70;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i79;
import '../domain/sensor/service/sensor_service_impl.dart' as _i72;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i80;
import '../domain/viam/service/viam_service.dart' as _i25;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i33;
import '../domain/viam/usecase/viam_connect_use_case.dart' as _i45;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i74;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i59;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart' as _i85;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart' as _i61;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i62;
import '../presentation/page/main/cubit/main_cubit.dart' as _i81;
import '../presentation/page/map/cubit/map_cubit.dart' as _i82;
<<<<<<< HEAD
import '../presentation/page/organizations/cubit/organizations_cubit.dart' as _i53;
=======
import '../presentation/page/organizations/cubit/organizations_cubit.dart'
    as _i41;
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i12;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i56;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i57;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart' as _i86;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart' as _i83;
import 'camera_permission_injectable.dart' as _i89;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i87;
import 'navigator_key_injectable.dart' as _i88;
import 'shared_preferences_injectable.dart' as _i90;
import 'uuid_injectable.dart' as _i91;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i92;
=======
    as _i43;
import '../domain/resource/service/resource_service.dart' as _i77;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i86;
import '../domain/sensor/service/sensor_service_impl.dart' as _i79;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i87;
import '../domain/viam/service/viam_service.dart' as _i26;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i34;
import '../domain/viam/usecase/viam_connect_use_case.dart' as _i44;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i81;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i66;
=======
    as _i44;
import '../domain/resource/service/resource_service.dart' as _i80;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i89;
import '../domain/sensor/service/sensor_service_impl.dart' as _i82;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i90;
import '../domain/viam/service/viam_service.dart' as _i27;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i35;
import '../domain/viam/usecase/viam_connect_use_case.dart' as _i45;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i84;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i69;
>>>>>>> 213278c ([VIAM-110-robots] get robots)
=======
    as _i46;
import '../domain/resource/service/resource_service.dart' as _i53;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i76;
import '../domain/sensor/service/sensor_service_impl.dart' as _i55;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i78;
import '../domain/viam/service/viam_service.dart' as _i28;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i36;
import '../domain/viam/usecase/viam_connect_use_case.dart' as _i57;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i96;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i92;
>>>>>>> 492325b ([VIAM-110-connect] Add connect to robot)
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i90;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
=======
>>>>>>> 07df98d ([VIAM-110-connect] Store accessToken and code refactor)
    as _i94;
import '../domain/current_time/get_current_time_use_case.dart' as _i8;
import '../domain/movement/service/movement_service.dart' as _i58;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i78;
import '../domain/movement/usecase/get_position_use_case.dart' as _i81;
import '../domain/permissions/service/permissions_service.dart' as _i50;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i75;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i52;
import '../domain/resource/service/resource_service.dart' as _i60;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i82;
import '../domain/sensor/service/sensor_service_impl.dart' as _i62;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i84;
import '../domain/viam/service/viam_service.dart' as _i31;
import '../domain/viam/store/token_store.dart' as _i16;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i39;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i42;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i43;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i46;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i101;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i97;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i95;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i99;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i100;
import '../presentation/page/main/cubit/main_cubit.dart' as _i86;
import '../presentation/page/map/cubit/map_cubit.dart' as _i87;
import '../presentation/page/organizations/cubit/organizations_cubit.dart'
    as _i88;
import '../presentation/page/organizations/widgets/location/cubit/location_cubit.dart'
<<<<<<< HEAD
    as _i79;
import '../presentation/page/organizations/widgets/robots/cubit/robots_cubit.dart'
    as _i84;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i12;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i87;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i88;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
<<<<<<< HEAD
    as _i96;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
<<<<<<< HEAD
    as _i90;
import 'camera_permission_injectable.dart' as _i96;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i94;
import 'navigator_key_injectable.dart' as _i95;
import 'shared_preferences_injectable.dart' as _i97;
import 'uuid_injectable.dart' as _i98;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i99;
>>>>>>> 243fd5c ([VIAM-110-location] Get locations)
=======
=======
>>>>>>> 492325b ([VIAM-110-connect] Add connect to robot)
    as _i93;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i85;
import 'camera_permission_injectable.dart' as _i99;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i97;
import 'navigator_key_injectable.dart' as _i98;
import 'shared_preferences_injectable.dart' as _i100;
import 'uuid_injectable.dart' as _i101;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i102;
>>>>>>> 213278c ([VIAM-110-robots] get robots)
=======
    as _i85;
import '../presentation/page/organizations/widgets/robots/cubit/robots_cubit.dart'
    as _i90;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i12;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i93;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i55;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i98;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i91;
import 'camera_permission_injectable.dart' as _i104;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i102;
import 'navigator_key_injectable.dart' as _i103;
import 'shared_preferences_injectable.dart' as _i105;
import 'uuid_injectable.dart' as _i106;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i107;
>>>>>>> 07df98d ([VIAM-110-connect] Store accessToken and code refactor)

const String _dev = 'dev';
const String _prod = 'prod';
const String _staging = 'staging';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final filePickerModule = _$FilePickerModule();
  final firebaseAnalyticsModule = _$FirebaseAnalyticsModule();
  final navigatorKeyModule = _$NavigatorKeyModule();
  final imagePickerModule = _$ImagePickerModule();
  final cameraPermissionModule = _$CameraPermissionModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  final uuidModule = _$UuidModule();
  final viamSdkModule = _$ViamSdkModule();
  final viamModule = _$ViamModule();
  gh.singleton<_i3.BoatBox>(_i4.CurrentBoatBoxImpl());
<<<<<<< HEAD
  gh.lazySingleton<_i5.BoatUpdateBroadcaster>(() => _i6.BoatChangeBroadcasterImpl());
  gh.factory<_i7.FilePicker>(() => filePickerModule.filePicker);
  gh.lazySingleton<_i8.FirebaseAnalytics>(
=======
  gh.lazySingleton<_i5.BoatUpdateBroadcaster>(
      () => _i6.BoatChangeBroadcasterImpl());
  gh.lazySingleton<_i7.FirebaseAnalytics>(
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
    () => firebaseAnalyticsModule.instance,
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
<<<<<<< HEAD
<<<<<<< HEAD
  gh.singleton<_i8.FirebaseAnalytics>(
    firebaseAnalyticsModule.testInstance,
    registerFor: {_test},
  );
  gh.factory<_i9.GetCurrentTimeUseCase>(() => _i9.GetCurrentTimeUseCase());
  gh.singleton<_i10.GlobalKey<_i10.NavigatorState>>(navigatorKeyModule.navigatorKey());
  gh.factory<_i11.ImagePicker>(() => imagePickerModule.imagePicker);
  gh.factory<_i12.LocalPhotoDataSource>(() => _i12.LocalPhotoDataSource(
        get<_i11.ImagePicker>(),
        get<_i7.FilePicker>(),
      ));
  gh.factory<_i13.LocalPhotoService>(() => _i14.LocalPhotoServiceImpl(
        get<_i12.LocalPhotoDataSource>(),
        get<_i3.BoatBox>(),
      ));
  gh.factory<_i15.NotifyBoatNameUpdateUseCase>(
      () => _i15.NotifyBoatNameUpdateUseCase(get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i16.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i17.ScanQrCubit>(() => _i17.ScanQrCubit());
  await gh.factoryAsync<_i18.SharedPreferences>(
=======
=======
  gh.singleton<_i7.FirebaseAnalytics>(
    firebaseAnalyticsModule.testInstance,
    registerFor: {_test},
  );
>>>>>>> 213278c ([VIAM-110-robots] get robots)
  gh.factory<_i8.GetCurrentTimeUseCase>(() => _i8.GetCurrentTimeUseCase());
  gh.singleton<_i9.GlobalKey<_i9.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i10.NotifyBoatNameUpdateUseCase>(
      () => _i10.NotifyBoatNameUpdateUseCase(get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i11.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i12.ScanQrCubit>(() => _i12.ScanQrCubit());
  await gh.factoryAsync<_i13.SharedPreferences>(
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
<<<<<<< HEAD
  gh.factory<_i19.SubscribeToBoatUpdateStreamUseCase>(
      () => _i19.SubscribeToBoatUpdateStreamUseCase(get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i15.Uuid>(uuidModule.uuid);
  gh.singleton<_i16.Viam>(viamSdkModule.viam);
<<<<<<< HEAD
<<<<<<< HEAD
  gh.factory<_i17.ViamAppAppDataSource>(() => _i17.ViamAppAppDataSource(get<_i16.Viam>()));
  gh.factory<_i18.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i18.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i19.ViamCameraDataToViamAppCameraDataMapper>(() => _i19.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i20.ViamDataSource>(() => _i20.ViamDataSource(get<_i16.Viam>()));
  gh.factory<_i21.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i21.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i22.ViamOrganizationToViamAppOrganization>(() => _i22.ViamOrganizationToViamAppOrganization());
  gh.factory<_i23.ViamPositionToViamAppPositionMapper>(() => _i23.ViamPositionToViamAppPositionMapper());
  gh.factory<_i24.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i24.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i25.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i25.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i26.ViamService>(() => _i27.ViamServiceImpl(get<_i20.ViamDataSource>()));
  gh.factory<_i28.AnalyticsDataSink>(() => _i28.AnalyticsDataSinkImpl(get<_i7.FirebaseAnalytics>()));
  gh.factory<_i29.AnalyticsService>(() => _i30.AnalyticsServiceImpl(get<_i28.AnalyticsDataSink>()));
  gh.factory<_i31.AuthenticateUseCase>(() => _i31.AuthenticateUseCase(get<_i26.ViamService>()));
  gh.factory<_i32.CameraPermissionDataSource>(() => _i32.CameraPermissionDataSource(get<_i11.Permission>()));
  gh.factory<_i33.CurrentBoatStore>(() => _i34.SharedPreferencesCurrentBoatStore(get<_i13.SharedPreferences>()));
  gh.factory<_i35.LogAddBoatEventUseCase>(() => _i35.LogAddBoatEventUseCase(get<_i29.AnalyticsService>()));
  gh.factory<_i36.LogDeleteBoatEventUseCase>(() => _i36.LogDeleteBoatEventUseCase(get<_i29.AnalyticsService>()));
  gh.factory<_i37.LogOpenAppEventUseCase>(() => _i37.LogOpenAppEventUseCase(get<_i29.AnalyticsService>()));
  gh.lazySingleton<_i38.PermissionsService>(() => _i39.PermissionsServiceImpl(get<_i32.CameraPermissionDataSource>()));
  gh.factory<_i40.RequestCameraPermissionUseCase>(
      () => _i40.RequestCameraPermissionUseCase(get<_i38.PermissionsService>()));
  gh.lazySingleton<_i41.ViamAppAppService>(() => _i42.ViamAppAppServiceImpl(
        get<_i17.ViamAppAppDataSource>(),
        get<_i22.ViamOrganizationToViamAppOrganization>(),
      ));
  gh.factory<_i43.ViamConnectUseCase>(() => _i43.ViamConnectUseCase(get<_i26.ViamService>()));
  gh.factory<_i44.BoatService>(() => _i45.BoatServiceImpl(
=======
  gh.factory<_i17.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i17.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i18.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i18.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i19.ViamDataSource>(() => _i19.ViamDataSource(get<_i16.Viam>()));
  gh.factory<_i20.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i20.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i21.ViamLocationOrganizationToViamAppLocationOrganizationMapper>(
      () => _i21.ViamLocationOrganizationToViamAppLocationOrganizationMapper());
  gh.factory<_i22.ViamOrganizationToViamAppOrganization>(
      () => _i22.ViamOrganizationToViamAppOrganization());
  gh.factory<_i23.ViamPositionToViamAppPositionMapper>(
      () => _i23.ViamPositionToViamAppPositionMapper());
  gh.factory<_i24.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i24.ViamResourceNameToViamAppResourceNameMapper());
<<<<<<< HEAD
  gh.factory<_i25.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i25.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i26.ViamService>(
      () => _i27.ViamServiceImpl(get<_i19.ViamDataSource>()));
  gh.factory<_i28.ViamSharedSecretStateToViamAppSharedSecretState>(
      () => _i28.ViamSharedSecretStateToViamAppSharedSecretState());
  gh.factory<_i29.ViamSharedSecretToViamAppSharedSecretMapper>(() =>
      _i29.ViamSharedSecretToViamAppSharedSecretMapper(
          get<_i28.ViamSharedSecretStateToViamAppSharedSecretState>()));
  gh.factory<_i30.AnalyticsDataSink>(
      () => _i30.AnalyticsDataSinkImpl(get<_i7.FirebaseAnalytics>()));
  gh.factory<_i31.AnalyticsService>(
      () => _i32.AnalyticsServiceImpl(get<_i30.AnalyticsDataSink>()));
  gh.factory<_i33.AppViamDataSource>(
      () => _i33.AppViamDataSource(get<_i16.Viam>()));
  gh.factory<_i34.AuthenticateUseCase>(
      () => _i34.AuthenticateUseCase(get<_i26.ViamService>()));
  gh.factory<_i35.CameraPermissionDataSource>(
      () => _i35.CameraPermissionDataSource(get<_i11.Permission>()));
  gh.factory<_i36.CurrentBoatStore>(() =>
      _i37.SharedPreferencesCurrentBoatStore(get<_i13.SharedPreferences>()));
  gh.factory<_i38.LogAddBoatEventUseCase>(
      () => _i38.LogAddBoatEventUseCase(get<_i31.AnalyticsService>()));
  gh.factory<_i39.LogDeleteBoatEventUseCase>(
      () => _i39.LogDeleteBoatEventUseCase(get<_i31.AnalyticsService>()));
  gh.factory<_i40.LogOpenAppEventUseCase>(
<<<<<<< HEAD
      () => _i40.LogOpenAppEventUseCase(get<_i28.AnalyticsService>()));
  gh.factory<_i41.OrganizationsCubit>(
      () => _i41.OrganizationsCubit(get<_i37.GetOrganizationsListUseCase>()));
  gh.lazySingleton<_i42.PermissionsService>(() =>
      _i43.PermissionsServiceImpl(get<_i34.CameraPermissionDataSource>()));
  gh.factory<_i44.RequestCameraPermissionUseCase>(() =>
      _i44.RequestCameraPermissionUseCase(get<_i42.PermissionsService>()));
  gh.factory<_i45.ViamConnectUseCase>(
      () => _i45.ViamConnectUseCase(get<_i25.ViamService>()));
  gh.factory<_i46.BoatService>(() => _i47.BoatServiceImpl(
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
        get<_i3.BoatBox>(),
        get<_i35.CurrentBoatStore>(),
      ));
<<<<<<< HEAD
  gh.factory<_i46.ChangeBoatNameUseCase>(() => _i46.ChangeBoatNameUseCase(get<_i44.BoatService>()));
  gh.factory<_i47.CheckConnectionUseCase>(() => _i47.CheckConnectionUseCase(get<_i44.BoatService>()));
  gh.factory<_i48.DeleteBoatUseCase>(() => _i48.DeleteBoatUseCase(get<_i44.BoatService>()));
  gh.factory<_i49.GetBoatsUseCase>(() => _i49.GetBoatsUseCase(get<_i44.BoatService>()));
  gh.factory<_i50.GetCameraPermissionStatusUseCase>(
      () => _i50.GetCameraPermissionStatusUseCase(get<_i38.PermissionsService>()));
  gh.factory<_i51.GetCurrentBoatIdUseCase>(() => _i51.GetCurrentBoatIdUseCase(get<_i44.BoatService>()));
  gh.factory<_i52.ListOrganizationsUseCase>(() => _i52.ListOrganizationsUseCase(get<_i41.ViamAppAppService>()));
  gh.factory<_i53.OrganizationsCubit>(() => _i53.OrganizationsCubit(get<_i52.ListOrganizationsUseCase>()));
  gh.factory<_i54.RemoveCurrentBoatIdUseCase>(() => _i54.RemoveCurrentBoatIdUseCase(get<_i44.BoatService>()));
  gh.factory<_i55.SetCurrentBoatIdUseCase>(() => _i55.SetCurrentBoatIdUseCase(get<_i44.BoatService>()));
=======
  gh.factory<_i48.ChangeBoatNameUseCase>(
      () => _i48.ChangeBoatNameUseCase(get<_i46.BoatService>()));
  gh.factory<_i49.CheckConnectionUseCase>(
      () => _i49.CheckConnectionUseCase(get<_i46.BoatService>()));
  gh.factory<_i50.DeleteBoatUseCase>(
      () => _i50.DeleteBoatUseCase(get<_i46.BoatService>()));
  gh.factory<_i51.GetBoatsUseCase>(
      () => _i51.GetBoatsUseCase(get<_i46.BoatService>()));
  gh.factory<_i52.GetCameraPermissionStatusUseCase>(() =>
      _i52.GetCameraPermissionStatusUseCase(get<_i42.PermissionsService>()));
  gh.factory<_i53.GetCurrentBoatIdUseCase>(
      () => _i53.GetCurrentBoatIdUseCase(get<_i46.BoatService>()));
  gh.factory<_i54.RemoveCurrentBoatIdUseCase>(
      () => _i54.RemoveCurrentBoatIdUseCase(get<_i46.BoatService>()));
  gh.factory<_i55.SetCurrentBoatIdUseCase>(
      () => _i55.SetCurrentBoatIdUseCase(get<_i46.BoatService>()));
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
  gh.factory<_i56.SettingsCubit>(() => _i56.SettingsCubit(
        get<_i51.GetBoatsUseCase>(),
        get<_i53.GetCurrentBoatIdUseCase>(),
        get<_i50.DeleteBoatUseCase>(),
=======
      () => _i40.LogOpenAppEventUseCase(get<_i31.AnalyticsService>()));
  gh.lazySingleton<_i41.PermissionsService>(() =>
      _i42.PermissionsServiceImpl(get<_i35.CameraPermissionDataSource>()));
  gh.factory<_i43.RequestCameraPermissionUseCase>(() =>
      _i43.RequestCameraPermissionUseCase(get<_i41.PermissionsService>()));
  gh.factory<_i44.ViamConnectUseCase>(
      () => _i44.ViamConnectUseCase(get<_i26.ViamService>()));
  gh.factory<_i45.ViamLocationAuthToViamAppLocationAuthMapper>(() =>
      _i45.ViamLocationAuthToViamAppLocationAuthMapper(
          get<_i29.ViamSharedSecretToViamAppSharedSecretMapper>()));
  gh.factory<_i46.ViamLocationToAppViamLocationMapper>(
      () => _i46.ViamLocationToAppViamLocationMapper(
            get<_i45.ViamLocationAuthToViamAppLocationAuthMapper>(),
=======
  gh.factory<_i25.ViamRobotToViamAppRobot>(
      () => _i25.ViamRobotToViamAppRobot());
  gh.factory<_i26.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i26.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i27.ViamService>(
      () => _i28.ViamServiceImpl(get<_i19.ViamDataSource>()));
  gh.factory<_i29.ViamSharedSecretStateToViamAppSharedSecretState>(
      () => _i29.ViamSharedSecretStateToViamAppSharedSecretState());
  gh.factory<_i30.ViamSharedSecretToViamAppSharedSecretMapper>(() =>
      _i30.ViamSharedSecretToViamAppSharedSecretMapper(
          get<_i29.ViamSharedSecretStateToViamAppSharedSecretState>()));
  gh.factory<_i31.AnalyticsDataSink>(
      () => _i31.AnalyticsDataSinkImpl(get<_i7.FirebaseAnalytics>()));
  gh.factory<_i32.AnalyticsService>(
      () => _i33.AnalyticsServiceImpl(get<_i31.AnalyticsDataSink>()));
  gh.factory<_i34.AppViamDataSource>(
      () => _i34.AppViamDataSource(get<_i16.Viam>()));
  gh.factory<_i35.AuthenticateUseCase>(
      () => _i35.AuthenticateUseCase(get<_i27.ViamService>()));
  gh.factory<_i36.CameraPermissionDataSource>(
      () => _i36.CameraPermissionDataSource(get<_i11.Permission>()));
  gh.factory<_i37.CurrentBoatStore>(() =>
      _i38.SharedPreferencesCurrentBoatStore(get<_i13.SharedPreferences>()));
  gh.factory<_i39.LogAddBoatEventUseCase>(
      () => _i39.LogAddBoatEventUseCase(get<_i32.AnalyticsService>()));
  gh.factory<_i40.LogDeleteBoatEventUseCase>(
      () => _i40.LogDeleteBoatEventUseCase(get<_i32.AnalyticsService>()));
  gh.factory<_i41.LogOpenAppEventUseCase>(
      () => _i41.LogOpenAppEventUseCase(get<_i32.AnalyticsService>()));
  gh.lazySingleton<_i42.PermissionsService>(() =>
      _i43.PermissionsServiceImpl(get<_i36.CameraPermissionDataSource>()));
  gh.factory<_i44.RequestCameraPermissionUseCase>(() =>
      _i44.RequestCameraPermissionUseCase(get<_i42.PermissionsService>()));
  gh.factory<_i45.ViamConnectUseCase>(
      () => _i45.ViamConnectUseCase(get<_i27.ViamService>()));
  gh.factory<_i46.ViamLocationAuthToViamAppLocationAuthMapper>(() =>
      _i46.ViamLocationAuthToViamAppLocationAuthMapper(
          get<_i30.ViamSharedSecretToViamAppSharedSecretMapper>()));
  gh.factory<_i47.ViamLocationToAppViamLocationMapper>(
      () => _i47.ViamLocationToAppViamLocationMapper(
            get<_i46.ViamLocationAuthToViamAppLocationAuthMapper>(),
>>>>>>> 213278c ([VIAM-110-robots] get robots)
            get<_i21.ViamLocationOrganizationToViamAppLocationOrganizationMapper>(),
=======
  gh.factory<_i17.ViamAppMovementSdkDataSource>(
      () => _i17.ViamAppMovementSdkDataSource(get<_i16.Viam>()));
  gh.factory<_i18.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i18.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i19.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i19.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i20.ViamDataSource>(() => _i20.ViamDataSource(get<_i16.Viam>()));
  gh.factory<_i21.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i21.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i22.ViamLocationOrganizationToViamAppLocationOrganizationMapper>(
      () => _i22.ViamLocationOrganizationToViamAppLocationOrganizationMapper());
  gh.factory<_i23.ViamOrganizationToViamAppOrganization>(
      () => _i23.ViamOrganizationToViamAppOrganization());
  gh.factory<_i24.ViamPositionToViamAppPositionMapper>(
      () => _i24.ViamPositionToViamAppPositionMapper());
  gh.factory<_i25.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i25.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i26.ViamRobotToViamAppRobot>(
      () => _i26.ViamRobotToViamAppRobot());
  gh.factory<_i27.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i27.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i28.ViamService>(
      () => _i29.ViamServiceImpl(get<_i20.ViamDataSource>()));
  gh.factory<_i30.ViamSharedSecretStateToViamAppSharedSecretState>(
      () => _i30.ViamSharedSecretStateToViamAppSharedSecretState());
  gh.factory<_i31.ViamSharedSecretToViamAppSharedSecretMapper>(() =>
      _i31.ViamSharedSecretToViamAppSharedSecretMapper(
          get<_i30.ViamSharedSecretStateToViamAppSharedSecretState>()));
  gh.factory<_i32.AnalyticsDataSink>(
      () => _i32.AnalyticsDataSinkImpl(get<_i7.FirebaseAnalytics>()));
  gh.factory<_i33.AnalyticsService>(
      () => _i34.AnalyticsServiceImpl(get<_i32.AnalyticsDataSink>()));
  gh.factory<_i35.AppViamDataSource>(
      () => _i35.AppViamDataSource(get<_i16.Viam>()));
  gh.factory<_i36.AuthenticateUseCase>(
      () => _i36.AuthenticateUseCase(get<_i28.ViamService>()));
  gh.factory<_i37.CameraDataSource>(
      () => _i37.CameraDataSource(get<_i16.Viam>()));
  gh.factory<_i38.CameraPermissionDataSource>(
      () => _i38.CameraPermissionDataSource(get<_i11.Permission>()));
  gh.factory<_i39.CurrentBoatStore>(() =>
      _i40.SharedPreferencesCurrentBoatStore(get<_i13.SharedPreferences>()));
  gh.factory<_i41.LogAddBoatEventUseCase>(
      () => _i41.LogAddBoatEventUseCase(get<_i33.AnalyticsService>()));
  gh.factory<_i42.LogDeleteBoatEventUseCase>(
      () => _i42.LogDeleteBoatEventUseCase(get<_i33.AnalyticsService>()));
  gh.factory<_i43.LogOpenAppEventUseCase>(
      () => _i43.LogOpenAppEventUseCase(get<_i33.AnalyticsService>()));
  gh.lazySingleton<_i44.PermissionsService>(() =>
      _i45.PermissionsServiceImpl(get<_i38.CameraPermissionDataSource>()));
  gh.factory<_i46.RequestCameraPermissionUseCase>(() =>
      _i46.RequestCameraPermissionUseCase(get<_i44.PermissionsService>()));
  gh.factory<_i47.ResourceDataSource>(
      () => _i47.ResourceDataSource(get<_i16.Viam>()));
  gh.factory<_i48.SensorDataSource>(
      () => _i48.SensorDataSource(get<_i16.Viam>()));
  gh.factory<_i49.ViamAppCameraService>(() => _i50.ViamAppCameraServiceImpl(
        get<_i37.CameraDataSource>(),
        get<_i19.ViamCameraDataToViamAppCameraDataMapper>(),
=======
  gh.factory<_i14.SubscribeToBoatUpdateStreamUseCase>(() =>
      _i14.SubscribeToBoatUpdateStreamUseCase(
          get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i15.TokenBox>(_i15.TokenBoxImpl());
  gh.factory<_i16.TokenStore>(() => _i17.TokenStoreImpl(get<_i15.TokenBox>()));
  gh.singleton<_i18.Uuid>(uuidModule.uuid);
  gh.singleton<_i19.Viam>(viamSdkModule.viam);
  gh.factory<_i20.ViamAppMovementSdkDataSource>(
      () => _i20.ViamAppMovementSdkDataSource(get<_i19.Viam>()));
  gh.factory<_i21.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i21.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i22.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i22.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i23.ViamDataSource>(() => _i23.ViamDataSource(get<_i19.Viam>()));
  gh.factory<_i24.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i24.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i25.ViamLocationOrganizationToViamAppLocationOrganizationMapper>(
      () => _i25.ViamLocationOrganizationToViamAppLocationOrganizationMapper());
  gh.factory<_i26.ViamOrganizationToViamAppOrganization>(
      () => _i26.ViamOrganizationToViamAppOrganization());
  gh.factory<_i27.ViamPositionToViamAppPositionMapper>(
      () => _i27.ViamPositionToViamAppPositionMapper());
  gh.factory<_i28.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i28.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i29.ViamRobotToViamAppRobot>(
      () => _i29.ViamRobotToViamAppRobot());
  gh.factory<_i30.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i30.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i31.ViamService>(() => _i32.ViamServiceImpl(
        get<_i23.ViamDataSource>(),
        get<_i16.TokenStore>(),
>>>>>>> 07df98d ([VIAM-110-connect] Store accessToken and code refactor)
      ));
  gh.factory<_i33.ViamSharedSecretStateToViamAppSharedSecretState>(
      () => _i33.ViamSharedSecretStateToViamAppSharedSecretState());
  gh.factory<_i34.ViamSharedSecretToViamAppSharedSecretMapper>(() =>
      _i34.ViamSharedSecretToViamAppSharedSecretMapper(
          get<_i33.ViamSharedSecretStateToViamAppSharedSecretState>()));
  gh.factory<_i35.AnalyticsDataSink>(
      () => _i35.AnalyticsDataSinkImpl(get<_i7.FirebaseAnalytics>()));
  gh.factory<_i36.AnalyticsService>(
      () => _i37.AnalyticsServiceImpl(get<_i35.AnalyticsDataSink>()));
  gh.factory<_i38.AppViamDataSource>(
      () => _i38.AppViamDataSource(get<_i19.Viam>()));
  gh.factory<_i39.AuthenticateUseCase>(
      () => _i39.AuthenticateUseCase(get<_i31.ViamService>()));
  gh.factory<_i40.CameraDataSource>(
      () => _i40.CameraDataSource(get<_i19.Viam>()));
  gh.factory<_i41.CameraPermissionDataSource>(
      () => _i41.CameraPermissionDataSource(get<_i11.Permission>()));
  gh.factory<_i42.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i42.CheckIfHasTokenAndRefreshTokenUseCase(get<_i16.TokenStore>()));
  gh.factory<_i43.ConnectToRobotUseCase>(
      () => _i43.ConnectToRobotUseCase(get<_i31.ViamService>()));
  gh.factory<_i44.CurrentBoatStore>(() =>
      _i45.SharedPreferencesCurrentBoatStore(get<_i13.SharedPreferences>()));
  gh.factory<_i46.GetTokenOrNullUseCase>(
      () => _i46.GetTokenOrNullUseCase(get<_i16.TokenStore>()));
  gh.factory<_i47.LogAddBoatEventUseCase>(
      () => _i47.LogAddBoatEventUseCase(get<_i36.AnalyticsService>()));
  gh.factory<_i48.LogDeleteBoatEventUseCase>(
      () => _i48.LogDeleteBoatEventUseCase(get<_i36.AnalyticsService>()));
  gh.factory<_i49.LogOpenAppEventUseCase>(
      () => _i49.LogOpenAppEventUseCase(get<_i36.AnalyticsService>()));
  gh.lazySingleton<_i50.PermissionsService>(() =>
      _i51.PermissionsServiceImpl(get<_i41.CameraPermissionDataSource>()));
  gh.factory<_i52.RequestCameraPermissionUseCase>(() =>
      _i52.RequestCameraPermissionUseCase(get<_i50.PermissionsService>()));
  gh.factory<_i53.ResourceDataSource>(
      () => _i53.ResourceDataSource(get<_i19.Viam>()));
  gh.factory<_i54.SensorDataSource>(
      () => _i54.SensorDataSource(get<_i19.Viam>()));
  gh.factory<_i55.SplashCubit>(() =>
      _i55.SplashCubit(get<_i42.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i56.ViamAppCameraService>(() => _i57.ViamAppCameraServiceImpl(
        get<_i40.CameraDataSource>(),
        get<_i22.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i58.ViamAppMovementService>(() => _i59.ViamAppMovementServiceImpl(
        get<_i20.ViamAppMovementSdkDataSource>(),
        get<_i21.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i27.ViamPositionToViamAppPositionMapper>(),
        get<_i24.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i60.ViamAppResourceService>(() => _i61.ViamAppResourceServiceImpl(
        get<_i53.ResourceDataSource>(),
        get<_i28.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
<<<<<<< HEAD
  gh.factory<_i57.ViamConnectUseCase>(
      () => _i57.ViamConnectUseCase(get<_i28.ViamService>()));
  gh.factory<_i58.ViamLocationAuthToViamAppLocationAuthMapper>(() =>
      _i58.ViamLocationAuthToViamAppLocationAuthMapper(
          get<_i31.ViamSharedSecretToViamAppSharedSecretMapper>()));
  gh.factory<_i59.ViamLocationToAppViamLocationMapper>(
      () => _i59.ViamLocationToAppViamLocationMapper(
            get<_i58.ViamLocationAuthToViamAppLocationAuthMapper>(),
            get<_i22.ViamLocationOrganizationToViamAppLocationOrganizationMapper>(),
>>>>>>> 492325b ([VIAM-110-connect] Add connect to robot)
=======
  gh.factory<_i62.ViamAppSensorService>(() => _i63.ViamAppSensorServiceImpl(
        get<_i54.SensorDataSource>(),
        get<_i21.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i30.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i64.ViamLocationAuthToViamAppLocationAuthMapper>(() =>
      _i64.ViamLocationAuthToViamAppLocationAuthMapper(
          get<_i34.ViamSharedSecretToViamAppSharedSecretMapper>()));
  gh.factory<_i65.ViamLocationToAppViamLocationMapper>(
      () => _i65.ViamLocationToAppViamLocationMapper(
            get<_i64.ViamLocationAuthToViamAppLocationAuthMapper>(),
            get<_i25.ViamLocationOrganizationToViamAppLocationOrganizationMapper>(),
>>>>>>> 07df98d ([VIAM-110-connect] Store accessToken and code refactor)
          ));
  gh.lazySingleton<_i66.AppViamService>(() => _i67.AppViamServiceImpl(
        get<_i38.AppViamDataSource>(),
        get<_i26.ViamOrganizationToViamAppOrganization>(),
        get<_i65.ViamLocationToAppViamLocationMapper>(),
        get<_i29.ViamRobotToViamAppRobot>(),
      ));
  gh.factory<_i68.BoatService>(() => _i69.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i44.CurrentBoatStore>(),
      ));
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  gh.factory<_i51.ChangeBoatNameUseCase>(
      () => _i51.ChangeBoatNameUseCase(get<_i49.BoatService>()));
  gh.factory<_i52.CheckConnectionUseCase>(
      () => _i52.CheckConnectionUseCase(get<_i49.BoatService>()));
  gh.factory<_i53.DeleteBoatUseCase>(
      () => _i53.DeleteBoatUseCase(get<_i49.BoatService>()));
  gh.factory<_i54.GetBoatsUseCase>(
      () => _i54.GetBoatsUseCase(get<_i49.BoatService>()));
  gh.factory<_i55.GetCameraPermissionStatusUseCase>(() =>
      _i55.GetCameraPermissionStatusUseCase(get<_i41.PermissionsService>()));
  gh.factory<_i56.GetCurrentBoatIdUseCase>(
      () => _i56.GetCurrentBoatIdUseCase(get<_i49.BoatService>()));
  gh.factory<_i57.GetLocationsUseCase>(
      () => _i57.GetLocationsUseCase(get<_i47.AppViamService>()));
  gh.factory<_i58.GetOrganizationsListUseCase>(
      () => _i58.GetOrganizationsListUseCase(get<_i47.AppViamService>()));
  gh.factory<_i59.LocationCubit>(
      () => _i59.LocationCubit(get<_i57.GetLocationsUseCase>()));
  gh.factory<_i60.OrganizationsCubit>(
      () => _i60.OrganizationsCubit(get<_i58.GetOrganizationsListUseCase>()));
  gh.factory<_i61.RemoveCurrentBoatIdUseCase>(
      () => _i61.RemoveCurrentBoatIdUseCase(get<_i49.BoatService>()));
  gh.factory<_i62.SetCurrentBoatIdUseCase>(
      () => _i62.SetCurrentBoatIdUseCase(get<_i49.BoatService>()));
  gh.factory<_i63.SettingsCubit>(() => _i63.SettingsCubit(
        get<_i54.GetBoatsUseCase>(),
        get<_i56.GetCurrentBoatIdUseCase>(),
        get<_i53.DeleteBoatUseCase>(),
>>>>>>> 243fd5c ([VIAM-110-location] Get locations)
        get<_i39.LogDeleteBoatEventUseCase>(),
        get<_i61.RemoveCurrentBoatIdUseCase>(),
        get<_i62.SetCurrentBoatIdUseCase>(),
=======
  gh.factory<_i52.ChangeBoatNameUseCase>(
      () => _i52.ChangeBoatNameUseCase(get<_i50.BoatService>()));
  gh.factory<_i53.CheckConnectionUseCase>(
      () => _i53.CheckConnectionUseCase(get<_i50.BoatService>()));
  gh.factory<_i54.DeleteBoatUseCase>(
      () => _i54.DeleteBoatUseCase(get<_i50.BoatService>()));
  gh.factory<_i55.GetBoatsUseCase>(
      () => _i55.GetBoatsUseCase(get<_i50.BoatService>()));
  gh.factory<_i56.GetCameraPermissionStatusUseCase>(() =>
      _i56.GetCameraPermissionStatusUseCase(get<_i42.PermissionsService>()));
  gh.factory<_i57.GetCurrentBoatIdUseCase>(
      () => _i57.GetCurrentBoatIdUseCase(get<_i50.BoatService>()));
  gh.factory<_i58.GetLocationsUseCase>(
      () => _i58.GetLocationsUseCase(get<_i48.AppViamService>()));
  gh.factory<_i59.GetOrganizationsListUseCase>(
      () => _i59.GetOrganizationsListUseCase(get<_i48.AppViamService>()));
  gh.factory<_i60.GetRobotsUseCase>(
      () => _i60.GetRobotsUseCase(get<_i48.AppViamService>()));
  gh.factory<_i61.LocationCubit>(
      () => _i61.LocationCubit(get<_i58.GetLocationsUseCase>()));
  gh.factory<_i62.OrganizationsCubit>(
      () => _i62.OrganizationsCubit(get<_i59.GetOrganizationsListUseCase>()));
  gh.factory<_i63.RemoveCurrentBoatIdUseCase>(
      () => _i63.RemoveCurrentBoatIdUseCase(get<_i50.BoatService>()));
  gh.factory<_i64.RobotsCubit>(
      () => _i64.RobotsCubit(get<_i60.GetRobotsUseCase>()));
  gh.factory<_i65.SetCurrentBoatIdUseCase>(
      () => _i65.SetCurrentBoatIdUseCase(get<_i50.BoatService>()));
  gh.factory<_i66.SettingsCubit>(() => _i66.SettingsCubit(
        get<_i55.GetBoatsUseCase>(),
        get<_i57.GetCurrentBoatIdUseCase>(),
        get<_i54.DeleteBoatUseCase>(),
        get<_i40.LogDeleteBoatEventUseCase>(),
        get<_i63.RemoveCurrentBoatIdUseCase>(),
        get<_i65.SetCurrentBoatIdUseCase>(),
>>>>>>> 213278c ([VIAM-110-robots] get robots)
=======
  gh.factory<_i64.ChangeBoatNameUseCase>(
      () => _i64.ChangeBoatNameUseCase(get<_i62.BoatService>()));
  gh.factory<_i65.CheckConnectionUseCase>(
      () => _i65.CheckConnectionUseCase(get<_i62.BoatService>()));
  gh.factory<_i66.DeleteBoatUseCase>(
      () => _i66.DeleteBoatUseCase(get<_i62.BoatService>()));
  gh.factory<_i67.GetBoatsUseCase>(
      () => _i67.GetBoatsUseCase(get<_i62.BoatService>()));
  gh.factory<_i68.GetCameraDataUseCase>(
      () => _i68.GetCameraDataUseCase(get<_i49.ViamAppCameraService>()));
  gh.factory<_i69.GetCameraPermissionStatusUseCase>(() =>
      _i69.GetCameraPermissionStatusUseCase(get<_i44.PermissionsService>()));
  gh.factory<_i70.GetCameraVideoUseCase>(
      () => _i70.GetCameraVideoUseCase(get<_i49.ViamAppCameraService>()));
  gh.factory<_i71.GetCurrentBoatIdUseCase>(
      () => _i71.GetCurrentBoatIdUseCase(get<_i62.BoatService>()));
  gh.factory<_i72.GetLinearVelocityUseCase>(
      () => _i72.GetLinearVelocityUseCase(get<_i51.ViamAppMovementService>()));
  gh.factory<_i73.GetLocationsUseCase>(
      () => _i73.GetLocationsUseCase(get<_i60.AppViamService>()));
  gh.factory<_i74.GetOrganizationsListUseCase>(
      () => _i74.GetOrganizationsListUseCase(get<_i60.AppViamService>()));
  gh.factory<_i75.GetPostionUseCase>(
      () => _i75.GetPostionUseCase(get<_i51.ViamAppMovementService>()));
  gh.factory<_i76.GetResourceNamesUseCase>(
      () => _i76.GetResourceNamesUseCase(get<_i53.ViamAppResourceService>()));
  gh.factory<_i77.GetRobotsUseCase>(
      () => _i77.GetRobotsUseCase(get<_i60.AppViamService>()));
  gh.factory<_i78.GetSensorDataUseCase>(
      () => _i78.GetSensorDataUseCase(get<_i55.ViamAppSensorService>()));
  gh.factory<_i79.LocationCubit>(
      () => _i79.LocationCubit(get<_i73.GetLocationsUseCase>()));
  gh.factory<_i80.MainCubit>(
      () => _i80.MainCubit(get<_i76.GetResourceNamesUseCase>()));
  gh.factory<_i81.MapCubit>(() => _i81.MapCubit(
        get<_i75.GetPostionUseCase>(),
        get<_i78.GetSensorDataUseCase>(),
=======
  gh.factory<_i70.ChangeBoatNameUseCase>(
      () => _i70.ChangeBoatNameUseCase(get<_i68.BoatService>()));
  gh.factory<_i71.CheckConnectionUseCase>(
      () => _i71.CheckConnectionUseCase(get<_i68.BoatService>()));
  gh.factory<_i72.DeleteBoatUseCase>(
      () => _i72.DeleteBoatUseCase(get<_i68.BoatService>()));
  gh.factory<_i73.GetBoatsUseCase>(
      () => _i73.GetBoatsUseCase(get<_i68.BoatService>()));
  gh.factory<_i74.GetCameraDataUseCase>(
      () => _i74.GetCameraDataUseCase(get<_i56.ViamAppCameraService>()));
  gh.factory<_i75.GetCameraPermissionStatusUseCase>(() =>
      _i75.GetCameraPermissionStatusUseCase(get<_i50.PermissionsService>()));
  gh.factory<_i76.GetCameraVideoUseCase>(
      () => _i76.GetCameraVideoUseCase(get<_i56.ViamAppCameraService>()));
  gh.factory<_i77.GetCurrentBoatIdUseCase>(
      () => _i77.GetCurrentBoatIdUseCase(get<_i68.BoatService>()));
  gh.factory<_i78.GetLinearVelocityUseCase>(
      () => _i78.GetLinearVelocityUseCase(get<_i58.ViamAppMovementService>()));
  gh.factory<_i79.GetLocationsUseCase>(
      () => _i79.GetLocationsUseCase(get<_i66.AppViamService>()));
  gh.factory<_i80.GetOrganizationsListUseCase>(
      () => _i80.GetOrganizationsListUseCase(get<_i66.AppViamService>()));
  gh.factory<_i81.GetPostionUseCase>(
      () => _i81.GetPostionUseCase(get<_i58.ViamAppMovementService>()));
  gh.factory<_i82.GetResourceNamesUseCase>(
      () => _i82.GetResourceNamesUseCase(get<_i60.ViamAppResourceService>()));
  gh.factory<_i83.GetRobotsUseCase>(
      () => _i83.GetRobotsUseCase(get<_i66.AppViamService>()));
  gh.factory<_i84.GetSensorDataUseCase>(
      () => _i84.GetSensorDataUseCase(get<_i62.ViamAppSensorService>()));
  gh.factory<_i85.LocationCubit>(
      () => _i85.LocationCubit(get<_i79.GetLocationsUseCase>()));
  gh.factory<_i86.MainCubit>(
      () => _i86.MainCubit(get<_i82.GetResourceNamesUseCase>()));
  gh.factory<_i87.MapCubit>(() => _i87.MapCubit(
        get<_i81.GetPostionUseCase>(),
        get<_i84.GetSensorDataUseCase>(),
>>>>>>> 07df98d ([VIAM-110-connect] Store accessToken and code refactor)
        get<_i8.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i88.OrganizationsCubit>(() => _i88.OrganizationsCubit(
        get<_i80.GetOrganizationsListUseCase>(),
        get<_i43.ConnectToRobotUseCase>(),
        get<_i46.GetTokenOrNullUseCase>(),
      ));
  gh.factory<_i89.RemoveCurrentBoatIdUseCase>(
      () => _i89.RemoveCurrentBoatIdUseCase(get<_i68.BoatService>()));
  gh.factory<_i90.RobotsCubit>(() => _i90.RobotsCubit(
        get<_i83.GetRobotsUseCase>(),
        get<_i43.ConnectToRobotUseCase>(),
        get<_i46.GetTokenOrNullUseCase>(),
      ));
  gh.factory<_i91.SensorTileCubit>(() => _i91.SensorTileCubit(
        get<_i84.GetSensorDataUseCase>(),
        get<_i78.GetLinearVelocityUseCase>(),
        get<_i8.GetCurrentTimeUseCase>(),
      ));
<<<<<<< HEAD
  gh.factory<_i86.SetCurrentBoatIdUseCase>(
      () => _i86.SetCurrentBoatIdUseCase(get<_i62.BoatService>()));
  gh.factory<_i87.SettingsCubit>(() => _i87.SettingsCubit(
        get<_i67.GetBoatsUseCase>(),
        get<_i71.GetCurrentBoatIdUseCase>(),
        get<_i66.DeleteBoatUseCase>(),
        get<_i42.LogDeleteBoatEventUseCase>(),
        get<_i83.RemoveCurrentBoatIdUseCase>(),
        get<_i86.SetCurrentBoatIdUseCase>(),
>>>>>>> 492325b ([VIAM-110-connect] Add connect to robot)
=======
  gh.factory<_i92.SetCurrentBoatIdUseCase>(
      () => _i92.SetCurrentBoatIdUseCase(get<_i68.BoatService>()));
  gh.factory<_i93.SettingsCubit>(() => _i93.SettingsCubit(
        get<_i73.GetBoatsUseCase>(),
        get<_i77.GetCurrentBoatIdUseCase>(),
        get<_i72.DeleteBoatUseCase>(),
        get<_i48.LogDeleteBoatEventUseCase>(),
        get<_i89.RemoveCurrentBoatIdUseCase>(),
        get<_i92.SetCurrentBoatIdUseCase>(),
>>>>>>> 07df98d ([VIAM-110-connect] Store accessToken and code refactor)
        get<_i14.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i94.SubscribeToCameraStreamUseCase>(() =>
      _i94.SubscribeToCameraStreamUseCase(get<_i56.ViamAppCameraService>()));
  await gh.singletonAsync<_i19.ViamSdk>(
    () => viamModule.getViamSdk(
      get<_i73.GetBoatsUseCase>(),
      get<_i77.GetCurrentBoatIdUseCase>(),
    ),
    preResolve: true,
  );
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  gh.factory<_i58.AddNewBoatUseCase>(() => _i58.AddNewBoatUseCase(get<_i44.BoatService>()));
=======
  gh.factory<_i58.AddNewBoatUseCase>(
      () => _i58.AddNewBoatUseCase(get<_i46.BoatService>()));
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
  gh.factory<_i59.BoatListCubit>(() => _i59.BoatListCubit(
        get<_i51.GetBoatsUseCase>(),
        get<_i53.GetCurrentBoatIdUseCase>(),
        get<_i55.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i60.CameraDataSource>(() => _i60.CameraDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i61.ChangeBoatNameCubit>(() => _i61.ChangeBoatNameCubit(
        get<_i48.ChangeBoatNameUseCase>(),
=======
  gh.factory<_i65.AddNewBoatUseCase>(
      () => _i65.AddNewBoatUseCase(get<_i49.BoatService>()));
  gh.factory<_i66.BoatListCubit>(() => _i66.BoatListCubit(
        get<_i54.GetBoatsUseCase>(),
        get<_i56.GetCurrentBoatIdUseCase>(),
        get<_i62.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i67.CameraDataSource>(
      () => _i67.CameraDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i68.ChangeBoatNameCubit>(() => _i68.ChangeBoatNameCubit(
        get<_i51.ChangeBoatNameUseCase>(),
>>>>>>> 243fd5c ([VIAM-110-location] Get locations)
=======
  gh.factory<_i68.AddNewBoatUseCase>(
      () => _i68.AddNewBoatUseCase(get<_i50.BoatService>()));
  gh.factory<_i69.BoatListCubit>(() => _i69.BoatListCubit(
        get<_i55.GetBoatsUseCase>(),
        get<_i57.GetCurrentBoatIdUseCase>(),
        get<_i65.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i70.CameraDataSource>(
      () => _i70.CameraDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i71.ChangeBoatNameCubit>(() => _i71.ChangeBoatNameCubit(
        get<_i52.ChangeBoatNameUseCase>(),
>>>>>>> 213278c ([VIAM-110-robots] get robots)
=======
  gh.factory<_i90.WebrtcCameraCubit>(() => _i90.WebrtcCameraCubit(
        get<_i70.GetCameraVideoUseCase>(),
        get<_i89.SubscribeToCameraStreamUseCase>(),
=======
  gh.factory<_i95.WebrtcCameraCubit>(() => _i95.WebrtcCameraCubit(
        get<_i76.GetCameraVideoUseCase>(),
        get<_i94.SubscribeToCameraStreamUseCase>(),
>>>>>>> 07df98d ([VIAM-110-connect] Store accessToken and code refactor)
        get<_i8.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i96.AddNewBoatUseCase>(
      () => _i96.AddNewBoatUseCase(get<_i68.BoatService>()));
  gh.factory<_i97.BoatListCubit>(() => _i97.BoatListCubit(
        get<_i73.GetBoatsUseCase>(),
        get<_i77.GetCurrentBoatIdUseCase>(),
        get<_i92.SetCurrentBoatIdUseCase>(),
      ));
<<<<<<< HEAD
  gh.factory<_i93.CameraTileCubit>(
      () => _i93.CameraTileCubit(get<_i68.GetCameraDataUseCase>()));
  gh.factory<_i94.ChangeBoatNameCubit>(() => _i94.ChangeBoatNameCubit(
        get<_i64.ChangeBoatNameUseCase>(),
>>>>>>> 492325b ([VIAM-110-connect] Add connect to robot)
=======
  gh.factory<_i98.CameraTileCubit>(
      () => _i98.CameraTileCubit(get<_i74.GetCameraDataUseCase>()));
  gh.factory<_i99.ChangeBoatNameCubit>(() => _i99.ChangeBoatNameCubit(
        get<_i70.ChangeBoatNameUseCase>(),
>>>>>>> 07df98d ([VIAM-110-connect] Store accessToken and code refactor)
        get<_i10.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i100.DashboardCubit>(() => _i100.DashboardCubit(
        get<_i73.GetBoatsUseCase>(),
        get<_i77.GetCurrentBoatIdUseCase>(),
        get<_i14.SubscribeToBoatUpdateStreamUseCase>(),
      ));
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  gh.factory<_i63.ResourceDataSource>(() => _i63.ResourceDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i64.SensorDataSource>(() => _i64.SensorDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i65.ViamAppCameraService>(() => _i66.ViamAppCameraServiceImpl(
        get<_i60.CameraDataSource>(),
        get<_i18.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i67.ViamAppMovementSdkDataSource>(() => _i67.ViamAppMovementSdkDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i68.ViamAppMovementService>(() => _i69.ViamAppMovementServiceImpl(
        get<_i67.ViamAppMovementSdkDataSource>(),
=======
  gh.factory<_i70.ResourceDataSource>(
      () => _i70.ResourceDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i71.SensorDataSource>(
      () => _i71.SensorDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i72.ViamAppCameraService>(() => _i73.ViamAppCameraServiceImpl(
        get<_i67.CameraDataSource>(),
        get<_i18.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i74.ViamAppMovementSdkDataSource>(
      () => _i74.ViamAppMovementSdkDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i75.ViamAppMovementService>(() => _i76.ViamAppMovementServiceImpl(
        get<_i74.ViamAppMovementSdkDataSource>(),
>>>>>>> 243fd5c ([VIAM-110-location] Get locations)
=======
  gh.factory<_i73.ResourceDataSource>(
      () => _i73.ResourceDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i74.SensorDataSource>(
      () => _i74.SensorDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i75.ViamAppCameraService>(() => _i76.ViamAppCameraServiceImpl(
        get<_i70.CameraDataSource>(),
        get<_i18.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i77.ViamAppMovementSdkDataSource>(
      () => _i77.ViamAppMovementSdkDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i78.ViamAppMovementService>(() => _i79.ViamAppMovementServiceImpl(
        get<_i77.ViamAppMovementSdkDataSource>(),
>>>>>>> 213278c ([VIAM-110-robots] get robots)
        get<_i17.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i23.ViamPositionToViamAppPositionMapper>(),
        get<_i20.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i80.ViamAppResourceService>(() => _i81.ViamAppResourceServiceImpl(
        get<_i73.ResourceDataSource>(),
        get<_i24.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i82.ViamAppSensorService>(() => _i83.ViamAppSensorServiceImpl(
        get<_i74.SensorDataSource>(),
        get<_i17.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i26.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i84.AddBoatCubit>(() => _i84.AddBoatCubit(
        get<_i68.AddNewBoatUseCase>(),
        get<_i53.CheckConnectionUseCase>(),
        get<_i65.SetCurrentBoatIdUseCase>(),
        get<_i56.GetCameraPermissionStatusUseCase>(),
        get<_i44.RequestCameraPermissionUseCase>(),
        get<_i39.LogAddBoatEventUseCase>(),
=======
  gh.factory<_i96.AddBoatCubit>(() => _i96.AddBoatCubit(
        get<_i91.AddNewBoatUseCase>(),
        get<_i65.CheckConnectionUseCase>(),
        get<_i86.SetCurrentBoatIdUseCase>(),
        get<_i69.GetCameraPermissionStatusUseCase>(),
        get<_i46.RequestCameraPermissionUseCase>(),
        get<_i41.LogAddBoatEventUseCase>(),
>>>>>>> 492325b ([VIAM-110-connect] Add connect to robot)
        get<_i15.Uuid>(),
        get<_i67.GetBoatsUseCase>(),
        get<_i36.AuthenticateUseCase>(),
=======
  gh.factory<_i101.AddBoatCubit>(() => _i101.AddBoatCubit(
        get<_i96.AddNewBoatUseCase>(),
        get<_i71.CheckConnectionUseCase>(),
        get<_i92.SetCurrentBoatIdUseCase>(),
        get<_i75.GetCameraPermissionStatusUseCase>(),
        get<_i52.RequestCameraPermissionUseCase>(),
        get<_i47.LogAddBoatEventUseCase>(),
        get<_i18.Uuid>(),
        get<_i73.GetBoatsUseCase>(),
        get<_i39.AuthenticateUseCase>(),
>>>>>>> 07df98d ([VIAM-110-connect] Store accessToken and code refactor)
      ));
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  gh.factory<_i75.GetCameraDataUseCase>(() => _i75.GetCameraDataUseCase(get<_i65.ViamAppCameraService>()));
  gh.factory<_i76.GetCameraVideoUseCase>(() => _i76.GetCameraVideoUseCase(get<_i65.ViamAppCameraService>()));
  gh.factory<_i77.GetLinearVelocityUseCase>(() => _i77.GetLinearVelocityUseCase(get<_i68.ViamAppMovementService>()));
  gh.factory<_i78.GetPostionUseCase>(() => _i78.GetPostionUseCase(get<_i68.ViamAppMovementService>()));
  gh.factory<_i79.GetResourceNamesUseCase>(() => _i79.GetResourceNamesUseCase(get<_i70.ViamAppResourceService>()));
  gh.factory<_i80.GetSensorDataUseCase>(() => _i80.GetSensorDataUseCase(get<_i72.ViamAppSensorService>()));
  gh.factory<_i81.MainCubit>(() => _i81.MainCubit(get<_i79.GetResourceNamesUseCase>()));
  gh.factory<_i82.MapCubit>(() => _i82.MapCubit(
        get<_i78.GetPostionUseCase>(),
        get<_i80.GetSensorDataUseCase>(),
=======
  gh.factory<_i82.GetCameraDataUseCase>(
      () => _i82.GetCameraDataUseCase(get<_i72.ViamAppCameraService>()));
  gh.factory<_i83.GetCameraVideoUseCase>(
      () => _i83.GetCameraVideoUseCase(get<_i72.ViamAppCameraService>()));
  gh.factory<_i84.GetLinearVelocityUseCase>(
      () => _i84.GetLinearVelocityUseCase(get<_i75.ViamAppMovementService>()));
  gh.factory<_i85.GetPostionUseCase>(
      () => _i85.GetPostionUseCase(get<_i75.ViamAppMovementService>()));
  gh.factory<_i86.GetResourceNamesUseCase>(
      () => _i86.GetResourceNamesUseCase(get<_i77.ViamAppResourceService>()));
  gh.factory<_i87.GetSensorDataUseCase>(
      () => _i87.GetSensorDataUseCase(get<_i79.ViamAppSensorService>()));
  gh.factory<_i88.MainCubit>(
      () => _i88.MainCubit(get<_i86.GetResourceNamesUseCase>()));
  gh.factory<_i89.MapCubit>(() => _i89.MapCubit(
        get<_i85.GetPostionUseCase>(),
        get<_i87.GetSensorDataUseCase>(),
>>>>>>> 243fd5c ([VIAM-110-location] Get locations)
=======
  gh.factory<_i85.GetCameraDataUseCase>(
      () => _i85.GetCameraDataUseCase(get<_i75.ViamAppCameraService>()));
  gh.factory<_i86.GetCameraVideoUseCase>(
      () => _i86.GetCameraVideoUseCase(get<_i75.ViamAppCameraService>()));
  gh.factory<_i87.GetLinearVelocityUseCase>(
      () => _i87.GetLinearVelocityUseCase(get<_i78.ViamAppMovementService>()));
  gh.factory<_i88.GetPostionUseCase>(
      () => _i88.GetPostionUseCase(get<_i78.ViamAppMovementService>()));
  gh.factory<_i89.GetResourceNamesUseCase>(
      () => _i89.GetResourceNamesUseCase(get<_i80.ViamAppResourceService>()));
  gh.factory<_i90.GetSensorDataUseCase>(
      () => _i90.GetSensorDataUseCase(get<_i82.ViamAppSensorService>()));
  gh.factory<_i91.MainCubit>(
      () => _i91.MainCubit(get<_i89.GetResourceNamesUseCase>()));
  gh.factory<_i92.MapCubit>(() => _i92.MapCubit(
        get<_i88.GetPostionUseCase>(),
        get<_i90.GetSensorDataUseCase>(),
>>>>>>> 213278c ([VIAM-110-robots] get robots)
        get<_i8.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i93.SensorTileCubit>(() => _i93.SensorTileCubit(
        get<_i90.GetSensorDataUseCase>(),
        get<_i87.GetLinearVelocityUseCase>(),
        get<_i8.GetCurrentTimeUseCase>(),
      ));
<<<<<<< HEAD
<<<<<<< HEAD
  gh.factory<_i84.SubscribeToCameraStreamUseCase>(
      () => _i84.SubscribeToCameraStreamUseCase(get<_i65.ViamAppCameraService>()));
  gh.factory<_i85.WebrtcCameraCubit>(() => _i85.WebrtcCameraCubit(
        get<_i76.GetCameraVideoUseCase>(),
        get<_i84.SubscribeToCameraStreamUseCase>(),
        get<_i8.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i86.CameraTileCubit>(() => _i86.CameraTileCubit(get<_i75.GetCameraDataUseCase>()));
=======
  gh.factory<_i91.SubscribeToCameraStreamUseCase>(() =>
      _i91.SubscribeToCameraStreamUseCase(get<_i72.ViamAppCameraService>()));
  gh.factory<_i92.WebrtcCameraCubit>(() => _i92.WebrtcCameraCubit(
        get<_i83.GetCameraVideoUseCase>(),
        get<_i91.SubscribeToCameraStreamUseCase>(),
        get<_i8.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i93.CameraTileCubit>(
      () => _i93.CameraTileCubit(get<_i82.GetCameraDataUseCase>()));
>>>>>>> 243fd5c ([VIAM-110-location] Get locations)
=======
  gh.factory<_i94.SubscribeToCameraStreamUseCase>(() =>
      _i94.SubscribeToCameraStreamUseCase(get<_i75.ViamAppCameraService>()));
  gh.factory<_i95.WebrtcCameraCubit>(() => _i95.WebrtcCameraCubit(
        get<_i86.GetCameraVideoUseCase>(),
        get<_i94.SubscribeToCameraStreamUseCase>(),
        get<_i8.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i96.CameraTileCubit>(
      () => _i96.CameraTileCubit(get<_i85.GetCameraDataUseCase>()));
>>>>>>> 213278c ([VIAM-110-robots] get robots)
=======
>>>>>>> 492325b ([VIAM-110-connect] Add connect to robot)
  return get;
}

class _$FirebaseAnalyticsModule extends _i102.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i103.NavigatorKeyModule {}

class _$CameraPermissionModule extends _i104.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i105.SharedPreferencesModule {}

class _$UuidModule extends _i106.UuidModule {}

class _$ViamSdkModule extends _i107.ViamSdkModule {}

class _$ViamModule extends _i107.ViamModule {}
