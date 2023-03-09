import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryViewPage extends StatefulWidget {
  final int index;
  final List img;
  const StoryViewPage(this.img, this.index, {Key? key}) : super(key: key);

  @override
  State<StoryViewPage> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryViewPage> {
  final storyController = StoryController();

  @override
  void dispose() {
    super.dispose();
    storyController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          StoryView(
            controller: storyController,
            storyItems: [
              // int i = widget.index because we want to load the story just after the clicked item
              for (int i = widget.index; i < widget.img.length; i++)
                StoryItem.inlineImage(
                  imageFit: BoxFit.contain,
                  url: (widget.img[i]),
                  controller: storyController,
                  // caption: const Text(
                  //   "Caption Here",
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     backgroundColor: Colors.black54,
                  //     fontSize: 17,
                  //   ),
                  // ),
                ),
            ],
            onStoryShow: (s) {},
            onComplete: () {},
            progressPosition: ProgressPosition.top,
            repeat: false,
            inline: true,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.grey,
                size: 40,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
