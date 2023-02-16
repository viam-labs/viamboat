import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/map/body/map_body.dart';
import 'package:viam_marine/app/presentation/page/map/cubit/map_cubit.dart';
import 'package:viam_marine/app/presentation/page/map/cubit/map_state.dart';
import 'package:viam_marine/app/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';

class MapPage extends StatelessWidget with ExtensionMixin, AutoRouteWrapper {
  final ViamAppResourceName resourceName;

  const MapPage({
    required this.resourceName,
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<MapCubit>()..init(resourceName),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(title: Strings.of(context).map_page_gps_title),
        backgroundColor: context.getColors().deepWhite,
        body: SafeArea(
          child: BlocBuilder<MapCubit, MapState>(
            builder: (context, state) => state.maybeWhen(
              loading: () => AppLoadingIndicator(
                isIos: Platform.isIOS,
              ),
              loaded: (
                latitude,
                longitude,
                heading,
              ) =>
                  MapBody(
                latitude: latitude,
                longitude: longitude,
                heading: heading,
              ),
              error: (
                viamError,
                lastLatitude,
                lastLongitude,
                lastHeading,
              ) =>
                  MapBody(
                latitude: lastLatitude ?? 0.0,
                longitude: lastLongitude ?? 0.0,
                heading: lastHeading ?? 0.0,
                viamError: viamError,
              ),
              orElse: SizedBox.shrink,
            ),
          ),
        ),
      );
}
