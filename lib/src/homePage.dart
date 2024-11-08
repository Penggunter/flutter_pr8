import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFp9bdpb-XQBoeE5w7tdxKKcVa5mYf5d0_XQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROZApGAp8SYKNlmMWTVKV47aCDFxf9BuUF7g&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXSbMmwjXF2cUqS2WTA-GFBfwt7T78kQkL2g&s',
    'https://sun9-34.userapi.com/s/v1/ig2/14pGm3NfyASq3k9LG6jHtZEZAyQJktCJ_nhuwTqtK8jsu43K4rwmTLbnVMJpRZPhbwCRFlfbW3TPNTOYgJ86XAwS.jpg?quality=96&as=32x24,48x36,72x54,108x81,160x119,240x179,360x269,480x358,540x403,640x478,720x537,1080x806&from=bu&u=I66RrBnmTuMmoV_D6ZJ3YJhX8QgdQXJmeJ0wi92EIGY&cs=807x602',
    'https://sun9-77.userapi.com/s/v1/ig2/I2-ur_xSDmpf7iHu8qQ6b9YDJn8nPtCQomqQqJYALOOgB5Fm19K6yf_1u3lsVa1Sscr2nCYknTeKufEmis4CSJel.jpg?quality=96&as=32x15,48x22,72x33,108x49,160x73,240x110,360x164,480x219,540x246,640x292,720x329,881x402&from=bu&u=SUzKW1XIYpRqHcgN1OILqJ_RB5SWdm-qZL0KLQekfZ4&cs=807x368'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _imageUrls.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: CachedNetworkImage(
              fit: BoxFit.fitWidth,
              imageUrl: _imageUrls[index],
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
          ),
        ),
      )
  
    );
  }
}