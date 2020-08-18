import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shop/utils/AppConfig.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        ///banner
        new SliverList(
          delegate: new SliverChildListDelegate([
            new Container(
//              child: header(),
                child:Stack(children: [
                  header(),
                  Positioned.fill(child:     new Container(
                    width: double.infinity,
                    decoration: new BoxDecoration(
                      //背景
                      color: Colors.white,
                      //设置四周圆角 角度 这里的角度应该为 父Container height 的一半
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0)),
                      //设置四周边框
                    ),
                    child:Container(child:Column(children: [

                    ] ,) ,),
                  ),top: AppConfig.logic_height(590),)

                ],) ,
            ),
          ]),
        ),



      ],),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
          child: Row(
            children: [
              Expanded(child:   Container(
                margin: EdgeInsets.only(left: AppConfig.logic_width(20)),
                height: AppConfig.logic_height(100),
              child: Row(children: [
                Text("￥",style: TextStyle(fontSize: AppConfig.logic_fontSize(15),color: Colors.red),),
                Text("39.9",style: TextStyle( fontWeight:FontWeight.bold,fontSize: AppConfig.logic_fontSize(45),color: Colors.red),),
                Text(
                  "￥499",
                  style: TextStyle(
                      fontSize: AppConfig.logic_width(25),
                      color: Colors.grey,decoration: TextDecoration.lineThrough),
                ),
              ],),
              ),),
              Expanded(child:   Container(height: AppConfig.logic_height(100),color: Colors.blue,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                Expanded(child: Container(color: Color(0xFFFFB6C1),child: Column(
                  mainAxisAlignment:MainAxisAlignment.center ,

                  children: [
                  Container(child: Icon(Icons.chat,color: Colors.red,size: AppConfig.logic_fontSize(30),),),

                  Container(child: Text("vip微信群",style: TextStyle(color: Colors.red,fontSize: AppConfig.logic_fontSize(20))),)

                ],),),flex: 1,),
                Expanded(child: Container(
                  alignment: Alignment.center,
                  height: AppConfig.logic_height(100),
                  color: Colors.red,child: Text("一键下单",style: TextStyle(color: Colors.white),),),flex: 2,)
//          color: Color(0xFFFFB6C1),

              ],),
              ),),

//              IconButton(icon: Icon(Icons.home)),
//              IconButton(icon: Icon(Icons.business)),

            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
          ),
        )
    );
  }

  Widget header() {
    return Container(
      height: AppConfig.logic_width(610.0),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            "http://static.caibeike.com/i/957c846a94ec95d2b0f34d15cbe59851-IcLOqS-iCMwCMbhj2@!sn1080",
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
//        pagination: new SwiperPagination(
//            builder: DotSwiperPaginationBuilder(
//                color: Colors.white, activeColor: Colors.red)),
      ),
    );
  }
}
