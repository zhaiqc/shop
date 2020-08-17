import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shop/utils/AppConfig.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppConfig.build_appBar(context, () {}),
      body: CustomScrollView(
        slivers: [
          ///banner
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                child: header(),
//            margin: const EdgeInsets.only(left: 10, top: 5.0, right: 10.0),
              ),
            ]),
          ),

          ///商品

          new SliverList(
            delegate: new SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return shops();
              },
              childCount: 3,
            ),
          ),
//      SliverPadding(
//        padding: const EdgeInsets.all(8.0),
//        sliver: new SliverGrid(
//          //Grid
//          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
//            crossAxisCount: 1, //Grid按两列显示
//            mainAxisSpacing: 10.0,
//            crossAxisSpacing: 10.0,
//            childAspectRatio: 2,
//          ),
//          delegate: new SliverChildBuilderDelegate(
//                (BuildContext context, int index) {
//              //创建子widget
//              return shops();
//            },
//            childCount: 3,
//          ),
//        ),
//      ),
        ],
      ),
    );
  }

  Widget header() {
    return Container(
      height: AppConfig.logic_width(350.0),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            "http://www.nmsl.red/uploads/attach/2020/08/20200812/af8c9b3970c8b0bd8c6fa8f804f2f2d1.jpg",
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        pagination: new SwiperPagination(
            builder: DotSwiperPaginationBuilder(
                color: Colors.white, activeColor: Colors.red)),
      ),
    );
  }

  Widget shops() {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            height: 7.0,
            color: Colors.black12,
          ),
          new Container(
            height: AppConfig.logic_width(80.0),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
            child: new Row(
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
                    "titlasdasde",
                    style: AppConfig.normalTextStyle(
                        AppConfig.fontDarkColor, AppConfig.font_midSize),
                  ),
                ),
                new Expanded(child: new Container()),
                new Container(
                  child: new GestureDetector(
                    onTap: () {
//                        Navigator.push(
//                          this.context,
//                          new MaterialPageRoute(
//                              builder: (context) => new VideoListView(orderCode: new AllModel().homePageModel.titles[index],)),
//                        );
                    },
                    child: new Row(
                      children: <Widget>[
                        new Text("更多",
                            style: AppConfig.normalTextStyle(
                                AppConfig.fontDarkColor,
                                AppConfig.font_smallSize)),
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
          ), //最近更新标题
          AppConfig.lineView(),
          new Container(
            alignment: Alignment.center,
            height: AppConfig.logic_width(390.0)*5,
            //* (new AllModel().homePageModel.videosList[index].length / 2).ceil(),
            child: new GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, //Grid按两列显示
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 2,
              ),
          itemBuilder: ((BuildContext context, int index){
            return shopItem();
          }),
        itemCount: 5,
//                children: shopItem(new AllModel().homePageModel.videosList[index].length, index),
            ),
          ),
        ],
      ),
    );


  }

  Widget shopItem() {
    return Container(

        child: InkWell(
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 10, 0, 10),

//              color: Colors.red,
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Image.network(
                        "http://static.caibeike.com/i/83f0eeea35ed3d6e9638be0f73c2797b-IzI0dN-bMOMwOOkhp1@!c300",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        textDirection: TextDirection.ltr,
                        children: [
                          Expanded(
                              child: Container(
                            child: Text(
                              "棒约翰[112店通用]",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: AppConfig.logic_width(30)),
                            ),
                            width: double.infinity,
                          )),
                          Expanded(
                              child: Container(
                            width: double.infinity,
                            child: Text(
                              "价值￥261-双人餐",
                              style: TextStyle(
                                  fontSize: AppConfig.logic_width(30)),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            width: double.infinity,
                            child: Text(
                              "有效期至2020.12.31",
                              style: TextStyle(
                                  fontSize: AppConfig.logic_width(30),
                                  color: Colors.grey),
                            ),
                          )),
                        ],
                      ),
                    ),
                    flex: 2,
                  )
                ],
              ),
            ),
            flex: 5,
          ),
          Expanded(
            child: Card(
              color: Colors.grey[100],
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: new ClipOval(
                            child: new Image.network(
                              "http://static.caibeike.com/i/83f0eeea35ed3d6e9638be0f73c2797b-IzI0dN-bMOMwOOkhp1@!c300",
                              width: AppConfig.logic_width(50),
                            ),
                          ),
                        ),
                        new ClipOval(
                          child: new Image.network(
                            "http://static.caibeike.com/i/83f0eeea35ed3d6e9638be0f73c2797b-IzI0dN-bMOMwOOkhp1@!c300",
                            width: AppConfig.logic_width(50),
                          ),
                        ),
                        new ClipOval(
                          child: new Image.network(
                            "http://static.caibeike.com/i/83f0eeea35ed3d6e9638be0f73c2797b-IzI0dN-bMOMwOOkhp1@!c300",
                            width: AppConfig.logic_width(50),
                          ),
                        ),
                      ],
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Text("139位体验师推荐"),
                    flex: 4,
                  ),
                  Expanded(
                    child: Text(
                      "已有82647人种草",
                      style: TextStyle(color: Colors.grey),
                    ),
                    flex: 4,
                  )
                ],
              ),
            ),
            flex: 2,
          ),
        ],
      ),
      onTap: () {
//          showDialog(
//            context: context,
//            barrierDismissible: true,
//            builder: (BuildContext context)=>new AlertView(),
//          );
      },
    ));
  }
}
