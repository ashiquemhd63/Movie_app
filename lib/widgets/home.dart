import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movie_app/widgets/movie.dart';
import 'package:movie_app/widgets/movieListViewDetails.dart';


final List<Movie> movieList= Movie.getMovies();



class MovieListView extends StatelessWidget {
  // final List movies=[
  //   "Titanic",
  //   "Blade Runner",
  //   "Rambo",
  //   "The AVENGERS",
  //   "Avatar",
  //   "I Am a Legend",
  //   "300",
  //   "The wolf of wall street",
  //   "Interstellar",
  //   "game of Thrones",
  //   "Vikings"
  //
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade900,
      //[ListView.builder] is used to generate dynamic content from external source
      body:ListView.builder(
          itemCount: movieList.length,//The count of data items
          itemBuilder: (BuildContext context,int index){
            return Stack(children:[

              movieCard(movieList[index], context),
              Positioned(
                top: 10,


                  child: movieImage(movieList[index].images[0])),
            ]);


        // return Card(//card is used to represent some related information like album,contact details
        //   color: Colors.white,
        //   elevation: 4.5,//gives shadow
        //   child: ListTile(
        //     title: Text(movieList[index].title),
        //     subtitle: Text("${movieList[0].title}"),
        //     leading: CircleAvatar(
        //       child: Container(
        //         decoration: BoxDecoration(
        //         image: DecorationImage(
        //
        //         image: NetworkImage(movieList[index].images[0]),
        //           fit: BoxFit.cover,
        //     ),
        //         //  color: Colors.blue,
        //           borderRadius: BorderRadius.circular(13.9)
        //         ),
        //         //child: Text("H"),
        //
        //       ),
        //     ),
        //     trailing: Text("...") ,
        //     onTap: (){
        //       //Going to next page
        //       //passing data to next route
        //       Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieListViewDetails(movieName: movieList[index].title,
        //         movie: movieList[index])));
        //     },
        //     //onTap: ()=>debugPrint("Movie name: ${movies.elementAt(index)}"),
        //
        //
        //
        //
        //   ),
        // );
      }),
    );
  }
  Widget movieCard(Movie movie,BuildContext context){
    return InkWell(//
      child: Container(
        margin: EdgeInsets.only(left: 60.0),
        width: MediaQuery.of(context).size.width,
        height: 120.0,
        child: Card(
          color: Colors.black45,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 54.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(//It eliminate overflow of the text
                        child: Text(movie.title,
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                            color: Colors.white,

                          ) ,
                        ),
                      ),
                      Text("${movie.imdbrating}/10",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Released: ${movie.released}",
                        style: mainTextStyle()
                      ),
                      Text(movie.runtime,
                        style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                      ),
                      Text(movie.rated,
                        style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                        ),


                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
      onTap: (){

          Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieListViewDetails(movieName: movie.title,
            movie: movie)));
        },
    );
  }
  Widget movieImage(String imageUrl){
    return Container(width: 100,
    height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imageUrl ?? ''),
          fit: BoxFit.cover,
        ),

      ),

    );
  }
  TextStyle mainTextStyle(){
    return TextStyle(

        fontSize: 15.0,
        color: Colors.grey,
    );
  }

}
