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
        SliverAppBar(
//          leading:  Text('大玩家【227店通用】',style: TextStyle(fontSize:AppConfig.logic_fontSize(15)),),
          pinned: false,
          expandedHeight: AppConfig.logic_height(500),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle:false ,
//              title:  Text('大玩家【227店通用】',style: TextStyle(fontSize:AppConfig.logic_fontSize(15)),),
            background: header()
          ),
        ),

        ///标题
        new SliverList(
          delegate: new SliverChildListDelegate([
            new Container(
              child:  Text("首次特卖！100个币随便刷，无需预约即买即用，全国200+店通用~",style: TextStyle(fontSize: AppConfig.logic_fontSize(35),              fontWeight: FontWeight.bold,
                ),),margin: EdgeInsets.all(AppConfig.logic_width(20)),) ,
            
          ]),
        ),
        ///倒计时
//        new SliverList(
//          delegate: new SliverChildListDelegate([
//            new Container(
//
//
//              child:Card(
//                child:  Row(children: [
//                Expanded(child: Container(
//          margin: EdgeInsets.only(left:AppConfig.logic_width(20)),
//                  height: AppConfig.logic_height(100),child: Row(children: [
//                  Text("￥",style: TextStyle(fontSize: AppConfig.logic_fontSize(15),color: Colors.red),),
//                  Text("39.9",style: TextStyle( fontWeight:FontWeight.bold,fontSize: AppConfig.logic_fontSize(45),color: Colors.red),),
//                  Text(
//                    "￥499",
//                    style: TextStyle(
//                        fontSize: AppConfig.logic_width(25),
//                        color: Colors.grey,decoration: TextDecoration.lineThrough),
//                  ),
//                ],),
//                )),
//                Expanded(child: Container()),
//
//              ],),
//        ),
//
////              Text("首次特卖！100个币随便刷，无需预约即买即用，全国200+店通用~",style: TextStyle(fontSize: AppConfig.logic_fontSize(35),              fontWeight: FontWeight.bold,
////              ),),),
//
//              height: AppConfig.logic_height(100),
//              margin: EdgeInsets.all(AppConfig.logic_width(20)),) ,
//
//          ]),
//        ),


///信息

        new SliverList(
          delegate: new SliverChildListDelegate([
            new Container(
              child:Card(child:  Row(children: [
                Expanded(child: Container(
                  margin: EdgeInsets.only(left:AppConfig.logic_width(20)),
                  height: AppConfig.logic_height(200),child: Column(children: [
                    Row(
                      children: [


                        Container(
//                        padding: EdgeInsets.only(left: AppConfig.logic_width(1)),
                          alignment: Alignment.center,
                          child: Text("全国通用",textAlign:TextAlign.right,style: TextStyle(color: Colors.red,fontSize: AppConfig.logic_fontSize(18)),),
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.all( Radius.circular(5.0)),
                            border: new Border.all(width: AppConfig.logic_width(2), color: Colors.red),
                          ),
                          margin: EdgeInsets.all(AppConfig.logic_width(20)),
                          height: AppConfig.logic_width(40),width: AppConfig.logic_width(100),),


                      Container(
//                        padding: EdgeInsets.only(left: AppConfig.logic_width(1)),
                        alignment: Alignment.center,
                        child: Text("项目丰富",textAlign:TextAlign.right,style: TextStyle(color: Colors.red,fontSize: AppConfig.logic_fontSize(18)),),
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.all( Radius.circular(5.0)),
                          border: new Border.all(width: AppConfig.logic_width(2), color: Colors.red),
                        ),
                        margin: EdgeInsets.all(AppConfig.logic_width(20)),
                        height: AppConfig.logic_width(40),width: AppConfig.logic_width(100),),

                        Container(
//                        padding: EdgeInsets.only(left: AppConfig.logic_width(1)),
                          alignment: Alignment.center,
                          child: Text("全国通用",textAlign:TextAlign.right,style: TextStyle(color: Colors.red,fontSize: AppConfig.logic_fontSize(18)),),
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.all( Radius.circular(5.0)),
                            border: new Border.all(width: AppConfig.logic_width(2), color: Colors.red),
                          ),
                          margin: EdgeInsets.all(AppConfig.logic_width(20)),
                          height: AppConfig.logic_width(40),width: AppConfig.logic_width(100),),
                    ],),
                  Container(
                    alignment: Alignment.centerLeft,
                    child:    Text("无需预约\n游戏币兑换完长期有效\n有效期超长 "),),


                    ],)
                )),
//                Expanded(child: Container()),

              ],),
              ),


              height: AppConfig.logic_height(200),
              margin: EdgeInsets.all(AppConfig.logic_width(20)),) ,

          ]),
        ),
