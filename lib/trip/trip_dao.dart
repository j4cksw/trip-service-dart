import 'package:trip_service_dart/exception/collaborator_call_exception.dart';
import 'package:trip_service_dart/trip/trip.dart';
import 'package:trip_service_dart/user/user.dart';

class TripDAO {
  static List<Trip> findTripsByUser(User user) {
    throw CollaboratorCallException(
        "This function should not be called in unit test");
  }
}