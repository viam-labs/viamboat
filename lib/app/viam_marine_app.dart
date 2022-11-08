import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/themes.dart';
import 'package:viam_marine/app/utils/hide_keyboard.dart';
import 'package:viam_marine/app/utils/l10n_model.dart';
import 'package:provider/provider.dart';

class ViamMarineApp extends StatelessWidget implements ExtensionMixin {
  final RootStackRouter mainRouter;

  const ViamMarineApp(this.mainRouter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => _globalUnfocusKeyboard(
        context: context,
        child: MultiProvider(
          providers: [ListenableProvider(create: (_) => ThemeModel())],
          child: Consumer(builder: (context, model, child) {
            return MaterialApp.router(
              routerDelegate: mainRouter.delegate(),
              routeInformationParser: mainRouter.defaultRouteParser(),
              theme: ThemeData(
                textSelectionTheme: TextSelectionThemeData(selectionHandleColor: context.getColors().mainDark),
                appBarTheme: const AppBarTheme().copyWith(
                  color: context.getColors().mainDark,
                ),
                backgroundColor: context.getColors().mainGrey90,
                colorScheme: const ColorScheme.light(),
                fontFamily: AppTypography.fontFamily,
              ),
              localizationsDelegates: const [
                Strings.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: const Locale(defaultLanguageCode),
              supportedLocales: const [
                // After enabling new Locale, remember to add it to Localizations in Info.plist of iOS project and to resConfig in android/app/build.gradle
                // When ready to add more locale, provider is prepared. We have to change this to line "supportedLocales: Strings.delegate.supportedLocales,"
                Locale(defaultLanguageCode),
              ],
            );
          }),
        ),
      );

  Widget _globalUnfocusKeyboard({
    required BuildContext context,
    required Widget child,
  }) =>
      GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => hideKeyboard(context),
        child: child,
      );
}
