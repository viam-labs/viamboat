part of './dashboard_page_body.dart';

class _DashboardBodyCard extends StatelessWidget with ExtensionMixin {
  final List<ViamAppResourceName> graphicalSensors;
  final List<ViamAppResourceName> normalSensors;
  final List<ViamAppResourceName> positionSensors;
  final List<ViamAppResourceName> cameraSensors;
  final String boatName;

  const _DashboardBodyCard({
    required this.graphicalSensors,
    required this.normalSensors,
    required this.positionSensors,
    required this.cameraSensors,
    required this.boatName,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.getColors();
    final strings = Strings.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.s),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(Dimens.s),
        ),
        color: colors.deepWhite,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Dimens.l),
            Text(
              boatName,
              style: AppTypography.titleBold.copyWith(color: colors.black),
            ),
            const SizedBox(height: Dimens.xl),
            Text(
              strings.dashboard_sensors_title,
              style: AppTypography.bodySemibold.copyWith(color: colors.black),
            ),
            const SizedBox(height: Dimens.m),
            AlignedGridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 2,
              crossAxisSpacing: Dimens.s,
              mainAxisSpacing: Dimens.s,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: normalSensors.length,
              itemBuilder: (_, index) => SensorTile(normalSensors[index]),
            ),
            const SizedBox(height: Dimens.m),
            ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemBuilder: (_, index) => SensorTile(
                graphicalSensors[index],
              ),
              separatorBuilder: (_, __) => const SizedBox(
                height: Dimens.s,
              ),
              itemCount: graphicalSensors.length,
              physics: const NeverScrollableScrollPhysics(),
            ),
            const SizedBox(height: Dimens.xl),
            Text(
              strings.dashboard_gps_title,
              style: AppTypography.bodySemibold.copyWith(color: colors.black),
            ),
            const SizedBox(height: Dimens.m),
            ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final positionSensor = positionSensors[index];
                return MapTile(positionSensor);
              },
              itemCount: positionSensors.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: Dimens.m,
              ),
              physics: const NeverScrollableScrollPhysics(),
            ),
            const SizedBox(height: Dimens.xl),
            Text(
              strings.dashboard_camera_title,
              style: AppTypography.bodySemibold.copyWith(color: colors.black),
            ),
            const SizedBox(height: Dimens.m),
            ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final cameraSensor = cameraSensors[index];
                return WebrtcCameraWidget(cameraSensor);
              },
              itemCount: cameraSensors.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: Dimens.m,
              ),
              physics: const NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}
