import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}
List<String> imgList=[
  "assets/images/1.png",
  "assets/images/img1.jpg",
  "assets/images/img2.jpg",
  "assets/images/img3.jpg",
  "assets/images/img4.jpg",
  "assets/images/img5.jpg",
  "assets/images/img6.png",
  "assets/images/img10.png",
  "assets/images/img11.png"
];
class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),

      body:Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: imgList.length,
                        itemBuilder: (context,index){
                               return Column(
                                 children: [
                                   Container(
                                       height: 100,
                                       width: 100,
                                       child: Image.asset(imgList[index],fit: BoxFit.cover,)
                                   ),
                                   Text("Pic: Flower")
                                 ],
                               );
                    }),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: imgList.length,
                        itemBuilder: (context,index){
                          return Column(
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.asset(imgList[index],fit: BoxFit.cover,)
                              ),
                              Text("Pic: Flower")
                            ],
                          );
                        }),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: imgList.length,
                        itemBuilder: (context,index){
                          return Column(
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.asset(imgList[index],fit: BoxFit.cover,)
                              ),
                              Text("Pic: Flower")
                            ],
                          );
                        }),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: imgList.length,
                        itemBuilder: (context,index){
                          return Column(
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.asset(imgList[index],fit: BoxFit.cover,)
                              ),
                              Text("Pic: Flower")
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
      ,
    );
  }
}
