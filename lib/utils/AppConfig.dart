import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toast/toast.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';


class AppConfig{
  static final AppConfig _instance = new AppConfig._internal();

  factory AppConfig() {
    return _instance;
  }

  AppConfig._internal();
  static ThemeData defaultTheme = new ThemeData.light();
  static String AppTitle ="demo";
  static Color color_null = Colors.white.withOpacity(0.0);
  static Color fontDarkColor = Colors.black;//字体暗色
  static Color otherColor = Colors.red;
  static Color fontColor = Colors.white;//字体颜色

  static double font_smallSize = logic_fontSize(26.0);
  static double font_midSize = logic_fontSize(30.0);
  static double font_bigSize = logic_fontSize(36.0);
  static Color searchBackgroundColor = Colors.white10;
  static TextStyle normalTextStyle(Color color, double size){
    return new TextStyle(
      color: color,
      fontSize: size,
    );
  }
  static TextStyle  defaultTextStyle (Color color, double size,TextDecoration){
    return new TextStyle(
      inherit: false,
      color: color,
      fontSize: size,

      decoration:TextDecoration,
    );
  }
  static double logic_fontSize(double size){
    return ScreenUtil().setSp(size);
  }

  static double logic_height(double height){
    return ScreenUtil().setHeight(height);
  }

  static double logic_width(double width){
    return ScreenUtil().setWidth(width);
  }
  static Widget lineView(){
    return new Divider(
      height: 1.0,
      color: Colors.black12,
//      color: Colors.white,

    );
  }
  //代头像搜索的头部ƒ
  static Widget build_appBar(context,voidcallback) {
    return new AppBar(
    backgroundColor: Colors.red,
//      leading: new GestureDetector(
//        onTap: (){
//          },
////        child: new Container(
////          alignment: Alignment.centerRight,
////          width: 50.0,
//////          child: new Image.asset("asset/logo.png"),
////        ),
//      ),
      title: barSearch(context),
      actions: <Widget>[


        Builder(builder: (context){
          return new Container(
            alignment: Alignment.center,
            padding:  EdgeInsets.only(right: 15.0),
            child: new Material(
              borderRadius:  BorderRadius.all( Radius.circular(15.0)),
              color: AppConfig.color_null,
              child: new InkWell(
                child: new ClipOval(
                  child: SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: new Image.asset("asset/tou.png")
                  ),
                ),
                onTap: (){
//                  if(new AllModel().user.token ==null){
//                    voidcallback();
////                    Navigator.push(context, new MaterialPageRoute(builder: (_) => new loginView()));
//                    Navigator.push(context, new MaterialPageRoute(builder: (_) => new DetectLoginView()));
//                  }else{
//                    Scaffold.of(context).openEndDrawer();
//                  }
                },
              ),
            ),
          );
        }),

      ],
    );
  }

  static Widget barSearch(context){
    return new Container(
      height: 40.0,
      alignment: Alignment.center,
      child: new Stack(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(child: new Container()),
              new Container(
                padding:  EdgeInsets.only(right: 5.0),
                child: new Icon(Icons.search,size: AppConfig.font_bigSize,color:Colors.white,),
              ),
              new Container(
                //
                child: new Text("输入搜索关键词",style: AppConfig.normalTextStyle(Colors.white, AppConfig.font_bigSize),),
              ),
              new Expanded(child: new Container()),
            ],
          ),
          new Material(color: color_null,child: new InkWell( onTap: (){
//            Navigator.push(context, new MaterialPageRoute(builder: (_) => new searchView()));

          },),)
        ],
      ),
      decoration: new BoxDecoration(
        borderRadius:  BorderRadius.all( Radius.circular(4.0)),
        color: AppConfig.searchBackgroundColor,
      ),


    );
  }


  static toast(context,msg){
    Toast.show(msg, context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);

  }


}


