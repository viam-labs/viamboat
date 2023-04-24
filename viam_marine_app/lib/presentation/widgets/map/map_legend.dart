import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/build_context_extension.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

const _mapLegendWidth = 140.0;

class MapLegend<T> extends StatelessWidget {
  final List<T> data;
  final String Function(T) textBuilder;
  final Color Function(T) colorBuilder;

  const MapLegend({
    super.key,
    required this.data,
    required this.textBuilder,
    required this.colorBuilder,
  });

  @override
  Widget build(BuildContext context) => Container(
        width: _mapLegendWidth,
        decoration: BoxDecoration(
          color: context.getColors().mapShadow,
          borderRadius: BorderRadius.circular(Dimens.xs),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.s),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: data
                    .map(
                      (data) => Text(
                        textBuilder(
                          data,
                        ),
                        style: AppTypography.body.copyWith(
                          color: context.getColors().mainWhite,
                        ),
                      ),
                    )
                    .toList(growable: false),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: data.map((data) => colorBuilder(data)).toList(growable: false),
                  ),
                  borderRadius: BorderRadius.circular(Dimens.xs),
                ),
                width: _mapLegendWidth - (2 * Dimens.s),
                height: Dimens.s,
              ),
              const SizedBox(height: Dimens.s),
            ],
          ),
        ),
      );
}
