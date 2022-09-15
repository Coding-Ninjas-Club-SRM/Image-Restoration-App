import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PreviousImagesPage extends StatelessWidget {
  const PreviousImagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromARGB(255, 30, 47, 75),
              Color.fromARGB(255, 48, 72, 110)
            ],
            stops: [0.7, 1.0],
          )),
        ),
        // backgroundColor: Color(0xFF21334F),
        title: Text('Previous Images'),
        centerTitle: true,
      ),
      body:
          Container(margin: EdgeInsets.all(12), child: masonryLayout(context)),
      bottomNavigationBar: ConvexAppBar(
          backgroundColor: Color(0xFF21334F),
          items: [
            TabItem(icon: Icons.image, title: 'Collections'),
            TabItem(icon: Icons.upload, title: 'Upload'),
            TabItem(icon: Icons.person, title: 'Profile'),
          ],
          initialActiveIndex: 1,
          onTap: (int i) => print('click index=$i')),
    );
  }

  Widget masonryLayout(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: 12,
      crossAxisSpacing: 8,
      mainAxisSpacing: 6,
      gridDelegate:
          SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: (index % 2 == 0)
              ? Image.network("https://picsum.photos/200/300?random=${index}")
              : Image.network("https://picsum.photos/300/200?random=${index}"),
        );
      },
    );
  }
}
