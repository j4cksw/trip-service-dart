import 'package:trip_service_dart/trip/trip.dart';
import 'package:trip_service_dart/trip/trip_dao.dart';
import 'package:trip_service_dart/user/user.dart';
import 'package:trip_service_dart/user/user_session.dart';

class TripService {
  List<Trip> getTripsByUser(User user) {
    var tripList = List<Trip>.empty();
    final loggedUser = UserSession.getLoggedInUser();
    var isFriend = false;

    for (User friend in user.getFriends) {
      if (friend == loggedUser) {
        isFriend = true;
        break;
      }
    }

    if (isFriend) {
      tripList = TripDAO.findTripsByUser(user);
    }

    return tripList;
  }
}
