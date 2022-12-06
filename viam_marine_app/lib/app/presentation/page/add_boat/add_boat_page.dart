import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_cubit.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_state.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class AddBoatPage extends StatelessWidget with AutoRouteWrapper, ExtensionMixin {
  const AddBoatPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<AddBoatCubit>(
        create: (_) => getIt<AddBoatCubit>(),
        lazy: false,
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.getColors().mainGrey80,
        body: BlocConsumer<AddBoatCubit, AddBoatState>(
          listener: (context, state) => state.maybeWhen(
            goToDashboard: () => goToDashboard(context),
            orElse: () => null,
          ),
          builder: (context, state) => state.maybeWhen(
            loaded: (canProceed) => AddBoatBody(
              canProceed: canProceed,
              isLoading: false,
            ),
            loading: () => const AddBoatBody(
              canProceed: false,
              isLoading: true,
            ),
            orElse: () => const SizedBox.shrink(),
          ),
          buildWhen: (previous, current) => current is AddBoatStateLoaded,
        ),
      );

  Future<void> goToDashboard(BuildContext context) async {
    await AutoRouter.of(context).replaceAll([const DashboardRoute()]);
    await pushNewSessionScope();
  }
}

class AddBoatBody extends StatefulWidget {
  final bool canProceed;
  final bool isLoading;

  const AddBoatBody({
    required this.canProceed,
    required this.isLoading,
    super.key,
  });

  @override
  State<AddBoatBody> createState() => _AddBoatBodyState();
}

class _AddBoatBodyState extends State<AddBoatBody> {
  late TextEditingController _boatsNameController;
  late TextEditingController _addressController;
  late TextEditingController _secretController;

  @override
  void initState() {
    super.initState();

    _boatsNameController = TextEditingController();
    _addressController = TextEditingController();
    _secretController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Assets.images.illustrations.background.image(fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.xl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome to\nViam Marine',
                  style: AppTypography.headline,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 32),
                ViamMarineTextField(
                  label: 'Boat Name',
                  onChanged: (_) => verifyInputs(context),
                  textEditingController: _boatsNameController,
                ),
                const SizedBox(height: 32),
                ViamMarineTextField(
                  label: 'Address',
                  onChanged: (_) => verifyInputs(context),
                  textEditingController: _addressController,
                ),
                const SizedBox(height: 32),
                ViamMarineTextField(
                  label: 'Secret',
                  onChanged: (_) => verifyInputs(context),
                  textEditingController: _secretController,
                ),
                const SizedBox(height: 32),
                !widget.isLoading
                    ? ElevatedButton(
                        onPressed: widget.canProceed ? tryToSign : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.getColors().mainBlue,
                        ),
                        child: Text('Log in'),
                      )
                    : const CircularProgressIndicator(),
              ],
            ),
          ),
        ],
      );

  Future<void> tryToSign() async {
    final cubit = context.read<AddBoatCubit>();
    await cubit.setNewBoat(
      _boatsNameController.text,
      _addressController.text,
      _secretController.text,
    );

    await pushNewSessionScope();

    await AutoRouter.of(context).replaceAll([const AddBoatRoute()]);

    await context.read<AddBoatCubit>().tryToSignIn();
  }

  void verifyInputs(BuildContext context) => context.read<AddBoatCubit>().verifyInputs(
        _boatsNameController.text,
        _addressController.text,
        _secretController.text,
      );
}

class ViamMarineTextField extends StatefulWidget {
  final String? label;
  final ValueChanged<String>? onChanged;
  final TextEditingController? textEditingController;

  const ViamMarineTextField({
    this.label,
    this.onChanged,
    this.textEditingController,
    super.key,
  });

  @override
  State<ViamMarineTextField> createState() => _ViamMarineTextFieldState();
}

class _ViamMarineTextFieldState extends State<ViamMarineTextField> {
  late FocusNode _focusNode;
  bool hasFocus = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) => Focus(
        onFocusChange: (value) {
          hasFocus = value;
          setState(() {});
        },
        child: TextFormField(
          focusNode: _focusNode,
          onChanged: widget.onChanged,
          controller: widget.textEditingController,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: context.getColors().mainBlue,
              ),
            ),
            labelStyle: TextStyle(
              color: hasFocus ? context.getColors().mainBlue : null,
            ),
            labelText: widget.label,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: const OutlineInputBorder(),
          ),
        ),
      );
}
