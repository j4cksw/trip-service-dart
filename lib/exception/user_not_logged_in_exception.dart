class UserNotLoggedInException implements Exception {
  final String _message;

  UserNotLoggedInException(this._message);

  String get message => _message;
}