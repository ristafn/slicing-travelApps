import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_travel_apps/constraints.dart';
import 'package:slicing_travel_apps/models/PlaceList.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listCategory = <String>[
      'Gunung',
      'Pantai',
      'Hutan',
      'Air Terjun',
      'Gurun',
      'Murah'
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        toolbarHeight: 100.0,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Material(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Material(
                              elevation: 4,
                              shadowColor: Constraints.amber,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.person),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Hallo, Kevin!',
                      style: GoogleFonts.robotoCondensed(fontSize: 17),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(50.0),
                child: Material(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Material(
                          elevation: 4,
                          shadowColor: Constraints.amber,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.notifications),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: Constraints.margin),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Text(
                'Mau Kemana\nHari Ini?',
                style: Constraints.jumbotron,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: Constraints.sizedBox1),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'Cari tempat favoritmu...',
                      suffixIcon: Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: Constraints.sizedBox2),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Kategori',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: Constraints.sizedBox1),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 50.0,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(child: Text(listCategory[index])),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: listCategory.length,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: Constraints.sizedBox2),
            ),
            SliverToBoxAdapter(
              child: Text(
                'Sering di kunjungi',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
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
                              style: GoogleFonts.robotoCondensed(fontSize: 17),
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
    );
  }
}
