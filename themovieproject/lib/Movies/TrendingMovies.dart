import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:themovieproject/Movies/MovieDetails.dart';
import 'package:themovieproject/utils/text.dart';

class TrendingMovies extends StatelessWidget {
  final List trending;
  const TrendingMovies({super.key,required this.trending});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:  EdgeInsets.all(12),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Trending Movies',style:  GoogleFonts.breeSerif(
                shadows:[Shadow(color: Colors.black,blurRadius: 6)],fontSize: 26,color: Colors.red,decoration:TextDecoration.none),),

         //   modifiedText(text: 'Trending Movies', size: 26,color: Colors.white,),
            SizedBox(height: 10,),
            Container(
              height: 270,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: trending.length,
                  itemBuilder: (context,index){
                   return  InkWell(
                      onTap: (){
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
    MovieDetails(
        name: trending[index]['title'],
        description: trending[index]['overview'],
        bannerurl: 'https://image.tmdb.org/t/p/w500'+trending[index]['backdrop_path'],
        posterurl: 'https://image.tmdb.org/t/p/w500'+trending[index]['poster_path'],
        vote: trending[index]['vote_average'].toString(),
        launchdate: trending[index]['release_date'])));
                      },
                     child:
                     trending[index]['title']!=null?Container(
                       width: 150,
                       child: SingleChildScrollView(
                         child: Column(
                           children: [
                             Container(
                               height:200,
                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image: NetworkImage(
                                     'https://image.tmdb.org/t/p/w500'+trending[index]['poster_path']
                                   ),
                                 ),
                               ),
                             ),
                             Container(
                               child: modifiedText(
                                 text: trending[index]['title']!=null?trending[index]['title']:'Loading',size: 18,color: Colors.white,),
                             )
                           ],
                         ),
                       ),
                     )
                         :Container(),
                    );

                  }) ,
            )
          ],
        ),
      ),
    );
  }
}
