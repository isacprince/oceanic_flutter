class UserData {
  static final UserData _instance = UserData._internal();

  String? _email;
  String? _password;

  factory UserData() {
    return _instance;
  }

  UserData._internal();

  void saveUser(String email, String password) {
    _email = email;
    _password = password;
  }

  bool checkUser(String email, String password) {
    return _email == email && _password == password;
  }
}
