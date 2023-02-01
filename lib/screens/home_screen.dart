import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/plans.dart';
import '../widgets/home_grid_element.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    var plansData = Provider.of<Plans>(context);

    return Scaffold(
      appBar: AppBar(title: Text('My plans')),
      drawer: null,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: plansData.plans.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: HomeGridElement(
                id: plansData.plans[index].id.toString(),
                title: plansData.plans[index].title),
          ),
        ),
      ),
    );
  }
}
