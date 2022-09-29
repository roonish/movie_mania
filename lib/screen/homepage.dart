import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mymovies/bloc/movies_bloc.dart';
import 'package:mymovies/model/sql_model.dart';
import 'package:mymovies/repository/database_helper.dart';
import 'package:mymovies/screen/history.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final blocs = BlocProvider.of<MoviesBloc>(context);
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 90,
            ),
            Text(
              'Movie Mania',
              style: TextStyle(
                color: Colors.yellow.shade600,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 60,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: blocs.wordSearched,
              maxLines: 1,
              textAlign: TextAlign.center,
              //  controller: ,
              decoration: InputDecoration(
                  hintStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search for movie title',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(color: Colors.blueGrey))),
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recent : ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const History(),
            // const SizedBox(
            //   height: 30,
            // ),
            ElevatedButton(
                onPressed: () async {
                  if (blocs.wordSearched.text.isNotEmpty) {
                    await DatabaseHelper.instance
                        .add(SqlModel(name: blocs.wordSearched.text));
                    //  blocs.add(MoviesEvent.showHistory);
                  }

                  blocs.add(MoviesEvent.buttonTap);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.yellow.shade600,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    textStyle: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                child: const Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
