import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/widget/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widget/customSlider.dart';
import '../widget/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppbar(),
      body: Column(
        children: const [
          customSlider(),
        ],
      ),
    );
  }
}

