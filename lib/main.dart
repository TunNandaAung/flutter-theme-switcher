import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_switcher/preferenes.dart';
import 'package:theme_switcher/ui/global/theme/app_theme.dart';
import 'package:theme_switcher/ui/home/home_page.dart';

import 'ui/global/theme/cubit/theme_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Prefer.prefs = await SharedPreferences.getInstance();
  Prefer.themeIndexPref = Prefer.prefs!.getInt('theme') ?? 0;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: _buildWithTheme(context),
    );
  }

  Widget _buildWithTheme(BuildContext context) {
    return BlocBuilder<ThemeCubit, AppTheme>(builder: (context, appTheme) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const HomePage(),
        theme: appThemeData[appTheme],
      );
    });
  }
}
