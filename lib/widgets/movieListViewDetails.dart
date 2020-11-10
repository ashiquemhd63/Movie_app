import 'package:flutter/material.dart';
//New route (screen or page)

class MovieListViewDetails extends StatelessWidget {
  //A variable which will receive the information from  the first route
  final String movieName;

  const MovieListViewDetails({Key key, this.movieName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies ${this.movieName}"),
        backgroundColor: Colors.blueGrey.shade900,

      ),
      body: Container(
        child:RaisedButton(onPressed: (){
            Navigator.pop(context);//Going back to previous route
        },
        child: Center(child: Text("Go back")),
        ),
      ),
    );
  }
}
