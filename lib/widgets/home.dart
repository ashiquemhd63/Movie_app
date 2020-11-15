import 'package:flutter/material.dart';
import 'package:movie_app/widgets/movie.dart';
import 'package:movie_app/widgets/movieListViewDetails.dart';


final List<Movie> movieList= Movie.getMovies();


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
          itemCount: movieList.length,//The count of data items
          itemBuilder: (BuildContext context,int index){

        return Card(//card is used to represent some related information like album,contact details
          color: Colors.white,
          elevation: 4.5,//gives shadow
          child: ListTile(
            title: Text(movieList[index].title),
            subtitle: Text("${movieList[0].title}"),
            leading: CircleAvatar(
              child: Container(
               // decoration: BoxDecoration(
                //  color: Colors.blue,
                 // borderRadius: BorderRadius.circular(13.9)
               // ),
                child: Text("H"),

              ),
            ),
            trailing: Text("...") ,
            onTap: (){
              //Going to next page
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieListViewDetails(movieName: movies.elementAt(index),)));
            },
            //onTap: ()=>debugPrint("Movie name: ${movies.elementAt(index)}"),




          ),
        );
      }),
    );
  }
}
