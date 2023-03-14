import "package:flutter/material.dart";
import 'package:gap/gap.dart';
import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/rendering.dart' show ViewportOffset;
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

var names = [2, 30];

class _TestScreenState extends State<TestScreen> {
  XFile? file;
  final ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: (const Icon(Icons.close)),
        title: Center(
          child: Text("Post",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.white,
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text("Next",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: const Color.fromARGB(255, 113, 162, 203),
                  )),
            ),
          )
        ],
        //   backgroundColor: Colors.grey, actions: [Icon(Icons.close),
        // ,
        // Icon(Icons.close),
        // ]
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () async {
                imagePicker.pickImage(source: ImageSource.camera).then((value) {
                  setState(() {
                    if (value != null) {
                      file = value;
                    }
                  });
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white),
                    borderRadius: BorderRadius.circular(60)),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: const NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuImypYXGrh6JX3DIvw8EpNvFb28VZqQfadQ&usqp=CAU'),
                  foregroundImage:
                      file == null ? null : FileImage(File(file!.path)),
                ),
              ),
            ),
            // const Gap(10),
            const Gap(10),
            InkWell(
                onTap: () async {
                  imagePicker
                      .pickImage(source: ImageSource.camera)
                      .then((value) {
                    setState(() {
                      if (value != null) {
                        file = value;
                      }
                    });
                  });
                },
                child: Text(
                  'Upload Photo',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
            const Gap(10),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Recents",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white,
                        )),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ],
                ),
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      // boxShadow: [BoxShadow(color: Colors.white)]
                      border: Border.all(color: Colors.white)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Select Multiple",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.white,
                            )),
                        const Icon(
                          Icons.photo_library,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      // boxShadow: [BoxShadow(color: Colors.white)]
                      border: Border.all(color: Colors.white)),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            )),
            const Gap(10),

            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) =>
            //                 ExampleInstagramFilterSelection(File(file!.path)),
            //           ));
            //     },
            //
            //
            // child: const Text('Edit Photo')),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  side: const BorderSide(
                    width: 2, // the thickness
                    color: Colors.white,
                    // the color of the border
                  )),
              onPressed: () {
                showModalBottomSheet<void>(
                    backgroundColor: Colors.transparent,
                    // context and builder are
                    // required properties in this widget
                    context: context,
                    builder: (BuildContext context) {
                      // we set up a container inside which
                      // we create center column and display text

                      // Returning SizedBox instead of a Container
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),

                        child: GridView.count(crossAxisCount: 3, children: [
                          Container(
                            // color: Colors.amber,
                            child: Image.network(
                              "https://images.unsplash.com/photo-1677419734433-2420e3bf1093?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // // color: Colors.blue,
                            child: Image.network(
                              'https://images.unsplash.com/photo-1677362376803-93af835b3a47?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // // color: Colors.blue,
                            child: Image.network(
                              'https://images.unsplash.com/photo-1677341279389-155310e12f21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // // color: Colors.blue,
                            child: Image.network(
                              'https://images.unsplash.com/photo-1677563256448-e352da12196f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8Ym84alFLVGFFMFl8fGVufDB8fHx8&auto=format&fit=crop&w=1200&q=60',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // // color: Colors.blue,
                            child: Image.network(
                              'https://images.unsplash.com/photo-1677146710299-d45d063e0cdf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1271&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // // color: Colors.blue,
                            child: Image.network(
                              'https://images.unsplash.com/photo-1675180547490-b93306b2ca3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // // color: Colors.blue,
                            child: Image.network(
                              'https://images.unsplash.com/photo-1677077531912-36c1b750c04e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // // color: Colors.blue,
                            child: Image.network(
                              'https://images.unsplash.com/photo-1673368280570-8a42321216c9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // // color: Colors.blue,
                            child: Image.network(
                              'https://images.unsplash.com/photo-1677173225981-4e060ad72dd1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // // color: Colors.blue,
                            child: Image.network(
                              'https://images.unsplash.com/photo-1661264770506-9c74d0cc8f9d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // // color: Colors.blue,
                            child: Image.network(
                              'https://images.unsplash.com/photo-1673785677551-1786b84abad4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // // color: Colors.blue,
                            child: Image.network(
                              'https://images.unsplash.com/photo-1675180547490-b93306b2ca3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ]),

                        // child: Column(
                        //   children: [
                        //
                        // children: [
                        //   Material(
                        //     elevation: 1,
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(12.0),
                        //       child: SizedBox(
                        //         width: MediaQuery.of(context).size.width,
                        //         child: Row(
                        //           mainAxisAlignment:
                        //           MainAxisAlignment.spaceBetween,
                        //           children: const [
                        //             Icon(Icons.arrow_back_ios_new),
                        //             Text(
                        //               'Comments',
                        //               style: TextStyle(
                        //                   fontSize: 16,
                        //                   fontWeight: FontWeight.w500),
                        //             ),
                        //             Icon(Icons.forward),
                        //           ],
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        //   SizedBox(
                        //     height: 280,
                        //     child: ListView.builder(
                        //       scrollDirection: Axis.vertical,
                        //       itemCount: 2,
                        //       itemBuilder: (context, index) {
                        //         return ListTile(
                        //           leading: const CircleAvatar(
                        //             backgroundImage: NetworkImage(
                        //                 'https://images.unsplash.com/photo-1626978407649-de62156f1548?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80'),
                        //           ),
                        //           title: Row(
                        //             children: const [
                        //               Text(
                        //                 'omninos',
                        //                 style: TextStyle(
                        //                     fontWeight: FontWeight.bold,
                        //                     fontSize: 14),
                        //               ),
                        //               SizedBox(
                        //                 width: 5,
                        //               ),
                        //               Text(
                        //                 'Hi this is text',
                        //                 style: TextStyle(
                        // color: Colors.black38,
                        //                     fontWeight: FontWeight.normal,
                        //                     fontSize: 14),
                        //               ),
                        //             ],
                        //           ),
                        //           subtitle: Row(
                        //             children: const [
                        //               Text(
                        //                 '2s',
                        //                 style: TextStyle(fontSize: 12),
                        //               ),
                        //               SizedBox(
                        //                 width: 5,
                        //               ),
                        //               Text(
                        //                 'Reply',
                        //                 style: TextStyle(fontSize: 12),
                        //               )
                        //             ],
                        //           ),
                        //           trailing: const Icon(
                        //             Icons.favorite_border,
                        //             size: 15,
                        //           ),
                        //         );
                        //       },
                        //     ),
                        //   ),
                        //   Container(
                        //     padding:
                        //     const EdgeInsets.symmetric(horizontal: 30),
                        //     child: const TextField(
                        //       decoration: InputDecoration(
                        //           contentPadding:
                        //           EdgeInsets.symmetric(horizontal: 15),
                        //           hintText: 'Comment',
                        //           fillColor:
                        //           Color.fromARGB(31, 153, 153, 153),
                        //           filled: true,
                        //           border: OutlineInputBorder(
                        //               borderSide: BorderSide.none,
                        //               borderRadius: BorderRadius.all(
                        //                   Radius.circular(60)))),
                        //       ),
                        //     )
                        //   ],
                        //
                        // ),
                      );
                    });
              },
              child: Text('showModalBottomSheet',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

// Their code
@immutable
// ignore: must_be_immutable
class ExampleInstagramFilterSelection extends StatefulWidget {
  ExampleInstagramFilterSelection(this.imageLink, {super.key});
  File imageLink;
  @override
  @override
  State<ExampleInstagramFilterSelection> createState() =>
      _ExampleInstagramFilterSelectionState();
}

class _ExampleInstagramFilterSelectionState
    extends State<ExampleInstagramFilterSelection> {
  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  XFile? file;
  final ImagePicker imagePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: _buildPhotoWithFilter(),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: _buildFilterSelector(),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder(
      valueListenable: _filterColor,
      builder: (context, color, child) {
        return Image.file(
          widget.imageLink,
          color: color.withOpacity(0.5),
          colorBlendMode: BlendMode.color,
          fit: BoxFit.cover,
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterSelector(
      onFilterChanged: _onFilterChanged,
      filters: _filters,
    );
  }
}

@immutable
class FilterSelector extends StatefulWidget {
  const FilterSelector({
    super.key,
    required this.filters,
    required this.onFilterChanged,
    this.padding = const EdgeInsets.symmetric(vertical: 24.0),
  });

  final List<Color> filters;
  final void Function(Color selectedColor) onFilterChanged;
  final EdgeInsets padding;

  @override
  State<FilterSelector> createState() => _FilterSelectorState();
}

class _FilterSelectorState extends State<FilterSelector> {
  static const _filtersPerScreen = 5;
  static const _viewportFractionPerItem = 1.0 / _filtersPerScreen;

  late final PageController _controller;
  late int _page;

  int get filterCount => widget.filters.length;

  Color itemColor(int index) => widget.filters[index % filterCount];

  @override
  void initState() {
    super.initState();
    _page = 0;
    _controller = PageController(
      initialPage: _page,
      viewportFraction: _viewportFractionPerItem,
    );
    _controller.addListener(_onPageChanged);
  }

  void _onPageChanged() {
    final page = (_controller.page ?? 0).round();
    if (page != _page) {
      _page = page;
      widget.onFilterChanged(widget.filters[page]);
    }
  }

  void _onFilterTapped(int index) {
    _controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 450),
      curve: Curves.ease,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollable(
      controller: _controller,
      axisDirection: AxisDirection.right,
      physics: const PageScrollPhysics(),
      viewportBuilder: (context, viewportOffset) {
        return LayoutBuilder(
          builder: (context, constraints) {
            final itemSize = constraints.maxWidth * _viewportFractionPerItem;
            viewportOffset
              ..applyViewportDimension(constraints.maxWidth)
              ..applyContentDimensions(0.0, itemSize * (filterCount - 1));

            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                _buildShadowGradient(itemSize),
                _buildCarousel(
                  viewportOffset: viewportOffset,
                  itemSize: itemSize,
                ),
                _buildSelectionRing(itemSize),
                Positioned(
                  bottom: 100,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Save')),
                )
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildShadowGradient(double itemSize) {
    return SizedBox(
      height: itemSize * 2 + widget.padding.vertical,
      child: const DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black,
            ],
          ),
        ),
        child: SizedBox.expand(),
      ),
    );
  }

  Widget _buildCarousel({
    required ViewportOffset viewportOffset,
    required double itemSize,
  }) {
    return Container(
      height: itemSize,
      margin: widget.padding,
      child: Flow(
        delegate: CarouselFlowDelegate(
          viewportOffset: viewportOffset,
          filtersPerScreen: _filtersPerScreen,
        ),
        children: [
          for (int i = 0; i < filterCount; i++)
            FilterItem(
              onFilterSelected: () => _onFilterTapped(i),
              color: itemColor(i),
            ),
        ],
      ),
    );
  }

  Widget _buildSelectionRing(double itemSize) {
    return IgnorePointer(
      child: Padding(
        padding: widget.padding,
        child: SizedBox(
          width: itemSize,
          height: itemSize,
          child: const DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.fromBorderSide(
                BorderSide(width: 6.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CarouselFlowDelegate extends FlowDelegate {
  CarouselFlowDelegate({
    required this.viewportOffset,
    required this.filtersPerScreen,
  }) : super(repaint: viewportOffset);

  final ViewportOffset viewportOffset;
  final int filtersPerScreen;

  @override
  void paintChildren(FlowPaintingContext context) {
    final count = context.childCount;

    // All available painting width
    final size = context.size.width;

    // The distance that a single item "page" takes up from the perspective
    // of the scroll paging system. We also use this size for the width and
    // height of a single item.
    final itemExtent = size / filtersPerScreen;

    // The current scroll position expressed as an item fraction, e.g., 0.0,
    // or 1.0, or 1.3, or 2.9, etc. A value of 1.3 indicates that item at
    // index 1 is active, and the user has scrolled 30% towards the item at
    // index 2.
    final active = viewportOffset.pixels / itemExtent;

    // Index of the first item we need to paint at this moment.
    // At most, we paint 3 items to the left of the active item.
    final min = math.max(0, active.floor() - 3).toInt();

    // Index of the last item we need to paint at this moment.
    // At most, we paint 3 items to the right of the active item.
    final max = math.min(count - 1, active.ceil() + 3).toInt();

    // Generate transforms for the visible items and sort by distance.
    for (var index = min; index <= max; index++) {
      final itemXFromCenter = itemExtent * index - viewportOffset.pixels;
      final percentFromCenter = 1.0 - (itemXFromCenter / (size / 2)).abs();
      final itemScale = 0.5 + (percentFromCenter * 0.5);
      final opacity = 0.25 + (percentFromCenter * 0.75);

      final itemTransform = Matrix4.identity()
        ..translate((size - itemExtent) / 2)
        ..translate(itemXFromCenter)
        ..translate(itemExtent / 2, itemExtent / 2)
        ..multiply(Matrix4.diagonal3Values(itemScale, itemScale, 1.0))
        ..translate(-itemExtent / 2, -itemExtent / 2);

      context.paintChild(
        index,
        transform: itemTransform,
        opacity: opacity,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CarouselFlowDelegate oldDelegate) {
    return oldDelegate.viewportOffset != viewportOffset;
  }
}

@immutable
class FilterItem extends StatelessWidget {
  const FilterItem({
    super.key,
    required this.color,
    this.onFilterSelected,
  });

  final Color color;
  final VoidCallback? onFilterSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFilterSelected,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Image.network(
              'https://images.unsplash.com/photo-1626978407649-de62156f1548?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
              color: color.withOpacity(0.5),
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.hardLight,
            ),
          ),
        ),
      ),
    );
  }
}
