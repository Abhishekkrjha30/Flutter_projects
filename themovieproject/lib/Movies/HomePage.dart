import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:themovieproject/Movies/TopratedMovies.dart';
import 'package:themovieproject/Movies/TrendingMovies.dart';
import 'package:themovieproject/Movies/TvShows.dart';
import 'package:themovieproject/utils/text.dart';
import 'package:tmdb_api/tmdb_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List trendingmovielist=[];
  List topratedmovie=[];
  List tvlist=[];
  final String apikey='aa18d6ffea9210eab726489be271db28';
  final token='eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhYTE4ZDZmZmVhOTIxMGVhYjcyNjQ4OWJlMjcxZGIyOCIsInN1YiI6IjY1YTU2NTlmOGRiYzMzMDEyZjZhODU5MyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.NLCy3TCzeHMpMCOP8ePSZoigOzCg5xRjE9cU6J0dYJo';
  @override
  void initState() {
      loadmovies();
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black38,

        title: Text('The Movie App',style:  GoogleFonts.breeSerif(
            shadows:[Shadow(color: Colors.black,blurRadius: 6)],fontSize: 26,color: Colors.red,decoration:TextDecoration.none),),

      centerTitle: true,
      ),
      body: Container(
        child:ListView(
          children: [
            TvShows(tvlist: tvlist,),
            TopRatedMovies(toprated: topratedmovie),
            TrendingMovies(trending:trendingmovielist,),
          ],
        ),

      ),
    );
  }


  loadmovies() async{
    TMDB tmdb=TMDB(ApiKeys(apikey, token),
     logConfig: ConfigLogger(
        showErrorLogs: true, showLogs: true,
    )
    );

    Map trendingmoviemap= await tmdb.v3.trending.getTrending();
    Map topratedmoviemap= await tmdb.v3.movies.getTopRated();
    Map tvmap= await tmdb.v3.tv.getPopular();

   // setState(() {
      trendingmovielist=trendingmoviemap['results'];
      topratedmovie=topratedmoviemap['results'];
      tvlist=tvmap['results'];

   // });
    print(tvlist);
  }
}
