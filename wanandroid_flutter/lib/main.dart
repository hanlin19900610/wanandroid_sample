import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'generated/l10n.dart';
import 'src/core/api/api_client.dart';
import 'src/core/provider/common_provider.dart';
import 'package:flutter_web_plugins/url_strategy.dart' show usePathUrlStrategy;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'src/core/res/res.dart';
import 'src/core/utils/utils.dart';
import 'src/core/widget/widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeHive();
  // turn off the # in the URLs on the web
  usePathUrlStrategy();

  final (Box, Box, Directory) sources = await (
    openLoginHiveBox(),
    openCommonHiveBox(),
    getTemporaryDirectory()
  ).wait;

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
      loginHiveBoxProvider.overrideWithValue(sources.$1),
      commonHiveBoxProvider.overrideWithValue(sources.$2),
      appTemporaryDirectoryProvider.overrideWithValue(sources.$3),
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

class _MyAppState extends ConsumerState<MyApp> with WidgetsBindingObserver{
  late TDThemeData _themeData;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    initThemeData();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    ref.read(loginHiveBoxProvider).close();
    ref.read(commonHiveBoxProvider).close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Locale? locale = ref.watch(appLanguageProvider).locale;
    final ThemeMode themeMode = ref.watch(appThemeModeProvider);
    // 使用多套主题
    TDTheme.needMultiTheme();
    // 适配3.16的字体居中前,先禁用字体居中功能
    kTextForceVerticalCenterEnable = false;
    
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child){
        return OKToast(
          textStyle: MyTextStyle.toastTextStyle,
          radius: 16.r,
          backgroundColor: Colors.black.withOpacity(0.3),
          position: ToastPosition.center,
          dismissOtherOnShow: true,
          textPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: MaterialApp.router(
            onGenerateTitle: (BuildContext context) => S.of(context).appName,
            // routerConfig: goRouter,
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
    
    // return MaterialApp.router(
    //   title: '学习社区',
    //   theme: ThemeData(
    //     extensions: [_themeData],
    //     colorScheme: ColorScheme.light(primary: _themeData.brandNormalColor),
    //   ),
    // );
  }

  Future initThemeData() async {
    var jsonString = await rootBundle.loadString('assets/json/theme.json');
    _themeData = TDThemeData.fromJson('mufeng', jsonString)!;
  }
}
