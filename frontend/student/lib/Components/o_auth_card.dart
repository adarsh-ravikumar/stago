import 'package:flutter/material.dart';

class OAuthCard extends StatelessWidget {
  final String imageUri;
  const OAuthCard({super.key, required this.imageUri});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Colors.white,
      ),
      child: Column(children: [Image(image: AssetImage(imageUri))]),
    );
  }
}
