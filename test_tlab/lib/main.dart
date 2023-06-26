import 'package:flutter/material.dart';
// import '/popularMovieModel.dart'
import 'dart:io';
import 'dart:convert';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMDB Popular Movie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'IMDB Popular Films'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List movies = [];

  @override
  initState(){
    super.initState();
    getMovies();
  }

  Future<void> getMovies() async{
    final String res = await rootBundle.loadString('assets/list_popular_movie.json');
    final data = await jsonDecode(res);
    print("ini data $data");

    this.setState((){
      movies = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("ini move $movies");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:ListView.builder(
    itemCount: movies.length,
    itemBuilder: (context, index){
      var item = movies[index];
      return Container(
        margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
Row(
  children: [
    Image.network(item["image"]),
    SizedBox(width: 8),
    Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(item["title"]),
          Text(item["year"]),
          Text(item["imDbRating"])
        ]
    ),
  ]
),

          Icon(Icons.arrow_upward)
        ]
      )
      );
    }
    ));

  }
}
