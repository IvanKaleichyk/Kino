import 'package:injectable/injectable.dart';
import 'package:kino/core/auth/data/client/auth_client.dart';
import 'package:kino/core/auth/models/session/session_response.dart';
import 'package:kino/core/auth/models/token/token_response.dart';

abstract class AuthDataSource {
  const AuthDataSource();

  Future<TokenResponse> createToken();

  String getUrlAuthMVDBPage(String token);

  Future<SessionResponse> createSessionId();
}

@Singleton(as: AuthDataSource)
class AuthDataSourceImpl extends AuthDataSource {
  final AuthClient _client;

  const AuthDataSourceImpl(this._client) : super();

  @override
  Future<SessionResponse> createSessionId() => _client.createSession();

  @override
  Future<TokenResponse> createToken() => _client.createToken();

  @override
  String getUrlAuthMVDBPage(String token) =>
      "https://www.themoviedb.org/authenticate/$token";
}
