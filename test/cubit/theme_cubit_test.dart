import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_switcher/ui/global/theme/app_theme.dart';
import 'package:theme_switcher/ui/global/theme/cubit/theme_cubit.dart';

void main() {
  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    final pref = await SharedPreferences.getInstance();
    pref.setInt('theme', 1);
  });

  group('ThemeCubit', () {
    test('intial index is set correctly', () {
      expect(ThemeCubit().state, AppTheme.values[0]);
    });
  });

  blocTest<ThemeCubit, AppTheme>(
    'emits updated theme when theme is changed',
    build: () => ThemeCubit(),
    act: (cubit) => cubit.changeTheme(AppTheme.BlueDark),
    expect: () => const <AppTheme>[AppTheme.BlueDark],
  );

  blocTest<ThemeCubit, AppTheme>(
    'saves updated theme index when theme is changed',
    setUp: () {
      SharedPreferences.setMockInitialValues({});
    },
    build: () => ThemeCubit(),
    act: (cubit) => cubit.changeTheme(AppTheme.values[3]),
    verify: (_) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      expect(pref.getInt('theme'), 3);
    },
  );
}
