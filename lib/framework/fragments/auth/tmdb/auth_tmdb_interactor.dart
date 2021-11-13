import 'package:injectable/injectable.dart';
import 'package:kino/core/auth/data/auth_repository.dart';
import 'package:kino/core/auth/models/token/token_response.dart';

@singleton
class AuthTmdbInteractor {
  final AuthRepository _repository;

  const AuthTmdbInteractor(this._repository);

  static const String ALLOW = "allow";
  static const String DENY = "deny";

  Future<String> getAuthUrl() async {
    final TokenResponse tokenResponse = await _repository.createToken();
    return _repository.getUrlAuthMVDBPage(tokenResponse.token);
  }

  AuthUrlState handleUrl(String url) {
    if (url.endsWith(ALLOW))
      return AuthUrlState.allow;
    else if (url.endsWith(DENY))
      return AuthUrlState.deny;
    else
      return AuthUrlState.other;
  }
}

enum AuthUrlState { allow, deny, other }
