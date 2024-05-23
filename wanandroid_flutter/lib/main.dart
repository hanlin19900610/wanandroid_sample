import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'app/database/app_database.dart';
import 'generated/l10n.dart';
import 'package:flutter_web_plugins/url_strategy.dart' show usePathUrlStrategy;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'lib.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // turn off the # in the URLs on the web
  usePathUrlStrategy();

  final (Directory, Isar) sources =
      await (getTemporaryDirectory(), openIsar()).wait;

  // 设置上下顶栏
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.top]);
  if (Platform.isAndroid || Platform.isIOS) {
    const systemUiOverlayStyle = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

  runApp(ProviderScope(
    overrides: [
      appTemporaryDirectoryProvider.overrideWithValue(sources.$1),
      appDatabaseProvider.overrideWithValue(sources.$2),
    ],
    observers: const [
      StateLogger(),
    ],
    child: MyApp(),
  ));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> with WidgetsBindingObserver {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    initLibs();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GoRouter goRouter = ref.watch(appRouterProvider);
    final Locale? locale = ref.watch(appLanguageProvider).locale;
    final ThemeMode themeMode = ref.watch(appThemeModeProvider);
    // 适配3.16的字体居中前,先禁用字体居中功能
    kTextForceVerticalCenterEnable = false;

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return OKToast(
          radius: 16.r,
          backgroundColor: Colors.black.withOpacity(0.3),
          position: ToastPosition.center,
          dismissOtherOnShow: true,
          textPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: MaterialApp.router(
            onGenerateTitle: (BuildContext context) => S.of(context).appName,
            routerConfig: goRouter,
            builder: FlutterSmartDialog.init(
              builder: (_, Widget? child) {
                return ScrollConfiguration(
                  behavior: const MFAppScrollBehavior(),
                  child: child!,
                );
              },
            ),
            themeMode: themeMode,
            locale: locale,
            localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
          ),
        );
      },
    );
  }

  void initLibs() {
    BaseLibs.init(
        isDebug: true, httpConfig: HttpConfigImpl(), config: ConfigImpl());
  }
}
