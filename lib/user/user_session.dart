import 'package:trip_service_dart/exception/collaborator_call_exception.dart';
import 'package:trip_service_dart/user/user.dart';

class UserSession {
  static User getLoggedInUser() {
    throw CollaboratorCallException(
        "This function should not be called in unit test");
  }
}
