import 'package:flutter/material.dart';
import 'package:fshn/component/Most_popular_component.dart';
import 'package:fshn/component/Promotion_component.dart';
import 'package:fshn/data/MostPopularData.dart';
import 'package:fshn/data/PromotionData.dart';
import 'package:fshn/model/ProductModel.dart';
import 'package:fshn/model/PromotionModel.dart';

class WomanComponent extends StatefulWidget {
  @override
  _WomanComponentState createState() => _WomanComponentState();
}

class _WomanComponentState extends State<WomanComponent> {
  List<PromotionModel> lpromotion;
  List<ProductModel> lproduction;
  @override
  void initState() {
    super.initState();
     PromotionData promotionData = new PromotionData();
    lpromotion = promotionData.setPromotionValue(title: 'Get 45 % for Our Latest Arrival',code: 'NEW45',description: 'Beegin update with the last product from us',url: './img/card_woman_1.jpg');
    lpromotion = promotionData.setPromotionValue(title: 'Be your self and choose you',code: 'NEW45',description: 'Be unique dont and choose your way in fashion',url: './img/card_woman_2.jpg');
    MostPopularData mostpopular = new MostPopularData();
    lproduction = mostpopular.setMostPopularValue(title: 'RM 600',url: './img/tshirt_woman_1.jpg');
    lproduction = mostpopular.setMostPopularValue(title: 'RM 650',url: './img/tshirt_woman_2.jpg');
    lproduction = mostpopular.setMostPopularValue(title: 'RM 610',url: './img/tshirt_woman_3.jpg');
    lproduction = mostpopular.setMostPopularValue(title: 'RM 620',url: './img/tshirt_woman_4.jpg');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          PromotionComponent(lpromotion: this.lpromotion,),
          MostPopularComponent(lproduction: this.lproduction,)
      ],
    ),
    );
  }
}