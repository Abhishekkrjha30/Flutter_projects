import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:themovieproject/utils/text.dart';

import 'MovieDetails.dart';

class TvShows extends StatelessWidget {
  final List tvlist;
  const TvShows({super.key,required this.tvlist});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:  EdgeInsets.all(12),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Popolar Tv Shows',style:  GoogleFonts.breeSerif(
            shadows:[Shadow(color: Colors.black,blurRadius: 6)],fontSize: 26,color: Colors.red,decoration:TextDecoration.none),),

     // modifiedText(text: 'Popolar Tv Shows ', size: 26,color: Colors.white,),
            SizedBox(height: 10,),
            Container(
              height: 200,
              child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tvlist.length,
                  itemBuilder: (context,index){
                    return  InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                            MovieDetails(
                                name: tvlist[index]['original_name'],
                                description: tvlist[index]['overview'],
                                bannerurl: 'https://image.tmdb.org/t/p/w500'+tvlist[index]['backdrop_path'],
                                posterurl: 'https://image.tmdb.org/t/p/w500'+tvlist[index]['poster_path'],
                                vote: tvlist[index]['vote_average'].toString(),
                                launchdate: tvlist[index]['first_air_date'])));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child:
                        tvlist[index]['original_name']!=null?Container(
                          width: 250,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  width:250,height:150,
                                  decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://image.tmdb.org/t/p/w500'+tvlist[index]['backdrop_path']
                                          ),fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: modifiedText(
                                    text: tvlist[index]['original_name']!=null?tvlist[index]['original_name']:'Loading',size: 18,color: Colors.white,),
                                )
                              ],
                            ),
                          ),
                        )
                            :Container(),
                      ),
                    );

                  }) ,
            )
          ],
        ),
      ),
    );
  }
}
