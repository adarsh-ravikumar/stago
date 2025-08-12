// import 'package:flutter/material.dart';
// import 'package:student_frontend/main.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uni_links/uni_links.dart';

import '../Services/pb.dart';
//

// Future<bool> signInWithMicrosoft() async {
//   final response = await supabase.auth.signInWithOAuth(
//     OAuthProvider.azure,
//     scopes: 'email profile openid offline_access',
//   );

//   if (response == true) {
//     // Handle successful sign-in
//     debugPrint("Successful Login");
//     return true;
//   } else {
//     debugPrint("Login failed");
//     return false;
//   }
// }

// Future<bool> signOut() async {
//   await Future.delayed(const Duration(seconds: 1));
//   await supabase.auth.signOut();
//   debugPrint("Logged out successfully");

//   return true;
// }

Future<bool> signInWithMicrosoft() async {
  await pb.collection('users').authWithOAuth2("microsoft", (url) async {
    await launchUrl(url);
  },);

  if (!pb.authStore.isValid) {
    debugPrint("Login failed!");
    return false;
  }

  debugPrint("Auth successfull!");
  return true;
}

Future<bool> signOut() async {
  pb.authStore.clear();
  debugPrint("Logged out successfully");
  return true;
}

void initDeepLinkListener() async {
  uriLinkStream.listen((Uri? uri) {
    if (uri != null && uri.scheme == 'stago' && uri.host == 'auth-callback') {
      final token = uri.queryParameters['pb_auth'];
      if (token != null) {
        pb.authStore.save(token, pb.authStore.record);
      }
    }
  });
}
