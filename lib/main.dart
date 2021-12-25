import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
String btnText1="show assetimg in Row";
String btnText2="show NetImg in Row";
String btnText3="Button Three";

bool rowVisiblility1=false;
bool rowVisibility2=false;
bool ImageVisibility3= false;

Color btnColor1=Colors.purpleAccent;
Color btnColor2=Colors.blue;
Color btnColor3=Colors.green;

String imgSrc1="https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg";
String imgSrc2="https://upload.wikimedia.org/wikipedia/commons/c/c5/Various_flowers.jpg";

double imgHeight=150;
double imgWidth=200;


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text("Batch_C_All practise"),
      ),
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              RaisedButton(
                color: btnColor1,
                  child: Text(btnText1,style: TextStyle(fontSize: 30),),
                  onPressed: (){
                    setState(() {
                      btnText1="Pictur has showed";
                      rowVisiblility1=true;
                      btnColor1=Colors.green;
                    });
              }),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Visibility(
                  visible: rowVisiblility1,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: imgHeight,
                          width: imgWidth,
                          decoration: BoxDecoration(
                              border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(image: AssetImage("assets/images/img3.jpg"))
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: imgHeight,
                          width: imgWidth,
                          decoration: BoxDecoration(
                              border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(image: AssetImage("assets/images/img3.jpg"))
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: imgHeight,
                          width: imgWidth,
                          decoration: BoxDecoration(
                              border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(image: AssetImage("assets/images/img3.jpg"))
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: imgHeight,
                          width: imgWidth,
                          decoration: BoxDecoration(
                              border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(image: AssetImage("assets/images/img3.jpg"))
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: imgHeight,
                          width: imgWidth,
                          decoration: BoxDecoration(
                              border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(image: AssetImage("assets/images/img3.jpg"))
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              RaisedButton(
                  child: Text(btnText2,style: TextStyle(fontSize: 32),),
                  color: btnColor2,
                  onPressed: (){
                    setState(() {
                      rowVisibility2=true;
                      btnText2="Button Pressed";
                      btnColor2=Colors.redAccent;
                    });
              }),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Visibility(
                  visible: rowVisibility2,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: imgWidth,
                          height: imgHeight,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(width: 6,color: Colors.purpleAccent),
                            image: DecorationImage(image: NetworkImage(imgSrc1),fit: BoxFit.cover)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: imgWidth,
                          height: imgHeight,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 6,color: Colors.purpleAccent),
                              image: DecorationImage(image: NetworkImage(imgSrc1),fit: BoxFit.cover)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: imgWidth,
                          height: imgHeight,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 6,color: Colors.purpleAccent),
                              image: DecorationImage(image: NetworkImage(imgSrc1),fit: BoxFit.cover)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: imgWidth,
                          height: imgHeight,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 6,color: Colors.purpleAccent),
                              image: DecorationImage(image: NetworkImage(imgSrc1),fit: BoxFit.cover)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: imgWidth,
                          height: imgHeight,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 6,color: Colors.purpleAccent),
                              image: DecorationImage(image: NetworkImage(imgSrc1),fit: BoxFit.cover)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                color: Colors.lightGreen,
                child: Image.asset("assets/images/img1.jpg",fit: BoxFit.cover,),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 300,
                  width: 300,
                  color: Colors.blue,
                  child: Image.network(imgSrc2,fit: BoxFit.cover,)
              ),
              RaisedButton(
                  child: Text(btnText3,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  color: btnColor3,
                  onPressed: (){
                    setState(() {
                      btnText3="Button Pressed";
                      ImageVisibility3= true;
                      btnColor3=Colors.black;
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              Visibility(
                visible: ImageVisibility3,
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(width: 5),
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(image: AssetImage("assets/images/img2.jpg"),fit: BoxFit.cover)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

