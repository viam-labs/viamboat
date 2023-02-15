import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';

class MapBody extends StatelessWidget {
  final double latitude;
  final double longitude;
  final double heading;
  final ViamError? viamError;

  const MapBody({
    required this.latitude,
    required this.longitude,
    required this.heading,
    this.viamError,
    super.key,
  });

  @override
  Widget build(BuildContext context) => FlutterMap(
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
              )
            ],
          )
        ],
      );

  double get angleInRadians => (heading * math.pi * 2) / 360.0;
}
