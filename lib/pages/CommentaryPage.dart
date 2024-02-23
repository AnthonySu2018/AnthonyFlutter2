import 'package:flutter/material.dart';


//bottomNavigationBar结合独立的StatefulWidget使用 首页面
class CommentaryPage extends StatefulWidget {
  //页面标识
  int pageIndex;
  //构造函数
  CommentaryPage(this.pageIndex,{super.key}) ;
  @override
  State<StatefulWidget> createState() {
    return CommentaryPageState();
  }
}
class CommentaryPageState extends State<CommentaryPage> {
  String value = "1";

  //页面创建时初始化函数
  @override
  void initState() {
    super.initState();
    print("页面创建${widget.pageIndex}");
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        DropdownButton(
          items: <DropdownMenuItem<String>>[
            DropdownMenuItem(value: "1",child: Text("Area1: 序厅",style: TextStyle(color: value=="1"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "2",child: Text("Area2: 英特尔产品技术发展历史展区",style: TextStyle(color: value=="2"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "3",child: Text("Area3: intel vision ",style: TextStyle(color: value=="3"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "4",child: Text("Area4: 裸眼3D区",style: TextStyle(color: value=="4"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "5",child: Text("Area5: 服务器生态与产品方案展区",style: TextStyle(color: value=="5"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "6",child: Text("Area6: CCG",style: TextStyle(color: value=="6"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "7",child: Text("Area7: NEX网络和边缘方案及生态区",style: TextStyle(color: value=="7"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "8",child: Text("Area8: 结语",style: TextStyle(color: value=="8"?Colors.blue:Colors.grey),),),
          ],
          hint:const Text("提示信息"),// 当没有初始值时显示
          onChanged: (selectValue){//选中后的回调
            setState(() {
            value = selectValue!;
            });
          },
          value: value,// 设置初始值，要与列表中的value是相同的
          elevation: 10,//设置阴影
          style: const TextStyle(//设置文本框里面文字的样式
            color: Colors.blue,
            fontSize: 20
          ),
          iconSize: 30,//设置三角标icon的大小
          underline: Container(height: 1,color: Colors.blue,),// 下划线
        ),

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