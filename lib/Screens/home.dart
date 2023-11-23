import 'package:brandon/Screens/swahili.dart';
import 'package:brandon/Screens/tenzi.dart';
import 'package:flutter/material.dart';
import 'english.dart';
import 'golden.dart';
import 'hyme.dart';
import 'native.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Path To Christ'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),


      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.blue,
        notchMargin: 3,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(minWidth: 30, onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.home,
                      color: Colors.white),
                      Text('Home',
                      style: TextStyle(color: Colors.white,fontSize: 9),)
                    ],
                  ),
                  ),
                  MaterialButton(minWidth: 30, onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.book_outlined,
                            color: Colors.white),
                        Text('Events',
                          style: TextStyle(color: Colors.white,fontSize: 9),)
                      ],
                    ),
                  ),

                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(minWidth: 30, onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.book_rounded,
                            color: Colors.white),
                        Text('Notes',
                          style: TextStyle(color: Colors.white,fontSize: 9),)
                      ],
                    ),
                  ),
                  MaterialButton(minWidth: 30, onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.person_outline,
                            color: Colors.white),
                        Text('Profile',
                          style: TextStyle(color: Colors.white,fontSize: 9),)
                      ],
                    ),),

                ],
              ),
            ],
          ),
        ),
      ),


      drawer: Drawer(backgroundColor: Colors.white,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('For I have good plans for you,'),
              accountEmail: Text('Says the lord.'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: ExactAssetImage('images/bible.jpg'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favourites'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.waving_hand),
              title: const Text('Prayer List'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.handshake),
              title: const Text('Appreciation'),
              onTap: () {
              },
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            const Text('Developer - brandonkipkoech47@gmail.com',
            style: TextStyle(color: Colors.black,
            fontSize: 12),)
          ],
        ),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/Pray.jpg'),
                  ),
                ),
                height: 230,
              ),
              const SizedBox(height: 30),
              const Text('Below are resources that will help you;',
              style: TextStyle(color: Colors.white),
              ),

              GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: GestureDetector(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 50,
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text('(Bible)  English Version',
                            style: TextStyle(color: Colors.black,fontSize: 11),
                            textAlign: TextAlign.center,),
                        ),
                      ),
                      onTap: () {
                        // Handle tap event here
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return const English();
                        }
                        ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: GestureDetector(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 50,
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text('(Bible)  Swahili Version',
                            style: TextStyle(color: Colors.black,fontSize: 11),
                            textAlign: TextAlign.center,),
                        ),
                      ),
                      onTap: () {
                        // Handle tap event here
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return const Swahili();
                        }
                        ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: GestureDetector(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 50,
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text('(Bible)   Native Version',
                            style: TextStyle(color: Colors.black,fontSize: 11),
                            textAlign: TextAlign.center),
                        ),
                      ),
                      onTap: () {
                        // Handle tap event here
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return const Native();
                        }
                        ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: GestureDetector(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 50,
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text('Golden Bells',
                            style: TextStyle(color: Colors.black,fontSize: 11),
                            textAlign: TextAlign.center,),
                        ),
                      ),
                      onTap: () {
                        // Handle tap event here
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return const Golden();
                        }
                        ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: GestureDetector(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 50,
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text('Tenzi Za Rohoni',
                            style: TextStyle(color: Colors.black,fontSize: 11),
                            textAlign: TextAlign.center),
                        ),
                      ),
                      onTap: () {
                        // Handle tap event here
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return const Tenzi();
                        }
                        ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: GestureDetector(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 50,
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text('Native hyme',
                            style: TextStyle(color: Colors.black,fontSize: 11),
                            textAlign: TextAlign.center,),
                        ),
                      ),
                      onTap: () {
                        // Handle tap event here
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return const Hyme();
                        }
                        ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}




