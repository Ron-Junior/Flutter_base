class User {
  int id;
  String name;
  String email;
  String encryptedPassword;
  String accessToken;
  Null passwordResetToken;
  Null expirationDateResetToken;
  Null deviceId;

  User(
      {this.id,
      this.name,
      this.email,
      this.encryptedPassword,
      this.accessToken,
      this.passwordResetToken,
      this.expirationDateResetToken,
      this.deviceId});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    encryptedPassword = json['encrypted_password'];
    accessToken = json['access_token'];
    passwordResetToken = json['password_reset_token'];
    expirationDateResetToken = json['expiration_date_reset_token'];
    deviceId = json['device_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['encrypted_password'] = this.encryptedPassword;
    data['access_token'] = this.accessToken;
    data['password_reset_token'] = this.passwordResetToken;
    data['expiration_date_reset_token'] = this.expirationDateResetToken;
    data['device_id'] = this.deviceId;
    return data;
  }
}