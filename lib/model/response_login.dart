class ResponseLogin {
  final bool success;
  final String? token;
  final int? expiresIn;
  final String? message;

  ResponseLogin(
      {required this.success, this.token, this.expiresIn, this.message});

  factory ResponseLogin.fromJson(Map<String, dynamic> json) => ResponseLogin(
      success: json["success"],
      token: json["token"] != null ? json["token"] : null,
      expiresIn: json["expires_in"] != null ? json["expires_in"] : null,
      message: json["message"] != null ? json["message"] : null);
}
