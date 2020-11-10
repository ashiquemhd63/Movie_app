import 'package:flutter/material.dart';

class MovieListView extends StatelessWidget {
  final List movies=[
    "Titanic",
    "Blade Runner",
    "Rambo",
    "The AVENGERS",
    "Avatar",
    "I Am a Legend",
    "300",
    "The wolf of wall street",
    "Interstellar",
    "game of Thrones",
    "Vikings"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      //[ListView.builder] is used to generate dynamic content from external source
      body:ListView.builder(
          itemCount: movies.length,//The count of data items
          itemBuilder: (BuildContext context,int index){

        return Card(//card is used to represent some related information like album,contact details
          color: Colors.white,
          child: ListTile(
            title: Text(movies[index]),



          ),
        );
      }),
    );
  }
}
