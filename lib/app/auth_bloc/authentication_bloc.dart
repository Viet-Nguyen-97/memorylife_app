import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_lifes/app/auth_bloc/authentication_event.dart';
import 'package:memory_lifes/app/auth_bloc/authentication_state.dart';
import 'package:memory_lifes/model/api/dio_provider.dart';
import 'package:memory_lifes/model/repo/session_repository.dart';
import 'package:memory_lifes/model/repo/user_repository.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository _userRepository;
  final SessionRepository _sessionRepository;

  AuthenticationBloc(
      {@required UserRepository userRepository,
      @required SessionRepository sessionRepository})
      : assert(userRepository != null && sessionRepository != null),
        _userRepository = userRepository,
        _sessionRepository = sessionRepository;

  @override
  AuthenticationState get initialState => Uninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(
      AuthenticationEvent event) async* {
    if (event is AppStarted) {
    } else if (event is AppInitialized) {
      yield* _mapAppStartedToState();
    } else if (event is LoggedIn) {
      print('event is LoggedIn');
      yield* _mapLoggedInToState(event.token);
    } else if (event is LoggedOut) {
      yield* _mapLoggedOutToState();
    }
  }

  Stream<AuthenticationState> _mapAppStartedToState() async* {
    yield Uninitialized();
  }

  Stream<AuthenticationState> _mapLoggedInToState(String token) async* {
    print('_mapLoggedInToState $token');
    await _sessionRepository.saveToken(token);
    yield Authenticated();
  }

  Stream<AuthenticationState> _mapLoggedOutToState() async* {
    yield Unauthenticated();
    _sessionRepository..saveToken(null);
    DioProvider.bearer(null);
    // _userRepository.signOut();
  }
}
