import 'package:flutter/material.dart';
import 'package:zomato/provider/categories_provider.dart';
import 'package:zomato/provider/cities_provider.dart';
import 'package:zomato/screens/mapscreen.dart';
import 'package:zomato/widgets/cuisineCard.dart';
import 'package:zomato/widgets/previousOrderCard.dart';
import 'package:zomato/widgets/search.dart';
import 'package:zomato/widgets/sliver_header.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              title: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (_) {
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Search Location',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Search(),
                            ),
                            FlatButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.gps_fixed,
                                color: Colors.red,
                              ),
                              label: Text(
                                'Use current location',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            Divider(),
                            FlatButton.icon(
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(MapScreen.routeName),
                              icon: Icon(
                                Icons.add,
                                color: Colors.red,
                              ),
                              label: Text(
                                'Add address',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            Divider(),
                          ],
                        ),
                      );
                    },
                  );
                },
                behavior: HitTestBehavior.opaque,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    Text(
                      'Sector 4, Vaishali',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              floating: false,
              pinned: true,
            ),
            SliverHeader(
              bgColor: Colors.white,
              child: Search(),
            ),
            SliverPersistentHeader(
              delegate: _SliverAppBarDelegate(
                TabBar(
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 4,
                      color: Colors.red,
                    ),
                    insets: EdgeInsets.only(left: 0, right: 8, bottom: 4),
                  ),
                  labelPadding: EdgeInsets.only(left: 0, right: 0),
                  labelColor: Colors.black87,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tab(
                        child: Text("Delivery"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tab(
                        child: Text("Self Pickup"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tab(
                        child: Text("Food@Work"),
                      ),
                    ),
                  ],
                ),
              ),
              pinned: false,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    color: Color(0xffEFEFEF),
                    height: 200,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 35,
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.restaurant,
                                  size: 25,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                "Popular cuisines around you",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: Color(0xfff5f5f0),
                          height: 165,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return CuisineCard();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    color: Color(0xffEFEFEF),
                    height: 290,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          color: Color(0xffEFEFEF),
                          height: 60,
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.access_time,
                                  size: 25,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                "Previous Order",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: Color(0xffEFEFEF),
                          height: 230,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return PreviousOrderCard();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "sdsdkjfbsjkdfbsd fsdffsddsfsdfsdfsdfsdfsd sdfsdfsdfsdf sdfsdfsdfsd fsdfsdfsdfsd sdfsdfsdfsdf sdfsdfsdsdfsdfsdfsd sdfsdfsdfd sdsdgsdg",
                    style: TextStyle(fontSize: 50),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
