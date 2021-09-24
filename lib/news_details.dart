import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:new_blog/utilities/layout_utility.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:transparent_image/transparent_image.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: FadeInImage.memoryNetwork(
                fit: BoxFit.cover,
                placeholder: kTransparentImage,
                image:
                    'https://codersangam.com/fanenug/2021/09/honeygain-codersangam.jpg',
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            expandedHeight: 250,
          ),
          SliverFillRemaining(
            child: newsDetailSection(),
          ),
        ],
      ),
    );
  }
}

Widget newsDetailSection() {
  return Container(
    padding: const EdgeInsets.all(15),
    child: VStack(
      [
        row1(),
        LayoutUtils.iconText(
          const Icon(Icons.timer),
          const Text('2nd Jan 2021'),
        ),
        const SizedBox(
          height: 15,
        ),
        'My First News'.text.xl.bold.make(),
        const SizedBox(
          child: Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          width: 100,
        ),
        Expanded(
            child: Html(
                data:
                    "<p>This is first Paragraph</p><p>This is second Paragraph</p>"))
      ],
      alignment: MainAxisAlignment.start,
      crossAlignment: CrossAxisAlignment.start,
    ),
  );
}

Widget row1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Align(
        alignment: Alignment.topLeft,
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),
          child: 'Technology'.text.bold.white.make(),
        ),
      ),
      Align(
        alignment: Alignment.topRight,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.nightlight),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark),
            ),
          ],
        ),
      ),
    ],
  );
}
