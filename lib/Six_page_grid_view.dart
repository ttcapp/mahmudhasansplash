import 'package:flutter/material.dart';
import 'package:splash/image_view.dart';
class SixPage extends StatefulWidget {
  const SixPage({Key? key}) : super(key: key);

  @override
  _SixPageState createState() => _SixPageState();
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
class _SixPageState extends State<SixPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Six page Grid View"),
      ),
      body: GridView.count(crossAxisCount: 3,
      children: imgList.map((e)  {
             return Padding(
               padding: const EdgeInsets.all(8.0),
               child: InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageView(image: e)));
                 },
                 child: Container(
                   height: 300,
                   width: 300,
                   child: Image.asset(e,fit: BoxFit.cover,),
                 ),
               ),
             );
              }).toList(),
      ),
    );
  }
}
