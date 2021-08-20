import 'package:superstarteam/data_source/local/local_storage.dart';
import 'package:superstarteam/models/user/token.dart';

class LocalRepository {
  static Token get getToken {
    final _token = LocalStorageApi.instance!.getToken;
    if (_token == null) {
      return const Token();
    } else {
      return Token.fromString(_token);
    }
  }

  static void setToken(Token t) {
    LocalStorageApi.instance!.setToken(
      t.toString(),
    );
  }

  static void dropToken() {
    LocalStorageApi.instance!.clear();
  }
}
