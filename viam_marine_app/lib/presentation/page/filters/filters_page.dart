import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/data_viam/model/filter_type.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/filters/body/filters_loaded_body.dart';
import 'package:viam_marine/presentation/page/filters/cubit/filters_cubit.dart';
import 'package:viam_marine/presentation/page/filters/cubit/filters_state.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';

@RoutePage()
class FiltersPage extends StatelessWidget with ExtensionMixin {
  final FiltersType type;
  final DateTime? initialStartDate;
  final DateTime? initialEndDate;
  final String? fuelSensorName;

  const FiltersPage({
    required this.type,
    this.initialStartDate,
    this.initialEndDate,
    this.fuelSensorName,
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider<FiltersCubit>(
        create: (context) => getIt<FiltersCubit>()..init(type, fuelSensorName),
        child: Scaffold(
          appBar: ViamAppBar(
            title: Strings.of(context).filters_screen_title,
            leading: BackButton(color: context.getColors().blue),
          ),
          body: SafeArea(
            child: BlocBuilder<FiltersCubit, FiltersState>(
              builder: _builder,
            ),
          ),
        ),
      );

  Widget _builder(BuildContext context, FiltersState state) => state.maybeWhen(
        loaded: (filters, type) => FiltersLoadedBody(
          filters,
          initialStartDate,
          initialEndDate,
          fuelSensorName,
          type,
        ),
        orElse: SizedBox.shrink,
      );
}
