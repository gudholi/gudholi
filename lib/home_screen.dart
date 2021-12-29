import 'package:flutter/material.dart';

/*void main() {
  runApp(MyApp());
}*/

class HomeScreen extends StatefulWidget {
  //const MyHomePage({Key? key, required this.title}) : super(key: key);

  //final String title;

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _users = List.filled(20, 'Grid View');
  final _user1 = List.filled(20, "List View");
  @override
  Widget build(BuildContext context) {
    //Size _size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.purple,
                    child: Column(
                      children: [
                        ListView(
                          shrinkWrap: true,
                          children: [
                            Card(
                              child: ListTile(
                                onTap: () {},
                                title: Text('Date'),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        ListView(
                          shrinkWrap: true,
                          children: [
                            Card(
                              child: ListTile(
                                onTap: () {},
                                title: Text('Date'),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.black26,
          appBar: AppBar(
            title: Center(child: Text("Home Screen")),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Text('Third Tab')
            ]),
          ),
          body: TabBarView(
            children: [
              _contentListView(),
              _contentGridView(),
              _contentListView()
            ],
          ),
        ),
      ),
    );
  }

  Widget _contentListView() {
    return ListView.builder(
      itemCount: _user1.length,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          title: Text(_user1[index]),
        ),
      ),
    );
  }

  Widget _contentGridView() {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
      //return GridView.builder (
      itemCount: _users.length,
      itemBuilder: (context, index) => Card(
        child: GridView.count(
          //padding: EdgeInsets.all(0),
          crossAxisCount: 1,
          //crossAxisSpacing: 10,
          //child: Center(child: Text(_users[index])),
          children: [
            Image.network(
                'https://image.shutterstock.com/image-vector/vector-image-colorful-light-trails-260nw-1097591795.jpg'),
            //Image.network('https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/upwk61813380-wikimedia-image.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=35040e9874b05a262b0e5ffdd27806cf'),
          ],
          /*child: Center(
              child: Image.network(
                  'https://image.shutterstock.com/image-vector/vector-image-colorful-light-trails-260nw-1097591795.jpg'[
                      index])),*/
        ),
      ),
    );
  }
}
