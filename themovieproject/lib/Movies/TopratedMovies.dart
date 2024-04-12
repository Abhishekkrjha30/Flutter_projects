import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:themovieproject/utils/text.dart';

import 'MovieDetails.dart';

class TopRatedMovies extends StatelessWidget {
  final List toprated;
  const TopRatedMovies({super.key,required this.toprated});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:  EdgeInsets.all(12),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Top Rated Movies',style:  GoogleFonts.breeSerif(
                shadows:[Shadow(color: Colors.black,blurRadius: 6)],fontSize: 26,color: Colors.red,decoration:TextDecoration.none),),

           // modifiedText(text: 'Top Rated Movies', size: 26,color: Colors.white,),
            SizedBox(height: 10,),
            Container(
              height: 270,
              child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: toprated.length,
                  itemBuilder: (context,index){
                    return  InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                            MovieDetails(
                                name: toprated[index]['title'],
                                description: toprated[index]['overview'],
                                bannerurl: 'https://image.tmdb.org/t/p/w500'+toprated[index]['backdrop_path'],
                                posterurl: 'https://image.tmdb.org/t/p/w500'+toprated[index]['poster_path'],
                                vote: toprated[index]['vote_average'].toString(),
                                launchdate: toprated[index]['release_date'])));
                      },
                      child:
                      toprated[index]['title']!=null?Container(
                        width: 150,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height:200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://image.tmdb.org/t/p/w500'+toprated[index]['poster_path']
                                        )
                                    )
                                ),
                              ),
                              Container(
                                child: modifiedText(
                                  text: toprated[index]['title']!=null?toprated[index]['title']:'Loading',size: 18,color: Colors.white,),
                              )
                            ],
                          ),
                        ),
                      )
                          :Container()
                    );

                  }) ,
            )
          ],
        ),
      ),
    );
  }
}
