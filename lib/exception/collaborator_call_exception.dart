class CollaboratorCallException implements Exception {
  final String _message;

  CollaboratorCallException(this._message);

  String get message => _message;
}
