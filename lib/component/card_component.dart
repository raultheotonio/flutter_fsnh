import 'package:flutter/material.dart';
import 'package:fshn/model/ProductModel.dart';

class CardComponente extends StatelessWidget {
  List<ProductModel> lproduction = new List<ProductModel>();
  CardComponente({this.lproduction});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: this.lproduction.length,
            itemBuilder: (context,index){
                    return Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 102,
                            height: 138,
                            decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                            image: ExactAssetImage(this.lproduction[index].url)
                                          )
                                        ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4,left: 2),
                              child: Text(this.lproduction[index].title,style: TextStyle(color: Colors.orange),),
                            )
                        ],
                    ),
                    );
                  },
                );
  }
}