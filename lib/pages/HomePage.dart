import 'package:anthonyflutter2/pages/CommentaryPage.dart';
import 'package:anthonyflutter2/pages/MethodChannelPage.dart';
import 'package:anthonyflutter2/pages/VideoPlaybackPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title:const Text("展厅助手"),backgroundColor: Colors.blue,),
      body: buildBodyFunction(),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  int _tabIndex = 0;

  Widget buildBodyFunction(){
    //帧布局结合透明布局
    return Stack(children: <Widget>[
      Opacity(opacity: _tabIndex==0?1:0,child: VideoPlaybackPage(0),),
      Opacity(opacity: _tabIndex==1?1:0,child: CommentaryPage(1),),
      Opacity(opacity: _tabIndex==2?1:0,child: MethodChannelPage(2),),
    ],);}


  List<Icon>normalIcon=[
    const Icon(Icons.touch_app),
    const Icon(Icons.record_voice_over),
    const Icon(Icons.bug_report)
  ];

  List<String> normalTitle = [
    "放视频",
    "提词器",
    "测试页",
  ];



  BottomNavigationBar buildBottomNavigation(){
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon:normalIcon[0],label:normalTitle[0]),
          BottomNavigationBarItem(
              icon:normalIcon[1],label:normalTitle[1]),
          BottomNavigationBarItem(
              icon:normalIcon[2],label:normalTitle[2]),
        ],
        type:BottomNavigationBarType.fixed,
        currentIndex: _tabIndex,
        backgroundColor:Colors.blue,
        //fixedColor:Colors.purple,
        selectedItemColor:Colors.white,
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
