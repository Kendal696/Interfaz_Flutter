 import 'package:flutter/material.dart';
import 'package:tarea_flutter/notification.dart';
import 'package:tarea_flutter/search.dart';

void main() {
  runApp(const MainApp());
}


class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        
        children: <Widget>[
          SizedBox(height: 12,),
          const ListTile(
            leading:CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromARGB(255, 255, 227, 238),
              child: Icon(
              Icons.airplanemode_active_outlined,
              color: Color.fromARGB(255, 253, 10, 125),
              size: 25,
              ),
            ),
            title: Text('Hawai   ->   Sevilla'),
            subtitle: Text('28 Oct. 2018   ----   11:00AM                        Emirates Airways'),
            trailing: Icon(Icons.more_vert),
          ),
          SizedBox(height: 12,),
        ],
      ),
      color: Colors.white,
      margin: EdgeInsets.only(top: 25,left: 15,right: 15),
    );
  }
}

class CardExample2 extends StatelessWidget {
  const CardExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(height: 12,),
          const ListTile(
            leading:CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromARGB(255, 255, 227, 238),
              child: Icon(
              Icons.directions_bus,
              color: Color.fromARGB(255, 253, 10, 125),
              size: 25,
              ),
            ),
            title: Text('Sevilla   ->   Monaco'),
            subtitle: Text('28 Oct. 2018   ----   11:00AM                        Emirates Airways'),
            trailing: Icon(Icons.more_vert),
          ),
          SizedBox(height: 12,),
        ],
      ),
      color: Colors.white,
      margin: EdgeInsets.only(top: 15,left: 15,right: 15),
    );
  }
}

class CardExample3 extends StatelessWidget {
  const CardExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(height: 12,),
          const ListTile(
            leading:CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromARGB(255, 255, 227, 238),
              child: Icon(
              Icons.airplanemode_active_outlined,
              color: Color.fromARGB(255, 253, 10, 125),
              size: 25,
              ),
            ),
            title: Text('Atlanta   ->   Marrakech'),
            subtitle: Text('28 Oct. 2018   ----   11:00AM                        Emirates Airways'),
            trailing: Icon(Icons.more_vert),
          ),
          SizedBox(height: 12,),
        ],
      ),
      color: Colors.white,
      margin: EdgeInsets.only(top: 15,left: 15,right: 15),
    );
  }
}

class CardExample4 extends StatelessWidget {
  const CardExample4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(height: 12,),
           ListTile(
            leading:CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromARGB(255, 255, 227, 238),
              child: Icon(
              Icons.directions_boat,
              color: Color.fromARGB(255, 253, 10, 125),
              size: 25,
              ),
            ),
            title: Text('Geneva  ->  Mexico City'),
            subtitle: Text('28 Oct. 2018   ----   11:00AM                        Emirates Airways'),
            trailing: Icon(Icons.more_vert),
            
          ),
          SizedBox(height: 12,),
        ],
        
      ),
      color: Colors.white,
      margin: EdgeInsets.only(top: 15,left: 15,right: 15),
    );
  }
}
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final ValueNotifier<bool> _notificationIndicatorVisible = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              indicatorColor: Color.fromARGB(255, 242, 52, 131),
              indicatorWeight: 4,
              tabs: [
                Tab(
                  icon: Text(
                    '                  TRIPS                  ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                ),
                Tab(
                  icon: Text(
                    '                 HOTELS                 ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                )
              ],
            ),
            actions: <Widget>[
              Builder(
                builder: (context) => Stack(
                  alignment: Alignment.topRight,
                  children: [
                    IconButton(
                      onPressed: () {
                        _notificationIndicatorVisible.value = false;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationScreen()),
                        );
                      },
                      focusColor: Colors.amber,
                      icon: Icon(Icons.notifications_none_outlined),
                    ),
                    ValueListenableBuilder<bool>(
                      valueListenable: _notificationIndicatorVisible,
                      builder: (context, visible, child) {
                        return Visibility(
                          visible: visible,
                          child: Container(
                            margin: EdgeInsets.only(top: 45, right: 21),
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 253, 10, 125),
                              shape: BoxShape.circle,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchScreen()),
                    );
                  },
                  icon: Icon(Icons.search),
                ),
              ),
            ],
            title: const Text(
              'Bookings',
              style: TextStyle(fontSize: 15),
            ),
            centerTitle: true,
          ),
          body: const TabBarView(children: [
            Column(
              children: [
                CardExample(),
                CardExample2(),
                CardExample3(),
                CardExample3(),
                CardExample4(),
                CardExample3(),
              ],
            ),
            Column(
              children: [
                CardExample(),
                CardExample2(),
                CardExample3(),
                CardExample3(),
                CardExample4(),
                CardExample3(),
              ],
            ),
          ]),
          backgroundColor: Color.fromARGB(255, 227, 227, 227),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const <Widget>[
                DrawerHeader(
                  child: Text('Settings'),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 253, 10, 125)),
                ),
                ListTile(
                  title: Text('Options1'),
                ),
                ListTile(
                  title: Text('Options2'),
                ),
                ListTile(
                  title: Text('Options3'),
                ),
                ListTile(
                  title: Text('Options4'),
                ),
                ListTile(
                  title: Text('Options5'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}