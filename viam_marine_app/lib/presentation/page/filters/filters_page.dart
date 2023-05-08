import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/data_viam/model/filter_type.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/filters/body/filters_loaded_body.dart';
import 'package:viam_marine/presentation/page/filters/cubit/filters_cubit.dart';
import 'package:viam_marine/presentation/page/filters/cubit/filters_state.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';

class FiltersPage extends StatelessWidget with ExtensionMixin {
  final FiltersType type;

  const FiltersPage({
    required this.type,
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider<FiltersCubit>(
        create: (context) => getIt<FiltersCubit>()..init(type),
        child: Scaffold(
          appBar: const ViamAppBar(
            title: 'Filters page',
          ),
          body: SafeArea(
            child: BlocBuilder<FiltersCubit, FiltersState>(
              builder: _builder,
            ),
          ),
        ),
      );

  Widget _builder(BuildContext context, FiltersState state) => state.maybeWhen(
        loaded: FiltersLoadedBody.new,
        orElse: SizedBox.shrink,
      );
}
