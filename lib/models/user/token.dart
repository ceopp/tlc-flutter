import 'dart:convert';

class Token {
  final String? accessToken;
  final String? refreshToken;
  final String? info;

  const Token({
    this.accessToken,
    this.refreshToken,
    this.info,
  });

  String? get token => accessToken == null ? null : 'Bearer $accessToken';

  factory Token.fromJson(Map<String, dynamic> json) {
    return Token(
      accessToken: json['access_token'],
      refreshToken: json['refresh_token'],
      info: json['info'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
      'refresh_token': refreshToken,
    };
  }

  factory Token.fromString(String text) {
    final Map<String, dynamic> json = jsonDecode(text);
    return Token(
      accessToken: json['access_token'],
      refreshToken: json['refresh_token'],
      info: json['info'],
    );
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
