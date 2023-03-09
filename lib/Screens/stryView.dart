import 'package:flutter/material.dart';
// import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';

class StoryPageview extends StatefulWidget {
  const StoryPageview({super.key});

  @override
  State<StoryPageview> createState() => _StoryPageviewState();
}

class _StoryPageviewState extends State<StoryPageview> {
  final _controller = StoryController();
  @override
  Widget build(BuildContext context) {
    final List<StoryItem> storyItems = [
      StoryItem.text(
          title: '''“When you talk, you are only repeating something you know.
       But if you listen, you may learn something new.” 
       – Dalai Lama''', backgroundColor: Colors.blueGrey),
      StoryItem.pageImage(
          url:
              "https://images.unsplash.com/photo-1553531384-cc64ac80f931?ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8bW91bnRhaW58ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          controller: _controller),
      StoryItem.pageImage(
          url: "https://wp-modula.com/wp-content/uploads/2018/12/gifgif.gif",
          controller: _controller,
          imageFit: BoxFit.contain),
    ];
    return Scaffold(
      appBar: AppBar(),
      body: StoryView(
        storyItems: storyItems,
        controller: _controller,
        // inline: true,
        repeat: false,
      ),
    );
  }
}
