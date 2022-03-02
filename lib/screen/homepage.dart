import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mymovies/bloc/movies_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final blocs = BlocProvider.of<MoviesBloc>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              height: 90,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              margin: const EdgeInsets.all(20.0),
              child: TextField(
                controller: blocs.wordSearched,
                maxLines: 1,
                textAlign: TextAlign.center,
                //  controller: ,
                decoration: InputDecoration(
                    hintStyle: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search for movie title',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(color: Colors.blueGrey))),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  blocs.add(MoviesEvent.buttonTap);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.yellow.shade600,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    textStyle: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                child: const Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
