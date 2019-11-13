import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_switcher/preferenes.dart';
import 'package:theme_switcher/ui/global/theme/app_theme.dart';
import './bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  @override
  ThemeState get initialState =>
      // Everything is accessible from the appThemeData Map.
      ThemeState(
          themeData: appThemeData[AppTheme.values[Prefer.themeIndexPref]]);

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ThemeChanged) {
      yield ThemeState(themeData: appThemeData[event.theme]);
      Prefer.prefs = await SharedPreferences.getInstance();
      Prefer.prefs.setInt('theme', event.theme.index);
    }
  }
}
