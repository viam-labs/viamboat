part of './dashboard_page_body.dart';

class _DashboardBodyCard extends StatelessWidget with ExtensionMixin {
  final List<ViamAppResourceName> sensors;
  final String boatName;

  const _DashboardBodyCard({
    required this.sensors,
    required this.boatName,
  });

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(Dimens.s),
          ),
          color: context.getColors().deepWhite,
        ),
        child: RefreshIndicator(
          color: context.getColors().blue,
          onRefresh: () async => context.read<DashboardCubit>().onRefresh(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.m),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: Dimens.l),
                Text(
                  boatName,
                  style: AppTypography.titleBold.copyWith(color: context.getColors().black),
                ),
                const SizedBox(height: Dimens.l),
                GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: Dimens.s,
                    crossAxisSpacing: Dimens.s,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => SensorTile(sensors[index]),
                  itemCount: sensors.length,
                ),
              ],
            ),
          ),
        ),
      );
}
