
import 'package:flutter/material.dart';
import 'package:tereturuk/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget{
  final List<VideoPost> videos;

  const VideoScrollableView({
super.key,
required this.videos

  });
  @override
  Widget build(BuildContext context) {
return PageView.builder(
  scrollDirection:Axis.vertical,
  physics: const BouncingScrollPhysics(),
  itemCount: videos.length,
  itemBuilder: (context, index){

    final VideoPost videoPost = videos[index];

    return Stack(
      children: [
        //VideoPlayer
        SizedBox.expand(
          child: Text('Video') //TODO Widget fullscreen,
        ),


      //Botones
      Positioned(
        bottom: 40,
        right: 20,
        child: Text('Botones')//TODO Widget Buttons
      )
      ],
    );
  }
);
}
}