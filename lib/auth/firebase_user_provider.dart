import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ApisampleFirebaseUser {
  ApisampleFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ApisampleFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ApisampleFirebaseUser> apisampleFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ApisampleFirebaseUser>(
      (user) {
        currentUser = ApisampleFirebaseUser(user);
        return currentUser!;
      },
    );
