import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart';
import 'package:viam_marine/presentation/widgets/camera_tile/cubit/camera_tile_state.dart';
import 'package:viam_marine/presentation/widgets/common_tile_body/common_tile_body.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';

part 'body/camera_tile_body.dart';

class CameraTile extends StatelessWidget with ExtensionMixin {
  final ViamAppResourceName cameraResourceName;

  const CameraTile({
    super.key,
    required this.cameraResourceName,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<CameraTileCubit>()..init(cameraResourceName),
        child: BlocBuilder<CameraTileCubit, CameraTileState>(
          buildWhen: (_, state) => state is! CameraTileStateIdle,
          builder: (context, state) => state.maybeWhen(
            loaded: (image) => _CameraTileBody(image: image),
            loading: () => const _CameraTileBody(),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );
}
