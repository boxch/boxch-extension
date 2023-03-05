import 'package:boxch_extension/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import 'theme_states.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({state}) : super(ThemeState.init(Hive.box(boxAppSettings).get(boxAppSettingsKey) ?? false));

  Future<void> changeTheme() async {
    var box = Hive.box(boxAppSettings);
    box.put(boxAppSettingsKey, !state.ligthTheme);
    emit(ThemeState(icon: !state.icon, ligthTheme: !state.ligthTheme));
  }
}
