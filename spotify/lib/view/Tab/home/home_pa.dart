import 'package:flutter/material.dart';
import 'package:spotify/view/Tab/home/widgets/artist.dart';
import 'package:spotify/view/Tab/home/widgets/top_music.dart';
import 'package:spotify/view/tab/home/widgets/weekly.dart';
import 'package:spotify/view/Tab/home/widgets/weekly_title.dart';
import 'package:spotify/view/Tab/widget/custom_titles.dart';
import 'package:spotify/view/Tab/widget/welcome_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 54,
            ),
            WelcomeTitle(
              title: 'Good Morning, Guru',
            ),
            SizedBox(
              height: 32,
            ),
            WeeklyTitle(),
            SizedBox(
              height: 24,
            ),
            WeeklyMusicList(),
            SizedBox(
              height: 16,
            ),
            CustomTitle(title: 'Your Top Mixes'),
            SizedBox(
              height: 12,
            ),
            TopMusic(),
            SizedBox(
              height: 12,
            ),
            CustomTitle(title: 'Suggested Artists'),
            SizedBox(
              height: 24,
            ),
            Artist()
          ],
        ),
      ),
    );
  }
}
