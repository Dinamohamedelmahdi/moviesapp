import 'package:flutter/material.dart';
import 'package:movies/model/popularresponse.dart';

class Movies_tab extends StatelessWidget {

List<Results>? resultarray;
Movies_tab(this.resultarray);
  @override


  @override
  Widget build(BuildContext context) {
    return Expanded(child: Scaffold(
      body: Column(children: [ Text(resultarray?[0].title ?? '')
      ]
      ),
    )
    );
  }
}
