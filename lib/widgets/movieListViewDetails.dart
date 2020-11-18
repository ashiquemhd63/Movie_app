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

      body: ListView(
        children: [
          MovieDetailsThumbnail(thumbnail: movie.images[0],),
          MovieDetailsHeaderWithPoster(movie: movie,)

        ],
      ),
      // body: Container(
      //   child:RaisedButton(onPressed: (){
      //       Navigator.pop(context);//Going back to previous route
      //   },
      //   child: Center(child: Text("Go back")),
      //   ),
      // ),
    );
  }
}
class MovieDetailsThumbnail extends StatelessWidget {
  final String thumbnail;

  const MovieDetailsThumbnail({Key key, this.thumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Icon(Icons.play_circle_outline,size: 100,
            color: Colors.white,)
          ],
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0x00f5f5f5),Color(0xfff5f5f5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),

          ),
          height: 80,
        ),

      ],
    );
  }
}
class MovieDetailsHeaderWithPoster extends StatelessWidget {
  final Movie movie;

  const MovieDetailsHeaderWithPoster({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          MoviePoster(poster: movie.images[0]/*toString()*/)
        ],
      ),
    );
  }
}

class MoviePoster extends StatelessWidget{
  final String poster;

  const MoviePoster({Key key, this.poster}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var borderRadius= BorderRadius.all(Radius.circular(10));
    return Card(
      child: ClipRRect(//A widget that clips its child using a rounded rectangle
        borderRadius: borderRadius,
        child: Container(
          width: MediaQuery.of(context).size.width/4,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(poster),
              fit: BoxFit.cover,
            ),


          ),
        ),
      ),
    );
  }
}


