part of './dashboard_page_body.dart';

class _DashboardBodyCard extends StatelessWidget with ExtensionMixin {
  final List<ViamAppResourceName> sensors;

  final List<ViamAppResourceName> positionSensors;
  final List<ViamAppResourceName> cameraSensors;
  final String boatName;

  const _DashboardBodyCard({
    required this.sensors,
    required this.positionSensors,
    required this.cameraSensors,
    required this.boatName,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.getColors();
    final strings = Strings.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(Dimens.s),
        ),
        color: colors.deepWhite,
      ),
      child: RefreshIndicator(
        color: context.getColors().blue,
        onRefresh: () async => context.read<DashboardCubit>().onRefresh(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.m),
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
                crossAxisCount: 3,
                crossAxisSpacing: Dimens.s,
                mainAxisSpacing: Dimens.s,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: sensors.length,
                itemBuilder: (_, index) => SensorTile(sensors[index]),
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
      ),
    );
  }
}
