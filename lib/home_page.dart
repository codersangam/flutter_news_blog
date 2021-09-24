import 'package:flutter/material.dart';
import 'package:new_blog/widget/news_card_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> tabs = [];

  @override
  void initState() {
    super.initState();
    tabs.add(tab('Technologies'));
    tabs.add(tab('Business'));
    tabs.add(tab('Entertainment'));
    tabs.add(tab('Sports'));
    tabs.add(tab('Health'));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: 'Flutter Blog'.text.make(),
          bottom: TabBar(
            tabs: tabs,
            isScrollable: true,
          ),
          actions: const <Widget>[
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.notifications),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: TabBarView(
          children: tabs.map((model) => const NewsCardWidget()).toList(),
        ),
      ),
    );
  }
}

Widget tab(String tabName) {
  return Tab(
    text: tabName,
  );
}
