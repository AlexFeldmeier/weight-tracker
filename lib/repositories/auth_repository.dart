import 'package:firebase_auth/firebase_auth.dart';
import 'package:weight_tracker/data_sources/auth_data_source.dart';

class AuthRepository {
  final AuthDataSource _authDataSource;

  Stream<User?> get authStateChanges => _authDataSource.authStateChanges;

  AuthRepository(this._authDataSource);

  Future<UserCredential?> signIn() async {
    return _authDataSource.signIn();
  }

  Future<bool> signOut() async {
    return _authDataSource.signOut();
  }
}
