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
            DropdownMenuItem(value: "7.3",child: Text("Area7.3: 智能交通解决方案",         style: TextStyle(color: value=="7.3"?Colors.blue:Colors.grey),),),
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
        Stack(children: <Widget>[
          Opacity(opacity: value=="1"?1:0,child: textList[0],),
          Opacity(opacity: value=="2"?1:0,child: textList[1],),
          Opacity(opacity: value=="5.1"?1:0,child: textList[2],),
          Opacity(opacity: value=="5.2"?1:0,child: textList[3],),
          Opacity(opacity: value=="6.1"?1:0,child: textList[4],),
          Opacity(opacity: value=="6.2"?1:0,child: textList[5],),
          Opacity(opacity: value=="6.3"?1:0,child: textList[6],),
          Opacity(opacity: value=="6.4"?1:0,child: textList[7],),
          Opacity(opacity: value=="7.1"?1:0,child: textList[8],),
          Opacity(opacity: value=="7.2"?1:0,child: textList[9],),
          Opacity(opacity: value=="7.3"?1:0,child: textList[10],),
          Opacity(opacity: value=="7.5"?1:0,child: textList[11],),
          Opacity(opacity: value=="7.6"?1:0,child: textList[12],),
          Opacity(opacity: value=="7.7"?1:0,child: textList[13],),
          Opacity(opacity: value=="7.9"?1:0,child: textList[14],),
        ],)
      ],
    );
  }

  //页面销毁时回调函数
  @override
  void dispose() {
    super.dispose();
    print("页面消失${widget.pageIndex}");
  }


  List<Text> textList =[
    //1
    const Text("""
    英特尔大湾区科技创新中心
    展示推广中心
    各位领导、嘉宾朋友，大家上午或者下午好！
    首先代表英特尔大湾区创新中心欢迎大家的到来
    请大家观看中心介绍的宣传片
    请各位嘉宾在拍照留影区拍照留念
    下面我将带领各位嘉宾开始参观展示推广中心
    英特尔大湾区创新展示推广中心打造一站式展示推广平台，汇聚英特尔全线PC、服务器与数据中心解决方案，网络与边缘产品与行业解决方案等，全面展示及推广英特尔合作伙伴以及创新生态的最新成果。
    我将带领大家逐个展区了解英特尔及生态伙伴的各类产品和行业解决方案，请大家随我首先移步到英特尔发展史的展区
    """,style: TextStyle(fontSize: 20)),

    //2
    const Text("""
    这个区可以看到英特尔公司的发展历史，12寸晶圆展示以及观赏投影视频：“-如何制造芯片”
    英特尔公司成立于1968年，50多年以来，英特尔一直在工艺技术（trigate）、架构（x86、多核）、内存（3DXPoint）和连接技术（以太网、USB、Wi-Fi、LTE、Thunderbolt、5G）方面进行创新。
    这里展示的都是英特尔的里程碑技术与产品，（此处可以适当举例， 例如4004 芯片，奔腾， 迅驰，志强服务器，USB技术标准等等引领或者创造了行业标准） 英特尔公司将会在未来持续推动创新，同时会成为未来创新基石的技术和行业标准。
    晶圆是制作硅半导体电路所用的硅晶片，原始材料是硅，高纯度的多晶硅溶解后掺入硅晶体晶种，然后慢慢拉出，形成圆柱型的单晶硅，硅晶棒在经过研磨，抛光以及切片后形成硅晶圆片，也就是晶圆了。
    这里展出的是用来制作芯片的12寸晶圆，我们经常用到的手机，平板，个人电脑的处理器，以及CPU, GPU, 内存，传感器等都是需要用晶圆来制造 
    """,style: TextStyle(fontSize: 15)),

    //5.1
    const Text("""
  在这个区域，有包括超聚变、立讯、同泰怡（此处把所有的品牌都介绍一下，不要只节选）等位于大湾区的英特尔服务器合作伙伴的2U工业标准服务器的产品，这也是目前服务器的主流产品运用了英特尔的第四代至强处理器以及flex系列GPU。
  该系列服务器采用高效冷板式液冷散热技术，配合无源水冷背门，实现100%液冷散热，帮助用户数据中心PUE降低至1.06。结合N+M集中高效供电与电、网、液三总线盲插，实现整机柜33Kw功率，可支持144CPU配置的高密度及面向未来的无人化机器人运维。液冷服务器顾名思义就是通过液体的冷热交替从而达到散热的效果。
  随着数据中心算例密度大幅度提升，传统风冷面临散热不足，能耗过大等问题，液冷在经济性和散热效率上来说，均能满足国家双碳政策要求。超聚变fusionpod 720整机柜液冷服务器是液冷服务器新标杆，具有高密度，高性能，高能效，高可靠，一体化交付等特点，可部署在企业，互联网等数据中心上。可运用于的范围也包括，云计算，虚拟化，大数据，高性能计算等应用。
  高效换热，机房去空调，智能化的冷却技术，可以降低制冷能耗的成本，实现100%全液冷，充当绿色低碳先锋。
  """,style: TextStyle(fontSize: 15)),

    //5.2
    const Text("""
  在这个区域展示了模块化、标准化，开放通用双路服务器平台（OCSP）模块化生态，OCSP规范定义了开放的机箱、电源、主板、硬盘、风扇和I/O扩展6大模块的解耦标准，在各个模块内部留给合作伙伴创新设计，保留定制化空间，灵活配置，多种选择，满足客户对服务器差异化和定制化的需求，帮助服务器使用者和供应商指导产品研发、测试、生产、定制，满足主流通用和经济型场景。
  """,style: TextStyle(fontSize: 20)),

    //6.1
    const Text("""
  英特尔一直致力于与中国本土芯片公司的合作，与中国本土芯片公司合作设计了非常多类型的芯片产品，从电源、音频控制到MCU控制芯片等，为。中国本土PC、服务器的成长做出了贡献，本芯片墙展示了部分与英特尔合作的芯片厂商的研发成果。
  """,style: TextStyle(fontSize: 20)),

    //6.2
    const Text("""
  英特尔GPU技术提供逼真的图形效果，具有卓越的性能，速度，效率和可扩展性
英特尔图形解决方案区（CPU）：左边的是英特尔锐炫显卡展示区：对于职业游戏玩家和专业内容创作者，英特尔锐炫™ 显卡通过提供硬件、软件和服务解决方案缔造了高性能游戏和直播的未来。GPU可以从CPU独立工作，提供更强大的图形处理能力和更好的游戏性能。英特尔锐选显卡使用专用VRAM，可快速处理图形数据，从而在3D游戏和视频编辑方面具有优越的性能。此外，它还支持多种显示接口，以满足不同用户的需求。总之，英特尔独立显卡是一款适用于高性能游戏和专业图形设计的强大显卡产品。
右边是英特尔® 数据中心GPU展区，数据中心GPU包括Flex 和 Max系列，在这里展出的是Flex 170系列GPU：Flex系列灵活、强大，是业界最开放的面向智能视觉云的GPU解决方案。这款GPU将支持行业中的各种工作负载，首先支持媒体直播和云游戏，然后支持 AI 视觉推理和虚拟桌面基础设施工作负载。它支持基于标准的开放式软件堆栈，针对密度和质量进行了优化，具有关键的服务器功能，可实现高度可靠性、可用性和可扩展性。这有助于减少数据中心使用不同解决方案并管理异构或专有环境的需求。
  """,style: TextStyle(fontSize: 15)),

    //6.3
    const Text("""
  这里展示的是英特尔与大湾区一起合作的研发的产品，出口了一百多个国家，其中就有华为，英众，荣耀，七彩虹等等一些品牌（展示笔记本联动视频）。在这个区域，有我们扎根大湾区将近20家有代表性的客户参加了展示. 我们最早就是从台式机，上网本开始进入大湾区，特别是在2012/2013年，我们开始和深圳原来主力做MP3/4,电子相框，平板的一些头部客户开始合作, 开始了一个跳跃式发展， 之后一起推出了很多款基于intel 平台的平板电脑。随着客户和intel的一起成长，大家可以看到现在产品已经有了极大的丰富。您可以看到从起家的平板电脑，到超轻薄，全能本，以及代表高端产品的商务本，游戏本，我们的大湾区客户都有自己标志性的产品展出。
  而且基于我们生态原有的灵活，快速，多样化的服务优势，也做了很多专用市场的产品，比如直播电脑，游戏掌机等等。
  """,style: TextStyle(fontSize: 20)),

    //6.4
    const Text("""
  绿色电脑 的绿色体现在两个部分，所有的设计是非常精简的一张主板，一个风扇，最高效的电源，和可回收的材料。所以在制作中，他的碳排放可以降低百分之30，在运行时，通过特别的低碳软件，在不需要性能的时候，将功耗尽量的下降，运行时降低了百分之50的功耗。同时这张pcb是百分之95的原材料都可以回收。大大降低对环境危害。在运行时，通过特别的低碳软件，在不需要性能的时候，将功耗尽量的下降，运行时降低了百分之50的功耗。
  """,style: TextStyle(fontSize: 20)),

    //7.1
    const Text("""
  这边是面向各个行业的超能云终端，可以一键式进行部署，大量的降低运营的成本，从而以节省碳排放。运用于计算机课程的多媒体教室，医院，老师办公桌面等场景。云端服务器基于英特尔至强处理器，本地终端是最新一代的英特尔酷睿处理器。
  """,style: TextStyle(fontSize: 20)),

    //7.2
    const Text("""
  这个展区是英特尔的远程会议解决方案，因为在疫情之后很多企业开始了远程办公的模式，远程会议的模式包含了企业内和企业外。包含了地球人一体机，maxhub会议屏，海信会议屏等一些产品.英特尔凭借强大的算力和全球领先的智能边缘技术，广泛携手业内生态伙伴，依托英特尔高性能架构，以强大的音视频编解码能力、多任务同时处理能力、结合办公系统生态，针对不同行业和不同场景，打造优质的、多样化的视频会议协助解决方案，实现从大屏到移动终端，从会议到办公，从云到边缘的全场景覆盖
  """,style: TextStyle(fontSize: 20)),

    //7.3
    const Text("""
  华铭掌静脉闸机 ：华铭掌静脉智能闸机方案基于Intel x6000系列凭借高性能、高稳定的边缘计算系统，以及出色的掌静脉特征识别算法，可为城轨运营商带来更加高效、安全的认证选项。
  智慧灯杆:上面有5g小基站，WiFi接入，视频监控，环境监测等等一些设备，中间有一块区域是用于无线充电，所有功能在一个灯杆上实现，内部有一台高性能的pc来带动整个设备的运营。
  """,style: TextStyle(fontSize: 20)),

    //7.5
    const Text("""
  英特尔® 视频 AI 计算盒融合英特尔成熟的软硬件平台，整合合作伙伴丰富的人工智能 (AI) 算法，提供“通用计算 + 视频处理+AI分析”能力，可以帮助用户构建经过部署验证、可客制、可扩展的边缘智能方案。
  """,style: TextStyle(fontSize: 20)),

    //7.6
    const Text("""
  在这个展区我们可以看到联新的医疗移动护理站，医疗终端等一些产品，可以让医疗工作高效，及时，准确。例如这台终端，平常的PC只有大搞2个或3个接口，而在他的身上有8个并且支持一些并口串口的丰富接口，还拥有抗菌设计。英特尔助力医院部署 AI、物联网、5G 网络和其他技术，用于医疗数据的收集，分析处理，辅助决策，分享与安全等，构建面向不同场景的智能化终端。
  """,style: TextStyle(fontSize: 20)),

    //7.7
    const Text("""
  缺陷检测：这是一个12寸晶圆检测机，通过3C视觉检测，3秒钟之内就能完成一张晶圆的检测，大大提高了生产效率。这些检测依靠的就是这样一台英特尔架构的酷睿平台与锐炫A770独立显卡来支撑的。相当于在足球场上去找一粒米。   
  大族：这是激光切割产业链常用的一台设备，提供高实时性，高算力 基于英特尔X86平台研发，操作更加敏捷，显示更加直观，助力切割设备跨越式提升。 
  飞拍：这个是飞拍，可以进行条码等物体的识别。物体在运动的期间，不需要停留，哪怕是高速的环境下也可以对其进行捕捉，大大地提高了生产效率 。
  """,style: TextStyle(fontSize: 20)),

    //7.9
    const Text("""
  新能源汽车已经成为了人们的第三出行工具。所以呢，用户希望在车里能有非常强的属性，目前我们采用了英特尔的X86，连接6个以上的屏幕，实现视频游戏等各个方面的并发，支持8K视频的播放，同时在后排的屏幕上，还可以进行游戏的体验。用户要求高，不仅仅是看视频，看视频是必备的一个功能，同时也需要玩游戏，以及与车的互动，智能问答，更有温度的人车对话。
  """,style: TextStyle(fontSize: 20)),


  ];
}