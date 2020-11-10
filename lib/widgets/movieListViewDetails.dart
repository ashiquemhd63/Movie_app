import 'package:flutter/material.dart';
//New route (screen or page)

class MovieListViewDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,

      ),
      body: Container(
        child:RaisedButton(onPressed: (){

        },
        child: Center(child: Text("Go back")),
        ),
      ),
    );
  }
}
