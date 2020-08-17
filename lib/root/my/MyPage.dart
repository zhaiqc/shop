import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/AppConfig.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(slivers: [
        new SliverList(
          delegate: new SliverChildListDelegate([
            new Container(
              child: header(),
            ),
          ]),
        ),
        new SliverList(
          delegate: new SliverChildListDelegate([
            new Container(
              child: dingdan(),
            ),
          ]),
        ),
        new SliverList(
          delegate: new SliverChildListDelegate([
            new Container(
              child: zuopin(),
            ),
          ]),
        ),
      ],) ,
    );
  }

  Widget header(){
    return Container(height: AppConfig.logic_width(400),color: Colors.red,);
  }


  Widget dingdan(){
    return Container(height: AppConfig.logic_width(300),child:Card(child: Column(children: [
      new Row(
        children: <Widget>[
          new Container(
//                  height: AppConfig.logic_width(30.0),
//                  width: AppConfig.logic_width(6.0),
//                    color: AppConfig.widgetColor,
          ),
          new Container(
            padding: const EdgeInsets.only(left: 10.0,top: 10.0),
            alignment: Alignment.centerLeft,
            child: new Text(
              "我的订单",
              style: AppConfig.normalTextStyle(
                  AppConfig.fontDarkColor, AppConfig.font_midSize),
            ),
          ),
          new Expanded(child: new Container()),
          new Container(
            padding: const EdgeInsets.only(top: 10.0,right: 10.0),

            child: new GestureDetector(
              onTap: () {
                ///分类点击事件
              },
              child: new Row(
                children: <Widget>[
                  new Icon(
                    Icons.chevron_right,
                    size: AppConfig.font_bigSize,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      Padding(padding: EdgeInsets.only(top: 3),child: Divider(
        height: 0.2,
        color: Colors.black12,

      ),)
    ],) ,),);
  }


  Widget zuopin(){
    return Container(height: AppConfig.logic_width(300),child:Card(child: Column(children: [
      new Row(
        children: <Widget>[
          new Container(
//                  height: AppConfig.logic_width(30.0),
//                  width: AppConfig.logic_width(6.0),
//                    color: AppConfig.widgetColor,
          ),
          new Container(
            padding: const EdgeInsets.only(left: 10.0,top: 10.0),
            alignment: Alignment.centerLeft,
            child: new Text(
              "我的作品",
              style: AppConfig.normalTextStyle(
                  AppConfig.fontDarkColor, AppConfig.font_midSize),
            ),
          ),
          new Expanded(child: new Container()),
          new Container(
            padding: const EdgeInsets.only(top: 10.0,right: 10.0),

            child: new GestureDetector(
              onTap: () {
                ///分类点击事件
              },
              child: new Row(
                children: <Widget>[
                  new Icon(
                    Icons.chevron_right,
                    size: AppConfig.font_bigSize,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      Padding(padding: EdgeInsets.only(top: 3),child: Divider(
        height: 0.2,
        color: Colors.black12,

      ),)
    ],) ,),);
  }
}