///套餐
        new SliverList(
          delegate: new SliverChildListDelegate([
            new Container(
              margin:EdgeInsets.only(left: AppConfig.logic_width(20),right: AppConfig.logic_width(20)) ,
              child:new Row(
                children: <Widget>[
                  new Container(
//                  height: AppConfig.logic_width(30.0),
//                  width: AppConfig.logic_width(6.0),
//                    color: AppConfig.widgetColor,
                  ),
                  new Container(
                    padding: const EdgeInsets.only(left: 5.0),
                    alignment: Alignment.centerLeft,
                    child: new Text(
                      "到店套餐",
                      style: TextStyle(fontSize: AppConfig.logic_fontSize(35), fontWeight: FontWeight.bold,),
                    ),
                  ),
                  new Expanded(child: new Container()),
                  new Container(
                    child: new GestureDetector(
                      onTap: () {
                        ///分类点击事件
                      },
                      child: new Row(
                        children: <Widget>[
                          new Text("查看全部",
                              style:TextStyle(fontSize: AppConfig.logic_fontSize(20))),
                          new Icon(
                            Icons.chevron_right,
                            size: AppConfig.font_bigSize,
//                          color: AppConfig.widgetColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),


              height: AppConfig.logic_height(90),
            ) ,

          ]),
        ),
        new SliverList(
          delegate: new SliverChildListDelegate([
            new Container(
              child:Card(child:  Row(children: [
                Expanded(child: Container(

                    margin: EdgeInsets.only(left:AppConfig.logic_width(20)),
                    height: AppConfig.logic_height(150)*3,
                    child: Column(children: [
                  Container(
                    height: AppConfig.logic_height(150)*3,
                    alignment: Alignment.centerLeft,
                    child:ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: ((context,index){
                      return item();
                    }))

                  ),


                ],)
                )),
//                Expanded(child: Container()),

              ],),
              ),


              height: AppConfig.logic_height(470),
              margin: EdgeInsets.all(AppConfig.logic_width(20)),) ,

          ]),
        ),

///体验shi
        new SliverList(
          delegate: new SliverChildListDelegate([
            new Container(
              margin:EdgeInsets.only(left: AppConfig.logic_width(20),right: AppConfig.logic_width(20)) ,
              child:new Row(
                children: <Widget>[
                  new Container(
//                  height: AppConfig.logic_width(30.0),
//                  width: AppConfig.logic_width(6.0),
//                    color: AppConfig.widgetColor,
                  ),
                  new Container(
                    padding: const EdgeInsets.only(left: 5.0),
                    alignment: Alignment.centerLeft,
                    child: new Text(
                      "体验师推荐",
                      style: TextStyle(fontSize: AppConfig.logic_fontSize(35), fontWeight: FontWeight.bold,),
                    ),
                  ),
                  new Expanded(child: new Container()),
                  new Container(
                    child: new GestureDetector(
                      onTap: () {
                        ///分类点击事件
                      },
                      child: new Row(
                        children: <Widget>[
                          new Text("查看全部",
                              style:TextStyle(fontSize: AppConfig.logic_fontSize(20))),
                          new Icon(
                            Icons.chevron_right,
                            size: AppConfig.font_bigSize,
//                          color: AppConfig.widgetColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),


              height: AppConfig.logic_height(90),
            ) ,

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
                ],),
              ),),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
          ),
        )
    );
  }

  Widget header() {
    return Container(  height: AppConfig.logic_width(610.0),child:Stack(children: [
      Container(
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
      ),
      Column(children: [
        Expanded(child: Container()),

        Expanded(child: Container()),
        Container(
          alignment: Alignment.bottomLeft,
          width: double.infinity, height: AppConfig.logic_height(100),child: Container(
          margin: EdgeInsets.only(left: AppConfig.logic_width(20)),
          child: Text('大玩家【227店通用】',style: TextStyle(fontSize:AppConfig.logic_fontSize(35),color: Colors.white),),),)

      ],)
    ],) ,)  ;
  }

  Widget item() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),

          width: double.infinity,
//                        color: Colors.blue,
          child: Text(
            "主菜",
            style: TextStyle(
                fontSize: AppConfig.logic_width(
                  30,
                ),
                color: Colors.orange),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),

          width: double.infinity,
//                        color: Colors.blue,
          child:Row(children: [
            Text(
              "· 新疆大盘鸡（1份）",
              style: TextStyle(
                  fontSize: AppConfig.logic_fontSize(
                    25,
                  ),
                  color: Colors.black),
            ),
            Expanded(child: Container()),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),

              child:  Text(
                "￥78",
                style: TextStyle(
                    fontSize: AppConfig.logic_width(
                      25,
                    ),
                    color: Colors.black),
              ) ,)

          ],),
        ),
      ],
    );
  }

}
