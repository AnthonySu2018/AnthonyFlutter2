import 'package:anthonyflutter2/pages/CommentaryPage.dart';
import 'package:anthonyflutter2/pages/VideoPlaybackPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget>bodyWidgetList=[
    VideoPlaybackPage(0),
    CommentaryPage(1),
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: bodyWidgetList[_tabIndex],
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  int _tabIndex = 0;
  List<Icon>normalIcon=[
    const Icon(Icons.touch_app),
    const Icon(Icons.record_voice_over),
    //const Icon(Icons.power_settings_new)
  ];

  List<String> normalTitle = [
    "放视频",
    "讲解词",
    //"开关机",
  ];


  BottomNavigationBar buildBottomNavigation(){
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon:normalIcon[0],label:normalTitle[0]),
          BottomNavigationBarItem(
              icon:normalIcon[1],label:normalTitle[1]),
          //BottomNavigationBarItem(
              //icon:normalIcon[2],label:normalTitle[2]),
        ],
        type:BottomNavigationBarType.fixed,
        currentIndex: _tabIndex,
        backgroundColor:Colors.white,
        //fixedColor:Colors.purple,
        selectedItemColor:Colors.blue,
        unselectedItemColor:Colors.grey,
        iconSize:24.0,
        onTap:(index){
          setState(() {
            _tabIndex =index;
          });
        }
    );
  }

}
