import 'package:flutter/material.dart';

class drawerGallery extends StatefulWidget {
  const drawerGallery({super.key});

  @override
  State<drawerGallery> createState() => _drawerGalleryState();
}

class _drawerGalleryState extends State<drawerGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: const Center(
        child: Text('Gallery'),
      ),
      );
  }
}