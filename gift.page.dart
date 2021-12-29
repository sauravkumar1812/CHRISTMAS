// import 'package:animation/main.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/models.dart';
import 'package:flutter/services.dart';



class GiftPage extends StatefulWidget{
  const GiftPage({Key? key}) : super(key: key);

  @override
  State<GiftPage> createState() => _GiftPageState();
}

class _GiftPageState extends State<GiftPage> {
  Widget MyBox(text){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red,width: 3,style: BorderStyle.solid),

        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text),
        ),
        width: 200,

      ),
    );
  }

  @override
  Widget  build(BuildContext){
    return Scaffold(
      appBar: AppBar(
        title:const Text("MERRY CHRISTMAS"),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0,left: 90),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Image.asset("assets/images/santagift.jpg",fit:BoxFit.fill,
                width: 200,
                height: 200,
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 100),
                child: ListView.builder(

                    itemCount: surpriselist.length,
                    itemBuilder: ( context, index)=>
                        Column(children: [
                          MyBox(surpriselist[index].text)
                        ],)
                  // return const ListTile(
                  //   leading:Icon(Icons.list),
                  //
                  // );

                  //     child: Column(
                  //     children: [
                  //     Container(),
                  // Image.asset("assets/images/santagift.jpgme"),
                  // Icons.padding :const EdgeInsets.only(bottom: 100,right: 30,left: 30,top: 20),


                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}

