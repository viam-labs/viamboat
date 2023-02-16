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
        child: RefreshIndicator(
          color: context.getColors().blue,
          onRefresh: () async => context.read<DashboardCubit>().onRefresh(),
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
              SliverGrid.count(
                mainAxisSpacing: Dimens.s,
                crossAxisSpacing: Dimens.s,
                crossAxisCount: 3,
                children: sensors.map(SensorTile.new).toList(growable: false),
              ),
            ],
          ),
        ),
      );
}
