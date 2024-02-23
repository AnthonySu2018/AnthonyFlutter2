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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(

          children: [
          const Text("序厅LED大屏",style: TextStyle(fontSize: 35,fontStyle: FontStyle.italic),),
          const Text(""),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                    onPressed: (){},
                    color: Colors.blue,shape:const StadiumBorder(side:BorderSide(width: 2,color:Colors.lightBlue)),
                    child:const Text("视频",style: TextStyle(fontSize: 25)),),
                MaterialButton(
                    onPressed: (){},
                    color: Colors.blue,shape:const StadiumBorder(side:BorderSide(width: 2,color:Colors.lightBlue)),
                    child:const Text("停止",style: TextStyle(fontSize: 25)), ),
                MaterialButton(
                    onPressed: (){},
                    color: Colors.blue,shape:const StadiumBorder(side:BorderSide(width: 2,color:Colors.lightBlue)),
                    child:const Text("拍照",style: TextStyle(fontSize: 25)), ),
          ]),
        ],),
        Column(

          children: [
          const Text("历史墙投影仪",style: TextStyle(fontSize: 35,fontStyle: FontStyle.italic),),
          const Text(""),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                    onPressed: (){},
                    color: Colors.blue,shape:const StadiumBorder(side:BorderSide(width: 2,color:Colors.lightBlue)),
                    child:const Text("视频",style: TextStyle(fontSize: 25)), ),
                MaterialButton(
                    onPressed: (){},
                    color: Colors.blue,shape:const StadiumBorder(side:BorderSide(width: 2,color:Colors.lightBlue)),
                    child:const Text("停止",style: TextStyle(fontSize: 25)), ),
          ]),
        ],),
        Column(

          children: [
          const Text("intel vision",style: TextStyle(fontSize: 35,fontStyle: FontStyle.italic),),
          const Text(""),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                    onPressed: (){},
                    color: Colors.blue,shape:const StadiumBorder(side:BorderSide(width: 2,color:Colors.lightBlue)),
                    child:const Text("视频",style: TextStyle(fontSize: 25)), ),
                MaterialButton(
                    onPressed: (){},
                    color: Colors.blue,shape:const StadiumBorder(side:BorderSide(width: 2,color:Colors.lightBlue)),
                    child:const Text("停止",style: TextStyle(fontSize: 25)), ),
          ]),
        ],),
      ],

    );
  }

  //页面销毁时回调函数
  @override
  void dispose() {
    super.dispose();
    print("页面消失${widget.pageIndex}");
  }
}