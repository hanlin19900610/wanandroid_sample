import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:wanandroid_flutter_bloc/pages/login/login/login_page_cubit.dart';
import 'package:wanandroid_flutter_bloc/pages/login/login/login_page_view.dart';
import 'package:wanandroid_flutter_bloc/utils/utils.dart';

import 'bloc/bloc.dart';
import 'di/injection_container.dart';
import 'generated/l10n.dart';
import 'routers/routers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPreferredOrientations();
  await initializeDependencyInjection();
  await SPUtils.init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (BuildContext context) => ThemeBloc(),
        ),
        BlocProvider<LocaleBloc>(
          create: (BuildContext context) => LocaleBloc(),
        ),
        // BlocProvider<BlocStaggeredGridViewBloc>(
        //   create: (BuildContext context) => BlocStaggeredGridViewBloc(),
        // ),
        // BlocProvider<BiliMineCubit>(
        //   create: (BuildContext context) => BiliMineCubit(),
        // ),
        // BlocProvider<LoginPageCubit>(
        //   create: (BuildContext context) => LoginPageCubit(),
        // ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return _materialApp(context);
      },
    );
  }

  Widget _materialApp(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, theme) {
        return BlocBuilder<LocaleBloc, LocaleState>(
          builder: (context, locale) {
            return MaterialApp(
              onGenerateTitle: (BuildContext context) => S.of(context).appName,
              // routerConfig: appRouter(),
              home: LoginPagePage(),
              builder: FlutterSmartDialog.init(
                builder: (_, Widget? child) => ScrollConfiguration(
                  behavior: const AppScrollBehavior(),
                  child: MediaQuery(
                    ///设置文字大小不随系统设置改变
                    data: MediaQuery.of(context)
                        .copyWith(textScaler: const TextScaler.linear(1.0)),
                    child: child!,
                  ),
                ),
              ),
              theme: theme.themeData,
              locale: locale.locale,
              localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
            );
          },
        );
      },
    );
  }
}

/// 强制app竖屏
void setPreferredOrientations() async {
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
}

class AppScrollBehavior extends ScrollBehavior {
  const AppScrollBehavior();

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const BouncingScrollPhysics();
}
