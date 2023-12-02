import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weight_tracker/data_sources/auth_data_source.dart';
import 'package:weight_tracker/data_sources/weight_data_source.dart';
import 'package:weight_tracker/firebase_options.dart';
import 'package:weight_tracker/repositories/auth_repository.dart';
import 'package:weight_tracker/repositories/weight_repository.dart';
import 'package:weight_tracker/router.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //
        // ----- Resources -----
        //
        Provider(
          create: (_) => FirebaseAuth.instance,
        ),
        Provider(
          create: (_) => FirebaseFirestore.instance,
        ),
        //
        // ----- Data sources -----
        //
        Provider(
          create: (_) => AuthDataSource(
            context.read<FirebaseAuth>(),
          ),
        ),
        Provider(
          create: (_) => WeightDataSource(
            context.read<FirebaseFirestore>(),
          ),
        ),
        //
        // ----- Repositories -----
        //
        Provider(
          create: (_) => AuthRepository(
            context.read<AuthDataSource>(),
          ),
        ),
        Provider(
          create: (_) => WeightRepository(
            context.read<WeightDataSource>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        title: 'Weight Tracker',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.red,
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
