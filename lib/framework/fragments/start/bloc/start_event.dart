part of 'start_bloc.dart';

@immutable
abstract class StartEvent{}

class StartEventCheckIfUserAuthorized extends StartEvent{}
