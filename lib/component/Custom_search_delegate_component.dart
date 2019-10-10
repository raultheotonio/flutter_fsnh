import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchDelegateComponent extends SearchDelegate<String>{

  
  @override
  String get searchFieldLabel => 'Search product';

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return theme.copyWith(
      
      primaryColor: Colors.white,
      primaryIconTheme: theme.primaryIconTheme.copyWith(color: Colors.black),
      
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {

    return [
      IconButton(
        icon: Icon(FontAwesomeIcons.times),
        onPressed: (){
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {

    return IconButton(
      icon: Icon(FontAwesomeIcons.arrowLeft),
      onPressed: (){
        close(context, null);
      }
    );
  }

  @override
  Widget buildResults(BuildContext context) {

    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    return Container();
  }

}