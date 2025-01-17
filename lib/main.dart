import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/presentation/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_first_mobile_app/firebase_options.dart'; // Import pour DefaultFirebaseOptions


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  initInjection(); // Assurez-vous que cette fonction initialise les dépendances nécessaires

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CarBloc>()..add(LoadCars()), // Assurez-vous que getIt est bien configuré
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            useMaterial3: true,
          ),
        ),
        home: const OnboardingPage(), // Ajout du const si applicable
      ),
    );
  }
}
