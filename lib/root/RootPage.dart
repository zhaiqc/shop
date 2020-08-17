import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:shop/root/home/HomePage.dart';
import 'package:shop/root/my/MyPage.dart';
import 'package:shop/root/vip/VipPage.dart';
import 'package:shop/utils/AppConfig.dart';
import 'package:shop/utils/NavigationView.dart';

class RootPage extends StatefulWidget {
  int currentIndex;

  RootPage(this.currentIndex);
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage>with TickerProviderStateMixin {
  List<NavigationView> _navigationViews =[];
  StatefulWidget _currentPage;
  List<StatefulWidget> _pageList;
@override
  void initState() {
  var home =HomePage();
  var vip =VipPage();
  var my =MyPage();
  _navigationViews = <NavigationView>[
    new NavigationView(
      icon: Icons.home,
      title: "首页",
      vsync: this,
    ),

    new NavigationView(
      icon: Icons.local_activity,
      title: "会员",
      vsync: this,
    ),
    new NavigationView(
      icon: Icons.picture_in_picture_alt,
      title: "我的",
      vsync: this,
    ),

  ];

  for (NavigationView view in _navigationViews) {
    view.controller.addListener(_rebuild);
  }

  _pageList = <StatefulWidget>[
    home,
    vip,my
  ];
  _currentPage = _pageList[widget.currentIndex];
  // TODO: implement initState
    super.initState();
  }
  void _rebuild() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,width: 750, height: 1334);
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: _navigationViews
          .map((NavigationView navigationView) => navigationView.item)
          .toList(),

      currentIndex: widget.currentIndex,
      fixedColor: Colors.red,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _navigationViews[widget.currentIndex].controller.reverse();
          widget.currentIndex = index;
          _navigationViews[widget.currentIndex].controller.forward();
          _currentPage = _pageList[widget.currentIndex];
        });
      },
    );

    return      new MaterialApp(
        theme: AppConfig.defaultTheme,
        home: new Scaffold(
          body: new Center(
            child:  _currentPage,


          ),
          bottomNavigationBar: bottomNavigationBar,

        ));
  }
}
