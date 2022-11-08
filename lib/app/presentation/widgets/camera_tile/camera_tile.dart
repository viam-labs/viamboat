import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart';
import 'package:viam_marine/app/presentation/widgets/camera_tile/cubit/camera_tile_state.dart';
import 'package:viam_marine/app/presentation/widgets/common_tile_body/common_tile_body.dart';

part 'body/camera_tile_body.dart';

class CameraTile extends StatelessWidget with ExtensionMixin {
  const CameraTile({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<CameraTileCubit>()..init(),
        child: BlocBuilder<CameraTileCubit, CameraTileState>(
          builder: (context, state) => state.maybeWhen(
            loaded: () => const _CameraTileBody('Cam'),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );
}
