part of 'start_bloc.dart';

@immutable
abstract class StartState {}

class StartStateLoading extends StartState {}

class StartStateUserNotAuthorized extends StartState {}
