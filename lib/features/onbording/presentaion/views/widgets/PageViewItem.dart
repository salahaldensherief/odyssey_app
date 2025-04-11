import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      this.backgraoundImage});

  final String image;
  final String title;
  final String description;
  final String? backgraoundImage;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
        alignment: Alignment.topLeft,
        child: Container(
          height: 550,
          width: 550,
          padding: EdgeInsets.only(left: 16, top: 32, bottom: 40, right: 32),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                bottomRight: Radius.elliptical(400, 400),
                topRight: Radius.circular(32),
                bottomLeft: Radius.circular(32),
              ),
              color: Colors.blue.shade200),
        ),
      ),
      Center(
        child: Image.asset(width: 300, image),
      ),
      if (backgraoundImage != null && backgraoundImage!.isNotEmpty)
        Center(
          child: Image.asset(
            width: 350,
            backgraoundImage!,
          ),
        ),
      Padding(
        padding: const EdgeInsets.only(bottom: 200),
        child: Container(
          alignment: Alignment.bottomCenter,
          width: double.maxFinite,
          child: Text(
            textAlign: TextAlign.center,
            title,
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'assets/fonts/Cairo-SemiBold.ttf',
              color: Colors.black,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 140),
        child: Container(
          alignment: Alignment.bottomCenter,
          width: double.maxFinite,
          child: Text(
            textAlign: TextAlign.center,
            description,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'assets/fonts/Cairo-SemiBold.ttf',
              color: Colors.black,
            ),
          ),
        ),
      ),
    ]);
  }
}
