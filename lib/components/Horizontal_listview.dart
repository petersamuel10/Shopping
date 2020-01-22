import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/cats/tshirt.png',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'assets/cats/dress.png',
            image_caption: 'dress',
          ),
          Category(
            image_location: 'assets/cats/jeans.png',
            image_caption: 'pants',
          ),
          Category(
            image_location: 'assets/cats/formal.png',
            image_caption: 'formal',
          ),
          Category(
            image_location: 'assets/cats/informal.png',
            image_caption: 'informal',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_caption, this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 100,
        child: InkWell(
            onTap: () {},
            child: ListTile(
              title: Image.asset(
                image_location,
                height: 80,
                width: 100,
              ),
              subtitle: Container(
                  alignment: Alignment.topCenter,
                  child: Text(
                    image_caption,
                    style: TextStyle(fontSize: 12.0),
                  )),
            )),
      ),
    );
  }
}
