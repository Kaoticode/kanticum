import 'package:flutter/material.dart';
import 'package:music_player/view/profile/statCard.dart';
import 'package:music_player/view/profile/tab_one.dart';
import 'package:music_player/view/profile/tab_three.dart';
import 'package:music_player/view/profile/tab_two.dart';

class SettingsView extends StatefulWidget {
  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  SizedBox(height: 20,),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StatCard(label: 'Listeners', value: '1,000'),
                      StatCard(label: 'Songs', value: '500'),
                      StatCard(label: 'Playlists', value: '10'),
                    ],
                  )
                ],
              ),
            ),
            const TabBar(
              tabs: [
                Tab(text: 'Overview'),
                Tab(text: 'Songs'),
                Tab(text: 'Playlists'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  OverviewTab(),
                  SongsTab(),
                  PlaylistsTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
