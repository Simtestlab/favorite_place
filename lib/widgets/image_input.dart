// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  void _takenPicture() {}
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
          width: 2,
        ),
      ),
      height: 200,
      width: double.infinity,
      alignment: Alignment.center,
      child: TextButton.icon(
          onPressed: _takenPicture,
          label: const Text('Take Picture'),
          icon: const Icon(Icons.camera)),
    );
  }
}
