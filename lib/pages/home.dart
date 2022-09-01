import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  int _counter = 0;

  int _selectedIndex = 0;

  void _incrementCounter() {
    // setState(() {
    //   // This call to setState tells the Flutter framework that something has
    //   // changed in this State, which causes it to rerun the build method below
    //   // so that the display can reflect the updated values. If we changed
    //   // _counter without calling setState(), then the build method would not be
    //   // called again, and so nothing would appear to happen.
    //   _counter++;
    // });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(title),
      //   backgroundColor: Colors.blueGrey[900],
      // ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Row(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              width: 10,
            ),
            NavigationRail(
              leading: const Text(
                'Flutter POS',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Expanded(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0))),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 12,
                            child: Text('L'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Leslie K.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0))),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 12,
                            child: Text('C'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Cameron W.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0))),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 12,
                            child: Text('J'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Jacob J.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      '@2022 FLutter POS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // minWidth: 150,
              // minExtendedWidth: 200,
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                // setState(() {
                _selectedIndex = index;
                // });
              },
              labelType: NavigationRailLabelType.all,
              useIndicator: true,
              // backgroundColor: Colors.blueGrey[900],
              backgroundColor: const Color.fromRGBO(17, 19, 21, 1),
              indicatorColor: Colors.white30,
              unselectedLabelTextStyle: const TextStyle(color: Colors.white),
              selectedLabelTextStyle: const TextStyle(color: Colors.white),
              unselectedIconTheme: const IconThemeData(color: Colors.white),
              selectedIconTheme: const IconThemeData(color: Colors.white),
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(Icons.note_alt),
                  selectedIcon: Icon(Icons.note_alt_outlined),
                  label: Text('Reservation'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.table_bar),
                  selectedIcon: Icon(Icons.book),
                  label: Text('Table Services'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.menu),
                  selectedIcon: Icon(Icons.star),
                  label: Text('Menu'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.delivery_dining),
                  selectedIcon: Icon(Icons.star),
                  label: Text('Delivery'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.account_balance),
                  selectedIcon: Icon(Icons.star),
                  label: Text('Accounting'),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            const VerticalDivider(thickness: 1, width: 1),
            // This is the main content.
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 30,
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                          // borderSide: const BorderSide(
                          //   color: Colors.green,
                          //   width: 1.0,
                          // ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        // input border should appear when data is being modified
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(10.0),
                        // ),
                        floatingLabelStyle:
                            const TextStyle(color: Colors.black),
                        labelText: 'Search',
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // TextField(
                  //   decoration: InputDecoration(
                  //     labelText: 'Gender',
                  //     fillColor: Colors.blue.shade100,
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(30),
                  //     ),
                  //   ),
                  // ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                // color: Colors.cyan[50],
                                color: const Color.fromRGBO(207, 221, 219, 1),
                                border: Border.all(color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: const [
                                Positioned(
                                  top: 10,
                                  child: Icon(Icons.free_breakfast),
                                ),
                                Positioned(
                                  bottom: 37,
                                  child: Text(
                                    'Breakfast',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Positioned(
                                  bottom: 18,
                                  child: Text('13 items'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                // color: Colors.cyan[50],
                                color: const Color.fromRGBO(250, 194, 217, 1),
                                border: Border.all(color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: const [
                                Positioned(
                                  top: 10,
                                  child: Icon(Icons.food_bank),
                                ),
                                Positioned(
                                  bottom: 37,
                                  child: Text(
                                    'Main Course',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Positioned(
                                  bottom: 18,
                                  child: Text('7 items'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                // color: Colors.cyan[50],
                                color: const Color.fromRGBO(228, 205, 238, 1),
                                border: Border.all(color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: const [
                                Positioned(
                                    top: 10,
                                    child: Icon(Icons.food_bank_outlined)),
                                Positioned(
                                  bottom: 37,
                                  child: Text(
                                    'Pasta',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Positioned(
                                  bottom: 18,
                                  child: Text('10 items'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                // color: Colors.cyan[50],
                                color: const Color.fromRGBO(230, 218, 222, 1),
                                border: Border.all(color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: const [
                                Positioned(
                                  top: 10,
                                  child: Icon(Icons.cake),
                                ),
                                Positioned(
                                  bottom: 37,
                                  child: Text(
                                    'Desserts',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Positioned(
                                  bottom: 18,
                                  child: Text('9 items'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                // color: Colors.cyan[50],
                                color: const Color.fromRGBO(194, 219, 233, 1),
                                border: Border.all(color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: const [
                                Positioned(
                                  top: 10,
                                  child: Icon(Icons.soup_kitchen),
                                ),
                                Positioned(
                                  bottom: 37,
                                  child: Text(
                                    'Soups',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Positioned(
                                  bottom: 18,
                                  child: Text('8 items'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                // color: Colors.cyan[50],
                                color: const Color.fromRGBO(240, 200, 207, 1),
                                border: Border.all(color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: const [
                                Positioned(
                                  top: 10,
                                  child: Icon(Icons.free_breakfast_sharp),
                                ),
                                Positioned(
                                  bottom: 37,
                                  child: Text(
                                    'Drinks',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Positioned(
                                  bottom: 18,
                                  child: Text('11 items'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                // color: Colors.cyan[50],
                                color: const Color.fromRGBO(201, 202, 238, 1),
                                border: Border.all(color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: const [
                                Positioned(
                                  top: 10,
                                  child: Icon(Icons.bubble_chart),
                                ),
                                Positioned(
                                  bottom: 37,
                                  child: Text(
                                    'Sushi',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Positioned(
                                  bottom: 18,
                                  child: Text('15 items'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                // color: Colors.cyan[50],
                                color: const Color.fromRGBO(195, 233, 222, 1),
                                border: Border.all(color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: const [
                                Positioned(
                                    top: 10, child: Icon(Icons.wine_bar)),
                                Positioned(
                                  bottom: 37,
                                  child: Text(
                                    'Alcohol',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Positioned(
                                  bottom: 18,
                                  child: Text('12 items'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const VerticalDivider(thickness: 1, width: 1),
                  const SizedBox(
                    width: 840,
                    child: Divider(
                      thickness: 2,
                      height: 20,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                // color: Colors.cyan[50],
                                color: Color.fromRGBO(45, 45, 45, 1),
                                // border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: [
                                const Positioned(
                                    top: 10,
                                    child: Text(
                                      'Orders -> Kitchen',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 40,
                                    child: Text(
                                      'Fish and Chips',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 70,
                                    child: Text(
                                      'Ksh 450',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                Positioned(
                                    bottom: 10,
                                    right: 15,
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        const Text(
                                          '0',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          height: 30,
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                // color: Colors.cyan[50],
                                color: Color.fromRGBO(45, 45, 45, 1),
                                // border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: [
                                const Positioned(
                                    top: 10,
                                    child: Text(
                                      'Orders -> Kitchen',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 40,
                                    child: Text(
                                      'Roast beef',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 70,
                                    child: Text(
                                      'Ksh 1450',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                Positioned(
                                    bottom: 10,
                                    right: 15,
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        const Text(
                                          '0',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          height: 30,
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                // color: Colors.cyan[50],
                                color: Color.fromRGBO(45, 45, 45, 1),
                                // border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: [
                                const Positioned(
                                    top: 10,
                                    child: Text(
                                      'Orders -> Kitchen',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 40,
                                    child: Text(
                                      'Roast chicken',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 70,
                                    child: Text(
                                      'Ksh 1250',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                Positioned(
                                    bottom: 10,
                                    right: 15,
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        const Text(
                                          '0',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          height: 30,
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                // color: Colors.cyan[50],
                                color: Color.fromRGBO(45, 45, 45, 1),
                                // border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: [
                                const Positioned(
                                    top: 10,
                                    child: Text(
                                      'Orders -> Kitchen',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 40,
                                    child: Text(
                                      'Buffalo wings',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 70,
                                    child: Text(
                                      'Ksh 2450',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                Positioned(
                                    bottom: 10,
                                    right: 15,
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        const Text(
                                          '0',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          height: 30,
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                // color: Colors.cyan[50],
                                color: Color.fromRGBO(45, 45, 45, 1),
                                // border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: [
                                const Positioned(
                                    top: 10,
                                    child: Text(
                                      'Orders -> Kitchen',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 40,
                                    child: Text(
                                      'Fillet steak',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 70,
                                    child: Text(
                                      'Ksh 1050',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                Positioned(
                                    bottom: 10,
                                    right: 15,
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        const Text(
                                          '0',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          height: 30,
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                // color: Colors.cyan[50],
                                color: Color.fromRGBO(45, 45, 45, 1),
                                // border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: [
                                const Positioned(
                                    top: 10,
                                    child: Text(
                                      'Orders -> Kitchen',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 40,
                                    child: Text(
                                      'Lobster',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 70,
                                    child: Text(
                                      'Ksh 1750',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                Positioned(
                                    bottom: 10,
                                    right: 15,
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        const Text(
                                          '0',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          height: 30,
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                // color: Colors.cyan[50],
                                color: Color.fromRGBO(45, 45, 45, 1),
                                // border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: [
                                const Positioned(
                                    top: 10,
                                    child: Text(
                                      'Orders -> Kitchen',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 40,
                                    child: Text(
                                      'Beef steak',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 70,
                                    child: Text(
                                      'Ksh 1500',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                Positioned(
                                    bottom: 10,
                                    right: 15,
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        const Text(
                                          '0',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          height: 30,
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                // color: Colors.cyan[50],
                                color: Color.fromRGBO(45, 45, 45, 1),
                                // border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            width: 200,
                            height: 170,
                            child: Stack(
                              children: [
                                const Positioned(
                                    top: 10,
                                    child: Text(
                                      'Orders -> Kitchen',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 40,
                                    child: Text(
                                      'Red cavier',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )),
                                const Positioned(
                                    top: 70,
                                    child: Text(
                                      'Ksh 2000',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                Positioned(
                                    bottom: 10,
                                    right: 15,
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        const Text(
                                          '0',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          height: 30,
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(9.0)),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 840,
                    child: Divider(
                      thickness: 2,
                      height: 20,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 270,
                        height: 50,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9.0))),
                                child: const Text('T4'),
                              ),
                            ),
                            const Positioned(
                              left: 40,
                              child: Text(
                                'Leslie K.',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 40,
                              top: 18,
                              child: Text(
                                '6 items -> Kitchen',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                        height: 50,
                        child:
                            VerticalDivider(thickness: 2, color: Colors.white),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: 270,
                        height: 50,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(45, 45, 45, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9.0))),
                                child: const Text(
                                  'T2',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 40,
                              child: Text(
                                'Jacob J.',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 150,
                              child: Container(
                                alignment: Alignment.center,
                                width: 80,
                                decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9.0))),
                                child: const Text(
                                  'In Process',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 40,
                              top: 18,
                              child: Text(
                                '4 items -> Kitchen',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                        height: 50,
                        child:
                            VerticalDivider(thickness: 2, color: Colors.white),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: 270,
                        height: 50,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(45, 45, 45, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9.0))),
                                child: const Text(
                                  'T3',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 40,
                              child: Text(
                                'Cameron W.',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 150,
                              child: Container(
                                alignment: Alignment.center,
                                width: 80,
                                decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9.0))),
                                child: const Text(
                                  'In Process',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 40,
                              top: 18,
                              child: Text(
                                '4 items -> Kitchen',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                SizedBox(
                  width: 270,
                  height: 96,
                  child: Stack(
                    children: const [
                      Positioned(
                        top: 10,
                        child: Text(
                          'Table 5',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        child: Text(
                          'Leslie K.',
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            // fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: 30,
                        child: Icon(
                          Icons.note_alt,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 270,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(45, 45, 45, 1),
                      borderRadius: BorderRadius.all(Radius.circular(9.0))),
                  child: Stack(
                    children: const [
                      Positioned(
                          left: 10,
                          top: 15,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.white,
                            child: Text('1'),
                          )
                          // child: Container(child: const Text('1')),
                          ),
                      Positioned(
                        top: 15,
                        left: 40,
                        child: Text(
                          'Roast chicken x2',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 15,
                        child: Text(
                          'Ksh 4500',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 270,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(45, 45, 45, 1),
                      borderRadius: BorderRadius.all(Radius.circular(9.0))),
                  child: Stack(
                    children: const [
                      Positioned(
                          left: 10,
                          top: 15,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.white,
                            child: Text('2'),
                          )
                          // child: Container(child: const Text('1')),
                          ),
                      Positioned(
                        top: 15,
                        left: 40,
                        child: Text(
                          'Red Cavier x3',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 15,
                        child: Text(
                          'Ksh 3500',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 270,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(45, 45, 45, 1),
                      borderRadius: BorderRadius.all(Radius.circular(9.0))),
                  child: Stack(
                    children: const [
                      Positioned(
                          left: 10,
                          top: 15,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.white,
                            child: Text('3'),
                          )
                          // child: Container(child: const Text('1')),
                          ),
                      Positioned(
                        top: 15,
                        left: 40,
                        child: Text(
                          'German Sausage x2',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 15,
                        child: Text(
                          'Ksh 1500',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 270,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(45, 45, 45, 1),
                      borderRadius: BorderRadius.all(Radius.circular(9.0))),
                  child: Stack(
                    children: const [
                      Positioned(
                          left: 10,
                          top: 15,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.white,
                            child: Text('4'),
                          )
                          // child: Container(child: const Text('1')),
                          ),
                      Positioned(
                        top: 15,
                        left: 40,
                        child: Text(
                          'Irish Cream Coffee x2',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 15,
                        child: Text(
                          'Ksh 900',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 270,
                  height: 520,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(45, 45, 45, 1),
                      borderRadius: BorderRadius.all(Radius.circular(9.0))),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 15,
                        child: Row(
                          children: const [
                            Text(
                              'Subtotal',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 90),
                            Text(
                              'Ksh 10400',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 15,
                        child: Row(
                          children: const [
                            Text(
                              'Tax 10%',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 90),
                            Text(
                              'Ksh 1040',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        top: 70,
                        left: 15,
                        child: Text(
                          '--------------------------------------------',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 15,
                        child: Row(
                          children: const [
                            Text(
                              'Total',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(width: 70),
                            Text(
                              'Ksh 1040',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 300,
                        left: 20,
                        child: Row(
                          children: const [
                            Text(
                              'Payment Method',
                              style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                                // fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 330,
                        left: 20,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 50,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(9.0))),
                                  child: const Icon(Icons.monetization_on,
                                      color: Colors.white),
                                ),
                                const Text(
                                  'Cash',
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                    // fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 50,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(9.0))),
                                  child: const Icon(Icons.credit_card,
                                      color: Colors.white),
                                ),
                                const Text(
                                  'Debit Card',
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                    // fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 50,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(9.0))),
                                  child: const Icon(Icons.qr_code,
                                      color: Colors.white),
                                ),
                                const Text(
                                  'E-Wallet',
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                    // fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 420,
                        left: 45,
                        child: Container(
                          alignment: Alignment.center,
                          width: 180,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          child: const Text(
                            'Place Order',
                            style: TextStyle(
                              // color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            // Expanded(
            //   child: Center(
            //     child: Text('selectedIndex: $_selectedIndex'),
            //   ),
            // ),
            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
