import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weight_tracker/repositories/auth_repository.dart';
import 'package:weight_tracker/screens/login/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(context.read<AuthRepository>()),
      child: BlocListener<LoginCubit, UserCredential?>(
        listener: (context, state) {
          if (state != null) {
            context.go('/list');
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Weight Tracker'),
          ),
          body: Center(
            child: Builder(
              builder: (context) => ElevatedButton(
                onPressed: () => context.read<LoginCubit>().login(),
                child: const Text('Login'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
