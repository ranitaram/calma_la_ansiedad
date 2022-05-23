import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class RoundedImageNetwork extends StatelessWidget {
  final String imagePath;
  final double size;

  const RoundedImageNetwork(
      {required Key key, required this.imagePath, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(imagePath)),
          borderRadius: BorderRadius.circular(size),
          color: Colors.black),
    );
  }
}

class RoundedImageFile extends StatelessWidget {
  final PlatformFile image;
  final double size;

  const RoundedImageFile(
      {required Key key, required this.image, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(image.path)),
          borderRadius: BorderRadius.circular(size),
          color: Colors.black),
    );
  }
}

class RoundedImageNetworkWithStatusIndicator extends RoundedImageNetwork {
  final bool isActive;

  const RoundedImageNetworkWithStatusIndicator({
    required Key key,
    required this.isActive,
    required String imagePath,
    required double size,
  }) : super(key: key, imagePath: imagePath, size: size);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomRight,
      children: [
        super.build(context),
        Container(
          height: size * 0.20,
          width: size * 0.20,
          decoration: BoxDecoration(
            color: isActive ? Colors.green : Colors.red,
            borderRadius: BorderRadius.circular(size),
          ),
        )
      ],
    );
  }
}
