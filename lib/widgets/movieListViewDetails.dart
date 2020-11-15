import 'package:flutter/material.dart';
import 'package:movie_app/widgets/movie.dart';
//New route (screen or page)

class MovieListViewDetails extends StatelessWidget {
  //A variable which will receive the information from  the first route
  final String movieName;
  final Movie movie;

  const MovieListViewDetails({Key key, this.movieName, this.movie}) : super(key: key);

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
