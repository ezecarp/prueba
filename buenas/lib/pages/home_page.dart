import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/images_pages.dart';

import '../data/image_datas.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView.extent(
          maxCrossAxisExtent: 350.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          children: _listImage,
        ));
  }

  List<Widget> get _listImage {
    List<Widget> _listImage = [];

    for (var image in images) {
      _listImage.add(GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ImagePage(url: image)));
          },
          child: Hero(
            tag: image,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          )));
    }

    return _listImage;
  }
}
