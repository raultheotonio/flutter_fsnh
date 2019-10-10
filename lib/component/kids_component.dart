import 'package:flutter/material.dart';
import 'package:fshn/data/MostPopularData.dart';
import 'package:fshn/data/PromotionData.dart';
import 'package:fshn/model/ProductModel.dart';
import 'package:fshn/model/PromotionModel.dart';

import 'Most_popular_component.dart';
import 'Promotion_component.dart';

class Kidscomponent extends StatefulWidget {
  @override
  _KidscomponentState createState() => _KidscomponentState();
}

class _KidscomponentState extends State<Kidscomponent> {
  List<PromotionModel> lpromotion;
  List<ProductModel> lproduction;

  @override
  void initState() {
    super.initState();
    PromotionData promotionData = new PromotionData();
    lpromotion = promotionData.setPromotionValue(title: 'Get 10 % for Our Latest Arrival',code: 'NEW10',description: 'Beegin update with the last product from us',url: './img/card_kids_1.jpg');
    lpromotion = promotionData.setPromotionValue(title: 'Be your self and choose you',code: 'NEW10',description: 'Be unique dont and choose your way in fashion',url: './img/card_kids_2.jpg');

    MostPopularData mostpopular = new MostPopularData();
    lproduction = mostpopular.setMostPopularValue(title: 'RM 859',url: './img/tshirt_kids_1.jpg');
    lproduction = mostpopular.setMostPopularValue(title: 'RM 810',url: './img/tshirt_kids_2.jpg');
    lproduction = mostpopular.setMostPopularValue(title: 'RM 840',url: './img/tshirt_kids_3.jpg');
    lproduction = mostpopular.setMostPopularValue(title: 'RM 880',url: './img/tshirt_kids_4.jpg');

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