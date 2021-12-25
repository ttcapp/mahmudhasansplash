import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
String btnText1="Click to show assetimg in Row";
String btnText2="Click to show NetImg in Row";
String btnText="Button One";

bool rowVisiblility=false;
bool ImageVisibility= false;
bool ImageVisibility2=false;


Color btnColor=Colors.green;
Color btnColor1=Colors.purpleAccent;
Color btnColor2=Colors.blue;
String imgSrc1="https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg";
String imgSrc2="https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg";
String imgAsset1="assets/images/img1.jpg";
String imgAsset2="assets/images/img1.jpg";
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
      body: SingleChildScrollView(



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
                      rowVisiblility=true;
                      btnColor1=Colors.green;
                    });
              }),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Visibility(
                  visible: rowVisiblility,
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
                      ImageVisibility2=true;
                      btnText2="Button Pressed";
                      btnColor2=Colors.redAccent;
                    });
              }),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Visibility(
                  visible: ImageVisibility2,
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
                width: 300,
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
                  child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg",fit: BoxFit.cover,)
              ),
              RaisedButton(
                  child: Text(btnText,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  color: btnColor,
                  onPressed: (){
                    setState(() {
                      btnText="Button Pressed";
                      ImageVisibility= true;
                      btnColor=Colors.black;
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              Visibility(
                visible: ImageVisibility,
                child: Container(
                  height: MediaQuery.of(context).size.height,
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

