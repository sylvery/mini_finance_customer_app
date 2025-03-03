import 'package:flutter/cupertino.dart';

class SlideshowWidget extends StatelessWidget {
  const SlideshowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [
      Image.asset('lib/assets/image1.jpg'),
      Image.asset('lib/assets/image2.jpg'),
      Image.asset('lib/assets/image3.jpg'),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 300,
          child: PageView(
            children: images,
          ),
        ),
      ],
    );
  }
}
