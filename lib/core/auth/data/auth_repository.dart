import 'package:injectable/injectable.dart';
import 'package:kino/core/auth/data/auth_shared_preference_use_case.dart';
import 'package:kino/core/auth/data/client/auth_client.dart';
import 'package:kino/core/auth/models/session/session_response.dart';
import 'package:kino/core/auth/models/token/token_response.dart';
import 'package:kino/core/data/client/client_data.dart';

abstract class AuthRepository {
  const AuthRepository();

  Future<bool> isAuthorized();

  String? getSessionId();

  Future<TokenResponse> createToken();

  String getUrlAuthMVDBPage(String token);

  Future<SessionResponse> createSessionId();
}

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthClient _client;
  final AuthSharedPreferenceUseCase sharedPreferenceUseCase;

  String currentToken = "";
  String? _sessionId;

  AuthRepositoryImpl(this._client, this.sharedPreferenceUseCase) : super();

  @override
  Future<bool> isAuthorized() async {
    if (_sessionId != null) return true;
    _sessionId = await sharedPreferenceUseCase.getSessionId();
    if (_sessionId != null) return true;
    return false;
  }

  @override
  String? getSessionId() => _sessionId;

  @override
  Future<SessionResponse> createSessionId() async {
    final SessionResponse response =
        await _client.createSession(CreateSessionBody(currentToken));
    sharedPreferenceUseCase.putSessionId(response.sessionId);
    return response;
  }

  @override
  Future<TokenResponse> createToken() async {
    final TokenResponse response = await _client.createToken();
    currentToken = response.token;
    return response;
  }

  @override
  String getUrlAuthMVDBPage(String? token) =>
      "${ClientData.BASE_URL}/authenticate/$token";
}
