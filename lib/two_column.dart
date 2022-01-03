import 'package:flutter/material.dart';

class ForthPage extends StatefulWidget {
  const ForthPage({Key? key}) : super(key: key);

  @override
  _ForthPageState createState() => _ForthPageState();
}
String imgSrc01="https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Landscape_view_of_Paharpur.jpg/800px-Landscape_view_of_Paharpur.jpg";

class _ForthPageState extends State<ForthPage> {
  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Two Column"),
      ),
      body:
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: width/6,),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Container(
                        color: Colors.deepPurple,
                        height:width/2,
                        width: width/2,
                        child: Image.network(imgSrc01)
                    ),
                    Container(
                        height:width/2,
                        width: width/2,
                        child: Image.network(imgSrc01)
                    ),
                    Container(
                        height:width/2,
                        width: width/2,
                        child: Image.network(imgSrc01)
                    ),
                    Container(
                        height:width/2,
                        width: width/2,
                        child: Image.network(imgSrc01)
                    ),
                    Container(
                        height:width/2,
                        width: width/2,
                        child: Image.network(imgSrc01)
                    ),
                    Container(
                        height:width/2,
                        width: width/2,
                        child: Image.network(imgSrc01)
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: width/6,),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Container(
                        color: Colors.deepPurple,
                        height:width/2,
                        width: width/2,
                        child: Image.network(imgSrc01)
                    ),
                    Container(
                        height:width/2,
                        width: width/2,
                        child: Image.network(imgSrc01)
                    ),
                    Container(
                        height:width/2,
                        width: width/2,
                        child: Image.network(imgSrc01)
                    ),
                    Container(
                        height:width/2,
                        width: width/2,
                        child: Image.network(imgSrc01)
                    ),
                    Container(
                        height:width/2,
                        width: width/2,
                        child: Image.network(imgSrc01)
                    ),
                    Container(
                        height:width/2,
                        width: width/2,
                        child: Image.network(imgSrc01)
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
