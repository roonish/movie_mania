import 'package:flutter/material.dart';
import 'package:mymovies/model/movie_detail.dart';

class DetailPage extends StatelessWidget {
  // final Search search;
  final MovieDetail search;
  const DetailPage({
    Key? key,
    required this.search,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(search.title)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.skip_previous,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        //   height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                //  width: double.infinity,
                // height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Image(
                  image: NetworkImage(search.poster),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              search.title + " (${search.year})",
                              maxLines: 2,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 209, 189, 11),
                                  fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      search.genre,
                      style: const TextStyle(
                          //  fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "- ${search.runtime}",
                        style: const TextStyle(
                            //  fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Overview : ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      search.plot,
                      style: const TextStyle(

                          //   fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 17),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Box Office",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          search.boxOffice,
                          style: const TextStyle(
                              //   fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 231, 219, 44),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
                          child: Text(
                            search.rated + " Rated",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 8, 8, 8),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Casts : ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Cast(
                      cast: search.actors,
                      title: "Actors       :",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Cast(
                      cast: search.director,
                      title: "Directors   :",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Cast(
                      cast: search.writer,
                      title: "Writer       :",
                    ),

                    //  Cast(cast: search., title:  "Actors :",),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cast extends StatelessWidget {
  const Cast({Key? key, required this.cast, required this.title})
      : super(key: key);

  final String cast;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
                //   fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 17),
          ),
        ),
        Expanded(
          child: Text(
            cast,
            style: const TextStyle(
                //   fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 17),
          ),
        ),
      ],
    );
  }
}
