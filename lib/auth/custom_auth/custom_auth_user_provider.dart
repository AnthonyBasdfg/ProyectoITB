import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class ProyectoITBAuthUser {
  ProyectoITBAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<ProyectoITBAuthUser> proyectoITBAuthUserSubject =
    BehaviorSubject.seeded(ProyectoITBAuthUser(loggedIn: false));
Stream<ProyectoITBAuthUser> proyectoITBAuthUserStream() =>
    proyectoITBAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
