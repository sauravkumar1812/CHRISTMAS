import 'package:flutter/material.dart';
import 'animation.dart';

class SpinPage extends StatefulWidget {
  const SpinPage({Key? key}) : super(key: key);

  @override
  State<SpinPage> createState() => _SpinPageState();
}

String imageTag = "assets/images/spin.jpg";

class _SpinPageState extends State<SpinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spin & Luck", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AnimationPage(heroImageTag: imageTag,)));
          },
          child: Hero(
            tag: imageTag,
            child: Image.asset("assets/images/spin.jpg", width: 250, height: 250,),
          ),
        ),
      ),
    );
  }
}
