import 'package:flutter/material.dart';
import 'package:student_frontend/Environment/supabase_variables.dart'; // Added to .gitignore, use your own >:(
import 'package:student_frontend/Views/home_page.dart';
import 'package:student_frontend/Views/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(url: supabase_url, anonKey: supabase_anon_key);
  runApp(MyApp());
}

// Global Supabase Variable
final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.dark()),
      routes: {
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
      },
      home: const SplashPage(),
    );
  }
}

// Splash Page to decide which page to show on startup.
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);
    final session = supabase.auth.currentSession;

    if (!mounted) return;

    if (session != null) {
      Navigator.of(context).pushReplacementNamed('/home');
    } else {
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
