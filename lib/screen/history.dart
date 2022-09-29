import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mymovies/bloc/movies_bloc.dart';
import 'package:mymovies/model/sql_model.dart';
import 'package:mymovies/repository/database_helper.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    final blocs = BlocProvider.of<MoviesBloc>(context);
    return Expanded(
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          //    color: Colors.white,
          child: FutureBuilder<List<SqlModel>>(
              future: DatabaseHelper.instance.read(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: Text(
                      "Loading",
                      style: TextStyle(
                        color: Colors.yellow.shade600,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                      ),
                    ),
                  );
                }
                if (!snapshot.hasData) {
                  return Text(
                    'No history found',
                    style: TextStyle(
                      color: Colors.yellow.shade600,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                    ),
                  );
                }
                return snapshot.data!.isEmpty
                    ? Center(
                        child: Text(
                          'No Search Found',
                          style: TextStyle(
                            color: Colors.yellow.shade600,
                            fontWeight: FontWeight.bold,
                            // fontStyle: FontStyle.italic,
                            fontSize: 25,
                          ),
                        ),
                      )
                    : GridView(
                        padding: const EdgeInsets.all(0),
                        //  scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 20,
                                childAspectRatio: 8 / 4),
                        children: snapshot.data!.map((movie) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                blocs.wordSearched.text = movie.name;
                              });
                            },
                            onLongPress: () {
                              setState(() {
                                DatabaseHelper.instance.delete(movie.id!);
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(2),
                              // height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.yellow.shade600,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  movie.name,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      );
              }),
        ),
      ),
    );
  }
}
