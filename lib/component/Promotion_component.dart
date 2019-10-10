import 'package:flutter/material.dart';
import 'package:fshn/model/PromotionModel.dart';

class PromotionComponent extends StatelessWidget {
  List<PromotionModel> lpromotion = new List<PromotionModel>();
  PromotionComponent({this.lpromotion});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30,bottom: 30),
      child: Container(
            height: 300.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: this.lpromotion.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 300.0,
                        decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: ExactAssetImage(this.lpromotion[index].url)
                                    )
                                  ),
                      ),
                      Container(
                        width: 300.0,
                        height: 300.0,
                        decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.white.withOpacity(0.0),Colors.black.withOpacity(0.9)]
                                    )
                                  ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                            padding: EdgeInsets.only(top: 150,left: 5),
                            child:  Text(this.lpromotion[index].title,style: TextStyle(color: Colors.white,fontSize: 20),), 
                            ),
                            Divider(color: Colors.white,),
                            Padding( 
                              padding: EdgeInsets.only(top:10,left: 5),
                              child: Text('Use code: ${this.lpromotion[index].code}',style: TextStyle(color: Colors.white,fontSize: 15),),
                            ),
                            Padding( 
                              padding: EdgeInsets.only(top:10,left: 5),
                              child: Text(this.lpromotion[index].description,style: TextStyle(color: Colors.white,fontSize: 15),),
                            )
                          ],
                        )
                      )
                    ],
                  ),
                );
              },
            ),
        ),
    );
  }
}