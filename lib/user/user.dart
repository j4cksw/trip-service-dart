import 'package:trip_service_dart/trip/trip.dart';

class User {
  final List<Trip> _trips;
  final List<User> _friends;

  User(this._trips, this._friends);

  List<User> get getFriends {
    return _friends;
  }

  addFriend(User user) {
    _friends.add(user);
  }

  List<Trip> get getTrips {
    return _trips;
  }

  addTrip(Trip trip) {
    _trips.add(trip);
  }
}
