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
        padding: const EdgeInsets.symmetric(horizontal: Dimens.m),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(Dimens.s),
          ),
          color: context.getColors().deepWhite,
        ),
        child: sensors.isEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: Dimens.l),
                  Text(
                    boatName,
                    style: AppTypography.titleBold.copyWith(color: context.getColors().black),
                  ),
                  const Spacer(),
                  EmptyStateWidget(
                    title: Strings.of(context).dashboard_sensors_empty_state_title,
                    subtitle: Strings.of(context).dashboard_sensors_empty_state_subtitle,
                    iconPath: Assets.images.svg.icons.sensorsEmptyState.path,
                  ),
                  const Spacer()
                ],
              )
            : _buildRefreshIndicator(context),
      );

  Widget _buildRefreshIndicator(BuildContext context) => RefreshIndicator(
        color: context.getColors().blue,
        onRefresh: context.read<MainCubit>().onPullToRefresh,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(height: Dimens.l),
            ),
            SliverToBoxAdapter(
              child: Text(
                boatName,
                style: AppTypography.titleBold.copyWith(color: context.getColors().black),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: Dimens.l),
            ),
            SliverToBoxAdapter(
              child: AlignedGridView.count(
                padding: EdgeInsets.zero,
                crossAxisCount: 3,
                crossAxisSpacing: Dimens.s,
                mainAxisSpacing: Dimens.s,
                itemBuilder: (_, index) => SensorTile(sensors[index]),
                itemCount: sensors.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
            )
          ],
        ),
      );
}
