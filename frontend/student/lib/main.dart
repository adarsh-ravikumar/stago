import 'package:flutter/material.dart';
import 'package:student_frontend/Auth/auth.dart';
import 'package:student_frontend/Environment/pb.dart';
import 'package:student_frontend/Views/home_page.dart';
import 'package:student_frontend/Views/login_page.dart';

Future<void> main() async {
  runApp(MyApp());
}

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
    initDeepLinkListener();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);
    final session = pb.authStore.record;

    if (!mounted) return;
    debugPrint(session.toString());
    if (session != null) {
      Navigator.of(context).pushReplacementNamed('/home');
      return;
    }

    Navigator.of(context).pushReplacementNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
