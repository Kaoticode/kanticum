import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common_widget/all_song_row.dart';
import 'package:music_player/view/main_player/main_player_view.dart';
import 'package:music_player/view_model/all_songs_view_model.dart';

class OverviewTab extends StatefulWidget {
  @override
  State<OverviewTab> createState() => _OverviewTabState();
}

class _OverviewTabState extends State<OverviewTab> {
  final allVM = Get.put(AllSongsViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: allVM.allList.length,
          itemBuilder: (context, index) {
            var sObj = allVM.allList[index];

            return AllSongRow(
              sObj: sObj,
              onPressed: () {},
              onPressedPlay: () {
                Get.to(() => const MainPlayerView());
              },
            );
          },
        ),
      ),
    );
  }
}
