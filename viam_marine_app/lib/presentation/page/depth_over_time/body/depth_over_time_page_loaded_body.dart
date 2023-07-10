import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/domain/data_viam/model/filter_type.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/chart_current_value.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/viam_line_chart.dart';
import 'package:viam_marine/presentation/page/depth_over_time/cubit/depth_over_time_page_cubit.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:viam_marine/utils/charts_constants.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class DepthOverTimePageLoadedBody extends StatefulWidget {
  final List<DepthOverTime> depthOverTime;
  final double? yAxisMaxValue;
  final double? yAxisMinValue;

  const DepthOverTimePageLoadedBody({
    super.key,
    this.yAxisMaxValue,
    this.yAxisMinValue,
    required this.depthOverTime,
  });

  @override
  State<DepthOverTimePageLoadedBody> createState() => _DepthOverTimePageLoadedBodyState();
}

class _DepthOverTimePageLoadedBodyState extends State<DepthOverTimePageLoadedBody> {
  late StreamController<GestureEvent> gestureStreamController;
  late StreamController<Selected?> selectionStreamController;
  late int index;

  @override
  void initState() {
    super.initState();
    gestureStreamController = StreamController<GestureEvent>.broadcast();
    selectionStreamController = StreamController<Selected?>.broadcast();
    index = _depthOverTimeListLength - 1;

    selectionStreamController.stream.listen((event) {
      if (event != null) {
        final int pickedIndex = event.entries.first.value.first;

        if (pickedIndex > _depthOverTimeListLength) {
          index = _depthOverTimeListLength - 1;
        } else {
          index = pickedIndex;
        }
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    gestureStreamController.close();
    selectionStreamController.close();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          if (widget.depthOverTime.isEmpty) ...[
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.s),
              child: Text(
                Strings.of(context).analytics_tile_empty_state,
                textAlign: TextAlign.center,
                style: AppTypography.body.copyWith(
                  color: context.getColors().grey,
                ),
              ),
            ),
          ],
          if (widget.depthOverTime.isNotEmpty)
            ColoredBox(
              color: context.getColors().mainWhite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ChartCurrentValue(
                    formattedValueText: _getCurrentDepthString(context),
                  ),
                  SizedBox(
                    width: Dimens.fullChartWidth,
                    child: ViamLineChart(
                      data: widget.depthOverTime,
                      variables: _getChartVariables(),
                      coord: RectCoord(
                        horizontalRange: ChartsConstants.coordDefaultHorizontalRange,
                        verticalRange: ChartsConstants.depthChartVerticalRange,
                      ),
                      reverseAreaGradientColors: true,
                      gestureStreamController: gestureStreamController,
                      selectionStreamController: selectionStreamController,
                      currentIndex: index > _depthOverTimeListLength ? 0 : index,
                    ),
                  ),
                ],
              ),
            ),
          _buildButtons(),
          const Spacer(),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: _navigateToFiltersPage,
            child: Container(
              decoration: BoxDecoration(
                color: context.getColors().darkBlue1,
                borderRadius: BorderRadius.circular(Dimens.m),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: Dimens.xm,
                  horizontal: Dimens.xxxl + Dimens.xxs,
                ),
                child: Text(
                  Strings.of(context).water_depth_screen_filters,
                  style: AppTypography.bodyMedium.copyWith(
                    color: context.getColors().mainWhite,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: Dimens.xl),
        ],
      );

  void _navigateToFiltersPage() => context.router.navigate(
        FiltersRoute(
          type: FiltersType.depthOverTime,
          initialStartDate: context.read<DepthOverTimePageCubit>().getMindateOrNull(),
          initialEndDate: context.read<DepthOverTimePageCubit>().getMaxDateOrNull(),
        ),
      );

  Widget _buildButtons() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: _onBackButtonTap,
            icon: Icon(
              Icons.arrow_back_ios,
              color: context.getColors().darkBlue1,
            ),
          ),
          IconButton(
            onPressed: _onForwardButtonTap,
            icon: Icon(
              Icons.arrow_forward_ios,
              color: context.getColors().darkBlue1,
            ),
          )
        ],
      );

  Future<void> _onBackButtonTap() async {
    index = 0;
    await context.read<DepthOverTimePageCubit>().onBackButtonPressed();
  }

  Future<void> _onForwardButtonTap() async {
    index = 0;
    context.read<DepthOverTimePageCubit>().onForwardButtonPressed();
  }

  String _getCurrentDepthString(BuildContext context) => Strings.of(context).depth_over_time_chart_tile_current_depth(
        ViamNumberFormats.analyticsCurrentValue.format(
          index > _depthOverTimeListLength ? 0 : widget.depthOverTime[index].depth,
        ),
      );

  Map<String, Variable<DepthOverTime, dynamic>> _getChartVariables() => {
        ChartsConstants.variableDate: Variable(
          accessor: (DepthOverTime data) => data.date.toString(),
          scale: OrdinalScale(
            inflate: false,
            tickCount: 8,
            formatter: (dateString) => DateTimeFormatter.hourFromDate(
              DateTime.parse(dateString),
            ),
          ),
        ),
        ChartsConstants.variableDepth: Variable(
          accessor: (DepthOverTime date) => date.depth,
          scale: LinearScale(
            min: widget.yAxisMinValue,
            max: widget.yAxisMaxValue,
            niceRange: true,
          ),
        ),
      };

  int get _depthOverTimeListLength => widget.depthOverTime.length;
}
