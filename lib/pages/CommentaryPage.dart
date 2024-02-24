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
            DropdownMenuItem(value: "1",child: Text("Area1: 序厅",                       style: TextStyle(color: value=="1"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "2",child: Text("Area2: 英特尔产品技术发展历史展区",     style: TextStyle(color: value=="2"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "5.1",child: Text("Area5.1: 服务器生态与产品方案展区",   style: TextStyle(color: value=="5.1"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "5.2",child: Text("Area5.2: 开放通用服务器平台(OCSP)",  style: TextStyle(color: value=="5.2"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "6.1",child: Text("Area6.1: 本土产业链合作的配套芯片",   style: TextStyle(color: value=="6.1"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "6.2",child: Text("Area6.2: 显卡（图形处理解决方案)",    style: TextStyle(color: value=="6.2"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "6.3",child: Text("Area6.3: PC生态系统（笔记本电脑）",   style: TextStyle(color: value=="6.3"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "6.4",child: Text("Area6.4: 绿色电脑理念及实践",        style: TextStyle(color: value=="6.4"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "7.1",child: Text("Area7.1: 超能云终端",              style: TextStyle(color: value=="7.1"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "7.2",child: Text("Area7.2: 会议及远程协作解决方案",    style: TextStyle(color: value=="7.2"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "7.4",child: Text("Area7.3: 智能交通解决方案",         style: TextStyle(color: value=="7.3"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "7.5",child: Text("Area7.5: 极视角计算机视觉AI计算盒",  style: TextStyle(color: value=="7.5"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "7.6",child: Text("Area7.6: 医疗行业解决方案",         style: TextStyle(color: value=="7.6"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "7.7",child: Text("Area7.7: 缺陷检测/大族/飞拍",       style: TextStyle(color: value=="7.7"?Colors.blue:Colors.grey),),),
            DropdownMenuItem(value: "7.9",child: Text("Area7.9: 新能源汽车智能驾舱",       style: TextStyle(color: value=="7.9"?Colors.blue:Colors.grey),),),

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