import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shop/root/home/category_entity.dart';
import 'package:shop/root/home/shop_detail_entity.dart';
import 'package:shop/root/home/shop_entity.dart';
import 'package:shop/utils/HttpUtils.dart';
import 'package:shop/utils/view_model/BaseViewModel.dart';

import 'banner_entity.dart';

class HomeViewModel extends BaseViewModel {

  BehaviorSubject<dynamic> _dataObservable = BehaviorSubject();

  Stream<dynamic> get dataStream => _dataObservable.stream;

  @override
  void dispose() {
    _dataObservable.close();
  }

  @override
  void doInit(BuildContext context) {
    refreshData(context);
  }


  Future<BannerEntity> getBanner()async{
    Response  res=await  HttpUtils().sendData(url: "common/banner");
    BannerEntity entity = BannerEntity().fromJson(res.data);
    print("getBanner ${res}");

    return Future(()=>entity);

  }


  Future<CategoryEntity> getCategory()async{

    Response  res=await  HttpUtils().sendData(url: "common/category");
    print("getCategory ${res}");

    CategoryEntity entity = CategoryEntity().fromJson(res.data);
    return Future(()=>entity);

  }

  Future<ShopEntity> getShops({int page, int limit,int category_id})async{
    var data ={"category_id":category_id,"page":page,"limit":limit,"status":2};
    Response  res=await  HttpUtils().sendData(url: "index/index",data: data);
    print("getShops ${res}");
    ShopEntity entity = ShopEntity().fromJson(res.data);
    return Future(()=>entity);

  }
  Future<ShopDetailEntity> getShop({int shoplist_id})async{
    print("shoplist_id ${shoplist_id}");
    FormData formData = new FormData.fromMap({"shoplist_id": 1});
    Response  res=await  HttpUtils().sendData(url: "index/getShop",data: formData);
    print("getShop ${res}");
    ShopDetailEntity entity = ShopDetailEntity().fromJson(res.data);
    return Future(()=>entity);

  }


  @override
  Future refreshData(BuildContext context) {
    //个人比较喜欢这样写，不然要写try catch来包裹代码，try catch不如这样写起来方便，不用一直定义变量
//    return NetWork.query().then((String text) {
//      _dataObservable.add(text);
//    }).catchError((error) {
//      _dataObservable.addError(error);
//    });
  }
}