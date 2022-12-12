import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_state.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class ViamDrawer extends StatelessWidget with ExtensionMixin {
  const ViamDrawer({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<ViamDrawerCubit>(
        create: (context) => getIt<ViamDrawerCubit>()..init(),
        child: Drawer(
          backgroundColor: context.getColors().mainGrey80,
          child: BlocConsumer<ViamDrawerCubit, ViamDrawerState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () => null,
            ),
            builder: (context, state) => state.maybeWhen(
              loading: () => const DrawerBody(
                boats: [],
                isLoading: true,
              ),
              loaded: (boats) => DrawerBody(
                boats: boats,
                isLoading: false,
              ),
              orElse: () => const SizedBox.shrink(),
            ),
          ),
        ),
      );
}

class DrawerBody extends StatelessWidget {
  final List<ViamBoat> boats;
  final bool isLoading;

  const DrawerBody({
    required this.boats,
    required this.isLoading,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Dimens.xm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.of(context).app_name,
                style: AppTypography.mediumTitle,
              ),
              const SizedBox(height: Dimens.xl),
              const Text(
                'Boats',
                style: AppTypography.mediumTitle,
              ),
              const SizedBox(height: Dimens.m),
              !isLoading
                  ? ListView.builder(
                      itemBuilder: (context, index) => ListTile(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                        tileColor: index == 0 ? context.getColors().mainGrey90 : null,
                        title: Text(boats[index].name),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {},
                        ),
                      ),
                      itemCount: boats.length,
                      shrinkWrap: true,
                    )
                  : const AppLoadingIndicator(),
              const Spacer(),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                label: Text(
                  'Add New Boat',
                  style: AppTypography.body.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
