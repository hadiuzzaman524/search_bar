import 'package:flutter/material.dart';
import 'items.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = AllItems();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: SearchLogic());
              })
        ],
      ),
      body: Column(

        children: [
          FlatButton(onPressed: (){  showSearch(context: context, delegate: SearchLogic());},child: Icon(Icons.search),),
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(items.getList[index].name),
                      subtitle: Text(items.getList[index].id),
                    ),
                    Divider()
                  ],
                );
              },
              itemCount: items.getList.length,
            ),
          ),
        ],
      ),
    );
  }
}

class SearchLogic extends SearchDelegate {
 @override
  // TODO: implement searchFieldLabel
  String get searchFieldLabel => 'search';
 @override
  // TODO: implement searchFieldStyle
  TextStyle get searchFieldStyle => TextStyle(
   color: Colors.white54,

 );
 @override
  // TODO: implement keyboardType
  TextInputType get keyboardType => TextInputType.name;

  @override
  ThemeData appBarTheme(BuildContext context) {
    // TODO: implement appBarTheme
    return ThemeData(
      primaryColor: Colors.blue,
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          }),
    ];

  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
   return IconButton(icon: Icon(Icons.arrow_back), onPressed:(){
     close(context, null);
   });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults

    return Text('${query}');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    print(query);
    // TODO: implement buildSuggestions
    List<Student> allList=AllItems().getList;

  List<Student> newList=query.isEmpty? allList:allList.where((element) => element.name.toUpperCase().startsWith(query.toUpperCase())).toList();
  print(newList.length);
  return newList.isEmpty?Center(child: Text('No items available'),):ListView.builder(itemBuilder: (ctx,index){
    return ListTile(
      onTap: (){
        showResults(context);
        print(newList[index].name);
      },
      title: Text(newList[index].name),
      subtitle: Text(newList[index].id),
    );
  },itemCount: newList.length,);
  }
}
