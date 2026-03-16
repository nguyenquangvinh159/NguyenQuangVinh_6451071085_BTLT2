import 'package:flutter/material.dart';
import '../utils/image_data.dart';
import '../widgets/gallery_item.dart';

class GalleryView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Gallery"),
        centerTitle: true,
      ),

      body: Padding(

        padding: EdgeInsets.all(10),

        child: GridView.builder(

          itemCount: ImageData.images.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,

          ),

          itemBuilder: (context, index) {

            return GalleryItem(
              image: ImageData.images[index],
            );

          },

        ),

      ),

    );
  }
}