
import 'package:flutter/material.dart';
import 'package:fshn/component/Most_popular_component.dart';
import 'package:fshn/component/Promotion_component.dart';
import 'package:fshn/data/MostPopularData.dart';
import 'package:fshn/data/PromotionData.dart';
import 'package:fshn/model/ProductModel.dart';
import 'package:fshn/model/PromotionModel.dart';

class ManComponent extends StatefulWidget {
  @override
  _ManComponentState createState() => _ManComponentState();
}

class _ManComponentState extends State<ManComponent> {
  List<PromotionModel> lpromotion;
  List<ProductModel> lproduction;
  @override
  void initState() {
    PromotionData promotionData = new PromotionData();
    lpromotion = promotionData.setPromotionValue(title: 'Get 25 % for Our Latest Arrival',code: 'NEW25',description: 'Beegin update with the last product from us',url: './img/card_man_1.jpg');
    lpromotion = promotionData.setPromotionValue(title: 'Be your self and choose you',code: 'NEW25',description: 'Be unique dont and choose your way in fashion',url: './img/card_man_2.jpg');

    MostPopularData mostpopular = new MostPopularData();
    lproduction = mostpopular.setMostPopularValue(title: 'RM 159',url: './img/tshirt_1.jpg');
    lproduction = mostpopular.setMostPopularValue(title: 'RM 210',url: './img/tshirt_2.jpg');
    lproduction = mostpopular.setMostPopularValue(title: 'RM 140',url: './img/tshirt_3.jpg');
    lproduction = mostpopular.setMostPopularValue(title: 'RM 340',url: './img/tshirt_2.jpg');
    lproduction = mostpopular.setMostPopularValue(title: 'RM 900',url: './img/tshirt_1.jpg');

    super.initState();
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