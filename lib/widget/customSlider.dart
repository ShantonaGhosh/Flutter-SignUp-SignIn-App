import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

// ignore: camel_case_types
class customSlider extends StatelessWidget {
  const customSlider({
    super.key, this.image, this.count,
  });

  final Image? image;
  final int? count;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: count?? 15,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: image ??
              Image.network(
                "https://icms-image.slatic.net/images/ims-web/4aaf95b5-c260-4e32-8a37-45a555dcb2f6.jpg",
                fit: BoxFit.cover,
              ),
        ),
      ),
      options: CarouselOptions(
        aspectRatio: 16 / 6,
        viewportFraction: 1.0,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
