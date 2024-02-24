import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//bottomNavigationBar结合独立的StatefulWidget使用 首页面
class MethodChannelPage extends StatefulWidget {
  //页面标识
  int pageIndex;
  //构造函数
  MethodChannelPage(this.pageIndex,{super.key}) ;

  @override
  State<StatefulWidget> createState() {
    return MethodChannelPageState();
  }
}
class MethodChannelPageState extends State<MethodChannelPage> {

  // methodchannel name can be anything you like
  static const platform = MethodChannel('samples.flutter.dev/battery');
  String _batteryLevel = 'Battery Level.';

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    Map data = {
      "Nepal": "The capital city of Nepal is Kathmandu.",
      "UK": "The capital city of UK is London."
    };
    try {
      // here also you can name your method anything you like
      final int result = await platform.invokeMethod('getBatteryLevel', data);
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }



  //页面创建时初始化函数
  @override
  void initState() {
    super.initState();
    print("页面创建${widget.pageIndex}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("Method Channel"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Button
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.yellow),
              ),
              onPressed: () {
                _getBatteryLevel();
              },
              child: const Text(
                'Get Battery Level',
                style: TextStyle(color: Colors.black),
              ),
            ),

            // To show battery percentage.
            Text(_batteryLevel),
          ],
        ),
      ),
    );
  }

  //页面销毁时回调函数
  @override
  void dispose() {
    super.dispose();
    print("页面消失${widget.pageIndex}");
  }
}