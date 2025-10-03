import 'package:flutter/material.dart';

abstract class ChangeLanguageState {
  final Locale language;
  const ChangeLanguageState({required this.language});
}

class ChangeLanguageInitial extends ChangeLanguageState {
  ChangeLanguageInitial() : super(language: const Locale('ar', 'EG'));
}

class ChangeLanguageSuccess extends ChangeLanguageState {
  ChangeLanguageSuccess({required super.language});
}
