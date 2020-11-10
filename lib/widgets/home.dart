import 'package:flutter/material.dart';

class MovieListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      //[ListView.builder] is used to generate dynamic content from external source
      body:ListView.builder(itemBuilder: (BuildContext context,int index){

        return Card(
          color: Colors.white,
          child: ListTile(
            title: Text("Movie"),


          ),
        );
      }),
    );
  }
}
