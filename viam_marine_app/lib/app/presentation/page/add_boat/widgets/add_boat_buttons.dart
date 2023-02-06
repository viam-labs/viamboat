part of '../body/add_boat_page_body.dart';

class _AddBoatButtons extends StatelessWidget {
  final bool isActive;
  final bool isLoading;
  final String addBoatButtonTitle;
  final VoidCallback? onScanQrButtonTap;
  final VoidCallback? onAddBoatButtonTap;

  const _AddBoatButtons({
    required this.isActive,
    required this.isLoading,
    required this.addBoatButtonTitle,
    this.onAddBoatButtonTap,
    this.onScanQrButtonTap,
  });

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: ViamOutlinedButton(
              isActive: true,
              title: Strings.of(context).scan_qr,
              onTap: onScanQrButtonTap,
            ),
          ),
          const SizedBox(width: Dimens.ms),
          Expanded(
            child: ViamStandardButton(
              isLoading: isLoading,
              isActive: isActive,
              title: addBoatButtonTitle,
              onTap: onAddBoatButtonTap,
            ),
          ),
        ],
      );
}
