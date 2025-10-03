import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'change_language_state.dart';

class ChangeLanguageCubit extends Cubit<ChangeLanguageState> {
  ChangeLanguageCubit() : super(ChangeLanguageInitial());

  void changeLanguage(Locale newLocale) {
    emit(ChangeLanguageSuccess(language: newLocale));
  }
}
