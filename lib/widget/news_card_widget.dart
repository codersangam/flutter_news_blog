import 'package:flutter/material.dart';
import 'package:new_blog/news_details.dart';
import 'package:new_blog/utilities/layout_utility.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:transparent_image/transparent_image.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewsDetails()),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                ClipRRect(
                  child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image:
                          'https://codersangam.com/fanenug/2021/09/honeygain-codersangam.jpg'),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: 'Technology'.text.white.bold.make(),
                  ),
                )
              ],
            ),
            VStack(
              [
                'My First News'.text.xl.bold.makeCentered(),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LayoutUtils.iconText(
                      const Icon(Icons.timer),
                      const Text('2nd Jan 2021'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.favorite_border),
                    )
                  ],
                ),
              ],
            ).p16(),
          ],
        ),
      ),
    );
  }
}
