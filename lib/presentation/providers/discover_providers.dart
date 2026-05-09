

import 'package:flutter/material.dart';
import 'package:tereturuk/domain/entities/video_post.dart';
import 'package:tereturuk/infraestructure/models/local_video_model.dart';
import 'package:tereturuk/shared/data/local_video_post.dart';

class DiscoverProviders extends ChangeNotifier{

  bool initialLoding = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async{

    final List<VideoPost> newVideos = VideoPost.map(
      (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()

    ).toList();

    videos.addAll(newVideos);
    initialLoding = false;

    notifyListeners();
  }
}