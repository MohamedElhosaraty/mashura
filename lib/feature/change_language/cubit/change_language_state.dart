part of 'change_language_cubit.dart';

sealed class ChangeLanguageState {}

final class ChangeLanguageInitial extends ChangeLanguageState {}
final class ChangeLanguageSuccess extends ChangeLanguageState {
  final Locale language;

  ChangeLanguageSuccess({required this.language});
}
