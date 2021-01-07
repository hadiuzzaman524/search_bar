import 'package:flutter/material.dart';
import 'items.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = AllItems();

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
           return Column(
             children: [
               ListTile(
                  title: Text(items.getList[index].name),
                  subtitle: Text(items.getList[index].id),
                ),
               Divider(
                 
               )
             ],
           );
          },
          itemCount: items.getList.length,
        ),
      ),
    );
  }
}
