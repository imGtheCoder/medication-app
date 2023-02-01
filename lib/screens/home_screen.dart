import 'package:flutter/material.dart';
import '../widgets/home_grid_element.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My plans')),
      drawer: null,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: //GridView.builder(itemCount: ,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) , itemBuilder: (context, index) => ,),
            HomeGridElement(),
      ),
    );
  }
}
