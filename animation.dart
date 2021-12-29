import 'package:flutter/material.dart';
import 'gift.page.dart';
class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key, required this.heroImageTag}) : super(key: key);
  final heroImageTag;

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Hero(
              tag: widget.heroImageTag,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Image.asset("assets/images/spin.jpg",width: 320,height: 320,),
              ),
            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => GiftPage()) );
        },
        child: const Icon(
          Icons.wallet_giftcard_sharp,
        ),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
