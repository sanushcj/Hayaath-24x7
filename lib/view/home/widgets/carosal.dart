import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CurosalSliderHome extends StatelessWidget {
  const CurosalSliderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 4,
      child: CarouselSlider(
        items: imagetoCarosal(),
        options: CarouselOptions(
          viewportFraction: 1,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 18 / 8,
        ),
      ),
    );
  }

  List<Widget> imagetoCarosal() {
    return corosimg
        .map((String e) => Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  filterQuality: FilterQuality.high,
                  image: NetworkImage(
                    e,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ))
        .toList();
  }
}

List<String> corosimg = <String>[
  'https://images.pexels.com/photos/5996762/pexels-photo-5996762.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/52527/dentist-pain-borowac-cure-52527.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/263337/pexels-photo-263337.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/3902881/pexels-photo-3902881.jpeg?auto=compress&cs=tinysrgb&w=600'
];
