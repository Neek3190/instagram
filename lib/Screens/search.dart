import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({super.key});

  // List images = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          height: 35,
          margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 4),
          child: const TextField(
            textAlign: TextAlign.left,
            //             // controller: search,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                filled: true,
                fillColor: Color.fromARGB(255, 237, 234, 234),
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.black87,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                hintStyle: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 173, 170, 170)),
                hintText: "Product, Store, Etc."),
          ),
        ),
        actions: const [
          Icon(
            Icons.location_on_outlined,
            size: 30,
            color: Colors.black,
          )
        ],
      ),
//       body: GridView.custom(
//   gridDelegate: SliverQuiltedGridDelegate(
//     crossAxisCount: 4,
//     mainAxisSpacing: 4,
//     crossAxisSpacing: 4,
//     repeatPattern: QuiltedGridRepeatPattern.inverted,
//     pattern: [
//       QuiltedGridTile(2, 2),
//       QuiltedGridTile(1, 1),
//       QuiltedGridTile(1, 1),
//       QuiltedGridTile(1, 2),
//     ],
//   ),
//   childrenDelegate: SliverChildBuilderDelegate(
//     (context, index) => Tile(index: index),
//   ),
// );
    );
  }
}
