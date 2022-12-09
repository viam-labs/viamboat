import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class AppDrawer extends StatelessWidget with ExtensionMixin {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: context.getColors().mainGrey80,
        child: SafeArea(
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
                ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    tileColor: index == 0 ? context.getColors().mainGrey90 : null,
                    title: Text('ViamBoat'),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {},
                    ),
                  ),
                  itemCount: 4,
                  shrinkWrap: true,
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
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
        ),
      );
}
