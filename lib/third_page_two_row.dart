import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}
String imgSrc02="https://2.bp.blogspot.com/-XyBsBrnIAlI/UTkXjPBn-sI/AAAAAAAAJCI/Dd1HFQ-sIDk/s1600/Paharpur_Naogaon.JPG";
class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Two Row with Scroling"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                children: [
                  SizedBox(
                    width: width/12,
                  ),
                  Container(
                      height:width/3,
                      width:width/3,
                      child: Image.network(imgSrc02)
                  ),
                  SizedBox(
                    width: width/12,
                  ),
                  Container(
                      height:width/3,
                      width:width/3,
                      child: Image.network(imgSrc02)
                  ),
                  SizedBox(
                    width: width/12,
                  ),
                  Container(
                      height:width/3,
                      width:width/3,
                      child: Image.network(imgSrc02)
                  ),
                  SizedBox(
                    width: width/12,
                  ),
                  Container(
                      height:width/3,
                      width:width/3,
                      child: Image.network(imgSrc02)
                  ),

                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                children: [
                  SizedBox(
                    width: width/12,
                  ),
                  Container(
                      height:width/3,
                      width:width/3,
                      child: Image.network(imgSrc02)
                  ),
                  SizedBox(
                    width: width/12,
                  ),
                  Container(
                      height:width/3,
                      width:width/3,
                      child: Image.network(imgSrc02)
                  ),
                  SizedBox(
                    width: width/12,
                  ),
                  Container(
                      height:width/3,
                      width:width/3,
                      child: Image.network(imgSrc02)
                  ),
                  SizedBox(
                    width: width/12,
                  ),
                  Container(
                      height:width/3,
                      width:width/3,
                      child: Image.network(imgSrc02)
                  ),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
