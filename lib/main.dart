import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
bool ImageVisibility= false;
String btnText="Button One";
Color btnColor=Colors.green;
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
        backgroundColor: Colors.orangeAccent,
        title: Text("Batch_C_All practise"),
      ),
      body: SingleChildScrollView(



        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        height: 400,
                        width: 400,
                        color: Colors.blue,
                        child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg")
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.lightGreen,
                      child: Image.asset("assets/images/img1.jpg"),
                    ),
                    Container(
                        height: 400,
                        width: 400,
                        color: Colors.blue,
                        child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg")
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.lightGreen,
                      child: Image.asset("assets/images/img1.jpg"),
                    ),
                    Container(
                        height: 400,
                        width: 400,
                        color: Colors.blue,
                        child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg")
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.lightGreen,
                      child: Image.asset("assets/images/img1.jpg"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        height: 400,
                        width: 400,
                        color: Colors.blue,
                        child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg")
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.lightGreen,
                      child: Image.asset("assets/images/img1.jpg"),
                    ),
                    Container(
                        height: 400,
                        width: 400,
                        color: Colors.blue,
                        child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg")
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.lightGreen,
                      child: Image.asset("assets/images/img1.jpg"),
                    ),
                    Container(
                        height: 400,
                        width: 400,
                        color: Colors.blue,
                        child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg")
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.lightGreen,
                      child: Image.asset("assets/images/img1.jpg"),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                  child: Text("Button One"),
                  onPressed: (){
                    setState(() {

                    });
                  }),
              Container(
                width: 300,
                height: 300,
                color: Colors.lightGreen,
                child: Image.asset("assets/images/img1.jpg"),
              ),
              Container(
                  height: 400,
                  width: 400,
                  color: Colors.blue,
                  child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg")
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

