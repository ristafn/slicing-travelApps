import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_travel_apps/models/PlaceList.dart';

import '../constraints.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Constraints.margin),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(height: Constraints.sizedBox1),
              ),
              SliverToBoxAdapter(
                child: Text(
                  'Jelajah dan dapatkan tempat terbaik',
                  style: Constraints.jumbotron,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: Constraints.sizedBox1),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    Place place = Place.placeList[index];

                    return Card(
                      elevation: 2,
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(5.0),
                                bottomRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(5.0),
                              ),
                              child: Image.asset(
                                'assets/images/${place.img}.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                color: Constraints.amber,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                ),
                              ),
                              child: Text(
                                place.name,
                                style:
                                    GoogleFonts.robotoCondensed(fontSize: 17),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.all(5.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Constraints.amber,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.black26,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  childCount: Place.placeList.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
