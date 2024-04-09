part of 'config_cubit.dart';

@immutable
sealed class ConfigState {}

final class ConfigInitial extends ConfigState {}
class ConfigLoadedState extends ConfigState {
  final bool check;
  ConfigLoadedState({required this.check});
}
