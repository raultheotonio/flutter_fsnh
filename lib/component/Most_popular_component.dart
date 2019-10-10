import 'package:flutter/material.dart';
import 'package:fshn/component/card_component.dart';
import 'package:fshn/model/ProductModel.dart';

class MostPopularComponent extends StatefulWidget {
  List<ProductModel> lproduction;
  MostPopularComponent({this.lproduction});
  @override
  _MostPopularComponentState createState() => _MostPopularComponentState();
}

class _MostPopularComponentState extends State<MostPopularComponent> {
  @override
  Widget build(BuildContext context) {
    return           Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text('Most Popular Product',style: TextStyle(fontSize: 25),),
              ),
              SizedBox(height: 10,),
              Container(
                height: 200.0,
                child: CardComponente(lproduction: widget.lproduction,)
              )
            ],
          ),
          );
  }
}