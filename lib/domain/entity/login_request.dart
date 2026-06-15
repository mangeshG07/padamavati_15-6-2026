class LoginRequest {
  final String phone;
  final String otp;

  LoginRequest(this.phone, {this.otp = ''});
}
