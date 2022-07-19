import 'package:flutter/material.dart';

import '../Functions.dart';

class ImageContainer extends StatelessWidget {
  final imageModel;
  const ImageContainer({Key? key, required this.imageModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: NetworkImage(imageModel.getImgUrl()),
          fit: BoxFit.cover,
        ),
      ),
      child: Text(
        imageModel.getImgLikes(),
        style: cstmTextStyle(),
      ),
    );
  }
}
