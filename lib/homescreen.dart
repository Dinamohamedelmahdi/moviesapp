
import 'package:flutter/material.dart';
import 'package:movies/api_manager.dart';
import 'package:movies/model/moviesresponse.dart';
import 'package:movies/model/popularresponse.dart';
import 'package:movies/moviestab.dart';

class Home_screen extends StatelessWidget {
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(8),
      child: Column(children: [
        FutureBuilder<Popularresponse>(future: Api_manager.Getpopular(),
            builder: (buildContext,snapShot)
            {
              if (snapShot.hasError) {
                return Text('${snapShot.error.toString()}');
              } else if (snapShot.connectionState == ConnectionState.waiting) {
                return
                  Center(child: CircularProgressIndicator(),);
              }
              var data = snapShot.data;
              if(false == data?.success){return Center(child: Text('${data?.status_message}'),);}
              var result = data?.results;
              print(result);
              return Movies_tab(result);
            })
      ],),
    );
  }
}