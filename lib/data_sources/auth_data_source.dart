import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthDataSource {
  final FirebaseAuth _auth;

  AuthDataSource(this._auth);

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<UserCredential?> signIn() async {
    try {
      return await _auth.signInAnonymously();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }

  Future<bool> signOut() async {
    try {
      await _auth.signOut();
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return false;
  }
}
