import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children: [
          Image(
            image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Red_2019_Ferrari_SF90_Stradale_%2848264238897%29_%28cropped%29.jpg/1200px-Red_2019_Ferrari_SF90_Stradale_%2848264238897%29_%28cropped%29.jpg'
              
            )),
            Image(
            image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Red_2019_Ferrari_SF90_Stradale_%2848264238897%29_%28cropped%29.jpg/1200px-Red_2019_Ferrari_SF90_Stradale_%2848264238897%29_%28cropped%29.jpg'
            )
            ),
            Image(image: AssetImage('assets/FERARI.jpeg'))
              
        ], 
      );
  }
}