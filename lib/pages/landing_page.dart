import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_login_app/pages/login_page.dart';
import 'package:custom_login_app/widgets/custom_button.dart';
import 'package:custom_login_app/widgets/custom_carousel_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Expanded(
                child: CarouselSlider(
                  items: const [
                    CustomCarouselItem(
                      imageUrl:
                          'https://cdn.pixabay.com/photo/2016/02/13/13/11/oldtimer-1197800_1280.jpg',
                      smallTitle: 'Future',
                      title: 'Dive Into Self-Driving Cars',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In cursus elit justo, ac pellentesque erat iaculis in. Nam accumsan felis.',
                    ),
                    CustomCarouselItem(
                      imageUrl:
                          'https://cdn.pixabay.com/photo/2016/11/23/17/24/woman-1853936_1280.jpg',
                      smallTitle: 'Future',
                      title: 'Dive Into Self-Driving Cars',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In cursus elit justo, ac pellentesque erat iaculis in. Nam accumsan felis.',
                    ),
                    CustomCarouselItem(
                      imageUrl:
                          'https://cdn.pixabay.com/photo/2018/05/02/09/29/auto-3368094_1280.jpg',
                      smallTitle: 'Future',
                      title: 'Dive Into Self-Driving Cars',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In cursus elit justo, ac pellentesque erat iaculis in. Nam accumsan felis.',
                    ),
                  ],
                  options: CarouselOptions(
                    autoPlay: false,
                    viewportFraction: 1,
                    aspectRatio: 2.0,
                    initialPage: 1,
                    height: 480,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 64.0),
                child: CustomButton(
                  text: 'Ir a Login',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginPage()),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
