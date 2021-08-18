import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> place = ['ampat', 'bromo', 'bali', 'komodo'];

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
                              shadowColor: Colors.amber,
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
                    Text('Hallo, Kevin!'),
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
                          shadowColor: Colors.amber,
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
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Mau Kemana\nhari ini?',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 36)),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Container(
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
                  SizedBox(
                    height: 34,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Kategori',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18)),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                              padding: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('Gunung')),
                        ),
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                              padding: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('Pantai')),
                        ),
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                              padding: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('Hutan')),
                        ),
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                              padding: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('Air Terjun')),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Sering di kunjungi',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18)),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  var callImages = place[index];

                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image.asset(
                      'assets/images/$callImages.png',
                      fit: BoxFit.cover,
                    ),
                  );
                },
                childCount: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
