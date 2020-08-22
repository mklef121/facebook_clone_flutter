import 'package:facebook_clone/data/random_color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          reverse: true,
          slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(color: Colors.red, height: 150.0),
                      Container(color: Colors.purple, height: 150.0),
                      Container(color: Colors.green, height: 150.0),
                    ],
                  ),
                ),
                SliverList(
                      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                        // To convert this infinite list to a list with three items,
                        // uncomment the following line:
                        if (index > 3) return null;
                        return Container(color: UniqueColorGenerator.getColor(), height: 150.0);
                      },
                      // Or, uncomment the following line:
                      // childCount: 3,
                    ),
                ),
                SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 4.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.teal[100 * (index % 9)],
                          child: Text('Grid Item $index'),
                        );
                      },
                      childCount: 10,
                    ),
                )
              ]
        )
      );
  }
}
