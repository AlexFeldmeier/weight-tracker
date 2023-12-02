import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weight_tracker/repositories/auth_repository.dart';

class LoginCubit extends Cubit<UserCredential?> {
  final AuthRepository _authRepository;

  LoginCubit(this._authRepository) : super(null);

  Future<void> login() async {
    final auth = await _authRepository.signIn();
    emit(auth);
  }
}
