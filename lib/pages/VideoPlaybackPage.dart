import 'package:flutter/material.dart';


//bottomNavigationBar结合独立的StatefulWidget使用 首页面
class VideoPlaybackPage extends StatefulWidget {
  //页面标识
  int pageIndex;
  //构造函数
  VideoPlaybackPage(this.pageIndex,{super.key}) ;
  @override
  State<StatefulWidget> createState() {
    return VideoPlaybackPageState();
  }
}
class VideoPlaybackPageState extends State<VideoPlaybackPage> {
  //页面创建时初始化函数
  @override
  void initState() {
    super.initState();
    print("页面创建${widget.pageIndex}");
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("当前页面标识为${widget.pageIndex}"),
    );
  }

  //页面销毁时回调函数
  @override
  void dispose() {
    super.dispose();
    print("页面消失${widget.pageIndex}");
  }
}