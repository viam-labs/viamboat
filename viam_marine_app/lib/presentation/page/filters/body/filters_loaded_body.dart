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

  const FiltersLoadedBody(
    this.filter,
    this.initialStartDate,
    this.initialEndDate,
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
        child: Column(
          children: [
            Column(
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
                            _dateFromController.text = DateTimeFormatter.dateToYearMonthDayHourMinute(_dateFrom);
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
                            _dateToController.text = DateTimeFormatter.dateToYearMonthDayHourMinute(_dateTo);
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
                        widget.type == FiltersType.waterDepth
                            ? Strings.of(context).filters_screen_depth_range
                            : Strings.of(context).filters_screen_temperature_range,
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
            const Spacer(),
            SizedBox(
              width: _buttonSize,
              child: ViamStandardButton(
                title: Strings.of(context).filters_screen_apply,
                isActive: true,
                onTap: () {
                  final filter = WaterFilter(
                    minValue: int.tryParse(_firstValueController.text),
                    maxValue: int.tryParse(_secondValueController.text),
                    minDate: _dateFrom,
                    maxDate: _dateTo,
                  );
                  context.read<FiltersCubit>().setFiltersType(filter);
                  AutoRouter.of(context).pop();
                },
              ),
            ),
          ],
        ),
      );

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

  void _openCalendar(
    bool isDateFrom,
    Function(DateTime?) onDateChanged,
  ) {
    showCupertinoModalPopup(
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
    );
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
