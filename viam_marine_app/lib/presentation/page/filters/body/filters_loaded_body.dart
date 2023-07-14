import 'dart:io';

import 'package:flutter/material.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:viam_marine/domain/data_viam/model/filter_type.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/filters/cubit/filters_cubit.dart';
import 'package:viam_marine/style/dimens.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/presentation/widgets/buttons/viam_standard_button.dart';
import 'package:viam_marine/presentation/widgets/text_field/viam_text_field.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

const _pickerSize = 350.0;
const _buttonSize = 164.0;

class FiltersLoadedBody extends StatefulWidget with ExtensionMixin {
  final WaterFilter filter;
  final FiltersType type;
  final DateTime? initialStartDate;
  final DateTime? initialEndDate;
  final String? fuelSensorName;

  const FiltersLoadedBody(
    this.filter,
    this.initialStartDate,
    this.initialEndDate,
    this.fuelSensorName,
    this.type, {
    super.key,
  });

  @override
  State<FiltersLoadedBody> createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersLoadedBody> {
  final _dateFromController = TextEditingController();
  final _dateToController = TextEditingController();
  final _firstValueController = TextEditingController();
  final _secondValueController = TextEditingController();
  late int currentValue;

  late DateTime _dateFrom;
  late DateTime _dateTo;

  @override
  void initState() {
    super.initState();
    _dateFrom = widget.filter.minDate ?? widget.initialStartDate ?? DateTime.now();
    _dateTo = widget.filter.maxDate ?? widget.initialEndDate ?? DateTime.now();
    _dateFromController.text = DateTimeFormatter.dateToYearMonthDayHourMinute(_dateFrom);
    _dateToController.text = DateTimeFormatter.dateToYearMonthDayHourMinute(_dateTo);
    _firstValueController.text = widget.filter.minValue == null ? '' : widget.filter.minValue.toString();
    _secondValueController.text = widget.filter.maxValue == null ? '' : widget.filter.maxValue.toString();
    currentValue = widget.filter.interval;
  }

  @override
  void dispose() {
    super.dispose();
    _dateFromController.dispose();
    _dateToController.dispose();
    _firstValueController.dispose();
    _secondValueController.dispose();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.m,
          vertical: Dimens.xl,
        ),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  widget.type == FiltersType.fuelConsumptionOverTime
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Strings.of(context).interval,
                              style: AppTypography.body,
                            ),
                            const SizedBox(height: Dimens.m),
                            Row(
                              children: [
                                Expanded(
                                  child: IntervalButton(
                                    isPicked: currentValue == 5,
                                    value: 5,
                                    onTap: () {
                                      currentValue = 5;
                                      setState(() {});
                                    },
                                  ),
                                ),
                                const SizedBox(width: Dimens.s),
                                Expanded(
                                  child: IntervalButton(
                                    isPicked: currentValue == 15,
                                    value: 15,
                                    onTap: () {
                                      currentValue = 15;
                                      setState(() {});
                                    },
                                  ),
                                ),
                                const SizedBox(width: Dimens.s),
                                Expanded(
                                  child: IntervalButton(
                                    isPicked: currentValue == 30,
                                    value: 30,
                                    onTap: () {
                                      currentValue = 30;
                                      setState(() {});
                                    },
                                  ),
                                ),
                                const SizedBox(width: Dimens.s),
                                Expanded(
                                  child: IntervalButton(
                                    isPicked: currentValue == 60,
                                    value: 60,
                                    onTap: () {
                                      currentValue = 60;
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: _buildDateField(
                                    Strings.of(context).filters_screen_date_from,
                                    true,
                                    _dateFromController,
                                    onDateChanged: (dateTime) {
                                      if (dateTime != null) {
                                        _dateFrom = dateTime;
                                        if (_dateFrom.isAfter(_dateTo)) return;
                                        _dateFromController.text =
                                            DateTimeFormatter.dateToYearMonthDayHourMinute(_dateFrom);
                                      }
                                    },
                                  ),
                                ),
                                const SizedBox(width: Dimens.c),
                                Expanded(
                                  child: _buildDateField(
                                    Strings.of(context).filters_screen_date_to,
                                    false,
                                    _dateToController,
                                    onDateChanged: (dateTime) {
                                      if (dateTime != null) {
                                        _dateTo = dateTime;
                                        _dateToController.text =
                                            DateTimeFormatter.dateToYearMonthDayHourMinute(_dateTo);
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: Dimens.l),
                            Row(
                              children: [
                                Expanded(
                                  child: _buildTextField(
                                    _getRangeTitle(),
                                    _firstValueController,
                                    isMin: true,
                                  ),
                                ),
                                const SizedBox(width: Dimens.c),
                                Expanded(
                                  child: _buildTextField(
                                    '',
                                    _secondValueController,
                                    isMin: false,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                  const SizedBox(height: Dimens.l),
                  if (widget.type != FiltersType.fuelConsumptionOverTime)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          foregroundColor: context.getColors().red,
                        ),
                        onPressed: () {
                          const filter = WaterFilter();
                          context.read<FiltersCubit>().setFiltersType(filter, widget.fuelSensorName);
                          AutoRouter.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.delete_outline,
                        ),
                        label: Text(
                          Strings.of(context).remove_filters,
                          style: AppTypography.bodySmall,
                        ),
                      ),
                    ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: _buttonSize,
                      child: ViamStandardButton(
                        title: Strings.of(context).filters_screen_apply,
                        isActive: true,
                        onTap: () {
                          if (widget.type == FiltersType.fuelConsumptionOverTime) {
                            final filter = WaterFilter(
                              interval: currentValue,
                            );
                            context.read<FiltersCubit>().setFiltersType(filter, widget.fuelSensorName);
                            AutoRouter.of(context).pop();
                            return;
                          }
                          final filter = WaterFilter(
                            minValue: int.tryParse(_firstValueController.text),
                            maxValue: int.tryParse(_secondValueController.text),
                            minDate: _dateFrom,
                            maxDate: _dateTo,
                          );
                          context.read<FiltersCubit>().setFiltersType(filter, widget.fuelSensorName);
                          AutoRouter.of(context).pop();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  String _getRangeTitle() {
    if (widget.type == FiltersType.waterDepth || widget.type == FiltersType.depthOverTime) {
      return Strings.of(context).filters_screen_depth_range;
    } else {
      return Strings.of(context).filters_screen_temperature_range;
    }
  }

  Widget _buildDateField(
    String title,
    bool isDateFrom,
    TextEditingController controller, {
    required Function(DateTime?) onDateChanged,
  }) =>
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => _openCalendar(isDateFrom, onDateChanged),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTypography.bodySmall,
            ),
            const SizedBox(height: Dimens.s),
            ViamMarineTextField(
              textEditingController: controller,
              isDarkStyle: true,
              isActive: false,
            ),
          ],
        ),
      );

  Future<void> _openCalendar(
    bool isDateFrom,
    Function(DateTime?) onDateChanged,
  ) =>
      Platform.isIOS
          ? showCupertinoModalPopup(
              context: context,
              builder: (_) => Container(
                color: context.getColors().mainWhite.withAlpha(255),
                child: SizedBox(
                  height: _pickerSize,
                  child: CupertinoDatePicker(
                    initialDateTime: isDateFrom ? _dateFrom : _dateTo,
                    maximumDate: DateTime.now(),
                    mode: CupertinoDatePickerMode.dateAndTime,
                    onDateTimeChanged: onDateChanged,
                  ),
                ),
              ),
            )
          : _openAndroidDatePicker(isDateFrom);

  Future<void> _openAndroidDatePicker(
    bool isDateFrom,
  ) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: isDateFrom ? _dateFrom : _dateTo,
      firstDate: widget.initialStartDate ?? DateTime(2020),
      lastDate: DateTime.now(),
    );

    if (context.mounted && pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: isDateFrom ? TimeOfDay.fromDateTime(_dateFrom) : TimeOfDay.fromDateTime(_dateTo),
      );

      if (isDateFrom) {
        _dateFrom = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime?.hour ?? _dateFrom.hour,
          pickedTime?.minute ?? _dateFrom.minute,
        );
        _dateFromController.text = DateTimeFormatter.dateToYearMonthDayHourMinute(_dateFrom);
      } else {
        _dateTo = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime?.hour ?? _dateTo.hour,
          pickedTime?.minute ?? _dateTo.minute,
        );
        _dateToController.text = DateTimeFormatter.dateToYearMonthDayHourMinute(_dateTo);
      }
    }
  }

  Widget _buildTextField(
    String title,
    TextEditingController controller, {
    required bool isMin,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTypography.bodySmall,
          ),
          const SizedBox(height: Dimens.s),
          ViamMarineTextField(
            hint: isMin ? Strings.of(context).min : Strings.of(context).max,
            textEditingController: controller,
            isDarkStyle: true,
            keyboardType: TextInputType.number,
            inputFormatter: [
              NumberTextInputFormatter(
                integerDigits: 10,
                decimalDigits: 0,
                maxValue: '200',
                decimalSeparator: '.',
                groupDigits: 3,
                groupSeparator: ',',
                allowNegative: false,
                overrideDecimalPoint: true,
                insertDecimalPoint: false,
                insertDecimalDigits: true,
              ),
            ],
          ),
        ],
      );
}

class IntervalButton extends StatelessWidget {
  final bool isPicked;
  final int value;
  final VoidCallback? onTap;
  const IntervalButton({
    super.key,
    required this.isPicked,
    required this.value,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.m,
            vertical: Dimens.s,
          ),
          decoration: BoxDecoration(
            color: isPicked ? context.getColors().darkBlue1 : context.getColors().mainWhite,
            borderRadius: const BorderRadius.all(
              Radius.circular(Dimens.s),
            ),
            border: isPicked ? null : Border.all(color: context.getColors().darkBlue1),
            boxShadow: [
              BoxShadow(
                color: context.getColors().shadow,
                blurRadius: 24,
                spreadRadius: 3,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Center(
            child: Text(
              '$value min',
              textAlign: TextAlign.center,
              style: AppTypography.bodySmall.copyWith(
                color: isPicked ? context.getColors().mainWhite : context.getColors().darkBlue1,
              ),
            ),
          ),
        ),
      );
}
