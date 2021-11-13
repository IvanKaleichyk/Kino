import 'package:bloc/bloc.dart';
import 'package:kino/core/auth/data/auth_repository.dart';
import 'package:kino/framework/fragments/start/navigator/start_navigator.dart';
import 'package:meta/meta.dart';

part 'start_event.dart';
part 'start_state.dart';

class StartBloc extends Bloc<StartEvent, StartState> {
  final AuthRepository _repository;
  final StartNavigator _navigator;

  StartBloc(this._repository, this._navigator) : super(StartStateLoading()) {
    on<StartEventCheckIfUserAuthorized>(mapStartEventCheckIfUserAuthorizedToState);
    add(StartEventCheckIfUserAuthorized());
  }

  void mapStartEventCheckIfUserAuthorizedToState(
      StartEventCheckIfUserAuthorized event, Emitter<StartState> emmit) async {
    emmit(StartStateLoading());
    final bool isAuthorized = await _repository.isAuthorized();
    if (isAuthorized)
      _navigator.moveToHome();
    else
      emmit(StartStateUserNotAuthorized());
  }
}
