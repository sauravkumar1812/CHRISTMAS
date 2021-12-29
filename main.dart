import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter/animation.dart';
// import 'package:merrychristmas/animation.dart';
import 'Spin&Luck.dart';
//import 'animation.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "CHRISTMAS",
    home: HomePage(),
    // home:AnimationPage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MERRY CHRISTMAS"),
        centerTitle: true,
        backgroundColor: Colors.red,
        //foregroundColor: Colors.black87,
      ),
      body: Card(
        child: Column(
          children: [
            Container(),
            Image.asset("assets/images/ch.jpeg"),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text("MERRY CHRISTMAS\n                &     \n HAPPY NEW YEAR",
                style: TextStyle(fontWeight: FontWeight.w900,color: Colors.red),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                child: Text(
                  "Hii ! I Am Your Santa",
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("person-1"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("person-2"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SpinPage ()) );
        },
        child: const Icon(
          Icons.forward,
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
