import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fshn/component/Custom_search_delegate_component.dart';
import 'package:fshn/component/Woman_component.dart';
import 'package:fshn/component/kids_component.dart';
import 'package:fshn/component/man_component.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.search),
        onPressed: (){
          showSearch(   
            context: context,
            delegate: CustomSearchDelegateComponent()
          );
        },
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('FSNH',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.cartArrowDown,color: Colors.black,),
            onPressed: (){},
          )

        ],
        bottom: TabBar(
          tabs: <Widget>[
            Tab(child: Text('Man',style: TextStyle(color: Colors.black,fontSize: 18),),),
            Tab(child: Text('Woman',style: TextStyle(color: Colors.black,fontSize: 18),),),
            Tab(child: Text('Kids',style: TextStyle(color: Colors.black,fontSize: 18),),),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          ManComponent(),
          WomanComponent(),
          Kidscomponent()
        ],
      ),
    );
  }
}