import 'package:firebase_auth/firebase_auth.dart' as fb_auth;
import 'package:jhanas/api/graphql/user.graphql.dart' as gql_user;

class User {
  final fb_auth.User? _fb;
  final gql_user.Fragment$User me;

  User({fb_auth.User? fb, required this.me}) : _fb = fb;

  String? get firebaseId => _fb?.uid;
  String get userId => me.id;

  String? get displayName => me.displayname != '' ? me.displayname : _fb?.displayName;
  String? get photoURL => _fb?.photoURL;
}
