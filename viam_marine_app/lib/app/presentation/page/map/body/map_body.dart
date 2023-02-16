import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/presentation/page/map/widgets/coordinates_tile.dart';
//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';

class MapBody extends StatelessWidget {
  final double latitude;
  final double longitude;
  final double heading;
  final ViamError? viamError;

  const MapBody({
    super.key,
    this.viamError,
    required this.latitude,
    required this.longitude,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(latitude, longitude),
              zoom: 9,
              maxZoom: 18,
            ),
            nonRotatedChildren: [
              AttributionWidget.defaultWidget(
                source: 'OpenStreetMap contributors',
                onSourceTapped: null,
              ),
            ],
            children: [
              TileLayer(
                urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                userAgentPackageName: 'com.example.app',
              ),
              TileLayer(
                backgroundColor: Colors.transparent,
                urlTemplate: "http://tiles.openseamap.org/seamark/{z}/{x}/{y}.png",
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(latitude, longitude),
                    builder: (_) => Transform.rotate(
                      angle: angleInRadians,
                      child: Assets.images.svg.icons.arrow.svg(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CoordinatesTile(
              latitude: latitude,
              longitude: longitude,
              viamError: viamError,
            ),
          ),
        ],
      );

  double get angleInRadians => (heading * math.pi * 2) / 360.0;
}
