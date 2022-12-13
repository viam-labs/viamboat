import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class ViamDrawerBody extends StatelessWidget {
  final List<ViamBoat> boats;
  final bool isLoading;

  const ViamDrawerBody({
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
              Text(
                Strings.of(context).boats,
                style: AppTypography.mediumTitle,
              ),
              const SizedBox(height: Dimens.m),
              !isLoading
                  ? ListView.builder(
                      itemBuilder: (context, index) => _BoatTile(boats[index]),
                      itemCount: boats.length,
                      shrinkWrap: true,
                    )
                  : const AppLoadingIndicator(),
              const Spacer(),
              TextButton.icon(
                //TODO: VIAM-60
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                label: Text(
                  Strings.of(context).drawer_add_boat_button_text,
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

class _BoatTile extends StatelessWidget {
  final ViamBoat boat;
  const _BoatTile(this.boat);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => context.read<ViamDrawerCubit>().changeBoat(
              boat.id,
            ),
        child: ListTile(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          tileColor: boat.id == currentBoatId(context) ? context.getColors().mainGrey90 : null,
          title: Text(boat.name),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            //TODO: VIAM-61
            onPressed: () {},
          ),
        ),
      );
  String currentBoatId(BuildContext context) => context.read<ViamDrawerCubit>().currentBoatId ?? '';
}
