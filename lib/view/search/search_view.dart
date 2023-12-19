import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common/color_extension.dart';
import 'package:music_player/common_widget/recommended_cell.dart';
import 'package:music_player/common_widget/title_section.dart';
import 'package:music_player/view_model/search_view_model%20copy.dart';
import 'package:music_player/view_model/splash_view_model.dart';

import '../../common_widget/playlist_cell.dart';
import '../../common_widget/songs_row.dart';
import '../../common_widget/swiper_card.dart';
import '../../common_widget/view_all_section.dart';
import '../../view_model/home_view_model.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final homeVM = Get.put(SearchViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.bg,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                        children: [
              Expanded(
                child: Container(
                  height: 38,
                  decoration: BoxDecoration(
                    color: const Color(0xff292E4B),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: TextField(
                    controller: homeVM.txtSearch.value,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 20),
                        prefixIcon: Container(
                          margin: const EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          width: 30,
                          child: Image.asset(
                            "assets/img/search.png",
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                            color: TColor.primaryText28,
                          ),
                        ),
                        hintText: "Search album song",
                        hintStyle: TextStyle(
                          color: TColor.primaryText28,
                          fontSize: 13,
                        )),
                  ),
                ),
              )
                        ],
                      ),
            ),
            SizedBox(height: 20,),
           // Swiper cards
          SwiperCards(),
          ],
        ),
      ),
    );
  }
}
