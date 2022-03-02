import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mymovies/bloc/movies_bloc.dart';
import 'package:mymovies/model/search.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key, required this.movieslist}) : super(key: key);
  final List<Search> movieslist;

  @override
  Widget build(BuildContext context) {
    final blocinstance = BlocProvider.of<MoviesBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          blocinstance.wordSearched.text,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(25.0),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 20 / 30,
                crossAxisCount: 5,
                crossAxisSpacing: 5,
                mainAxisSpacing: 20),
            itemCount: movieslist.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  blocinstance.query = movieslist[index].imdbID;
                  blocinstance.add(MoviesEvent.dataClicked);
                  //   print("data is clicked");
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          flex: 5,
                          child:
                              //  movieslist[index].poster.isNotEmpty
                              //     ?
                              Image(
                            image: NetworkImage(movieslist[index].poster),
                            fit: BoxFit.cover,
                          )
                          // : const Image(
                          //     image: NetworkImage(
                          //         "https://www.prokerala.com/movies/assets/img/no-poster-available.jpg"),
                          //     fit: BoxFit.cover,
                          //   ),
                          ),

                      const SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 12, right: 12, top: 4, bottom: 4),
                            color: const Color.fromARGB(255, 231, 219, 44),
                            child: Text(
                              movieslist[index].type.toUpperCase(),
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 8, 8, 8),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          movieslist[index].title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 245, 240, 240),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      // Expanded(
                      //   child: Center(
                      //     child: Text(
                      //       movieslist[index].imdbID,
                      //       style: const TextStyle(
                      //           color: Color.fromARGB(255, 245, 240, 240),
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 20),
                      //     ),
                      //   ),
                      // ),

                      // Expanded(
                      //   child: Center(
                      //     child: Text(
                      //       "Released Year: " + movieslist[index].year,
                      //       style: const TextStyle(
                      //           color: Color.fromARGB(255, 245, 240, 240),
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 15),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
