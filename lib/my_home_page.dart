import 'package:flutter/material.dart';
import 'package:splash/log_in.dart';
import 'package:splash/qran.dart';
import 'package:splash/grid_view.dart';
import 'package:splash/two_column.dart';
import 'package:splash/list_view_bulder.dart';
import 'package:splash/two_row.dart';
import 'package:splash/slider.dart';
String avatorSrc="https://cdn.pixabay.com/photo/2021/02/12/07/03/red-icon-6007530_640.png";
String btnText1="Show Asset Image in Row";
String btnText2="Show Network Image in Row";
String btnText3="Button Three";
String btnNextPage="ListView.builder,second_page";

bool rowVisiblility1=false;
bool rowVisibility2=false;
bool ImageVisibility3= false;

Color btnColor1=Colors.purpleAccent;
Color btnColor2=Colors.blue;
Color btnColor3=Colors.green;

String imgSrc1="https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg";
//String imgSrc02="https://upload.wikimedia.org/wikipedia/commons/c/c5/Various_flowers.jpg";

String imgSrc2="https://upload.wikimedia.org/wikipedia/commons/c/c5/Various_flowers.jpg";

double imgHeight=150;
double imgWidth=200;


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("Batch_C_MAHMUD HASAN"),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [

            // Background Image
            Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5,color: Colors.red),
                      image: DecorationImage(image: AssetImage("assets/images/12splash.png"),
                          fit: BoxFit.cover,colorFilter: ColorFilter.mode(
                              Colors.black12.withOpacity(0.4), BlendMode.dstATop
                          )
                      )
                  ),

              child: Center(
                child: Column(
                  children: [
                    //post,following ,follower
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          //avator Image
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: width*0.25,
                              width: width*0.25,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(avatorSrc),fit: BoxFit.cover
                              ),
                              border: Border.all(
                                width: 3,color: Colors.deepOrange,
                              ),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                      width: width*0.025
                                  ),
                                  Column(
                                    children: [
                                      Text("3,324",style: TextStyle(
                                        fontSize: width*0.055,fontWeight: FontWeight.bold,color: Colors.black
                                      ),),
                                      Text("Posts")
                                    ],
                                  ),
                                  SizedBox(
                                      width: width*0.025
                                  ),
                                  Column(
                                    children: [
                                      Text("8.5k",style: TextStyle(
                                          fontSize: width*0.055,fontWeight: FontWeight.bold,color: Colors.black
                                      ),),
                                      Text("Followers")
                                    ],
                                  ),
                                  SizedBox(
                                      width: width*0.025
                                  ),
                                  Column(
                                    children: [
                                      Text("543",style: TextStyle(
                                          fontSize: width*0.055,fontWeight: FontWeight.bold,color: Colors.black
                                      ),),
                                      Text("Following")
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color: Colors.grey
                                      )
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 4,left: 24,right: 24,bottom: 4
                                      ),
                                      child: Text("Message"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.grey
                                        )
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 4,left: 4,right: 4,bottom: 4
                                      ),
                                      child: Icon(Icons.three_p_sharp,size: 15,),
                                    ),
                                  ),
                                ],
                              )

                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                   //LogInPage
                    ElevatedButton(
                        onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                     }, child: Text("LogIn Facebook")
                    ),
                    SizedBox(
                      height: 15,
                    ),
                   //Quran 30 para
                   ElevatedButton(
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Quran()  ));
                       },
                       child: Text("কোরআন ৩০ পারা ")
                   ),
                     SizedBox(
                       height: 15,
                     ),
                   //slider Image
                   ElevatedButton(
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageSlider()));
                       },
                       child: Text("Image Slide")
                   ),
                    SizedBox(
                      height: 15,
                    ),
                    //GridView button
                    ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SixPage()));
                        },
                        child: Text("Grid View")),
                    SizedBox(
                      height: 10,
                    ),
                    //ForthPage
                    ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForthPage()));
                        },
                        child: Text("Show Two Column")),
                    SizedBox(
                      height: 10,
                    ),
                    //ThirdPage
                    ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage()));
                        },
                        child: Text("Show two Row")),
                    SizedBox(
                      height: 10,
                    ),

                    //SecondPage
                    ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage() ));
                        },
                        child: Text(btnNextPage)
                    ),
                    SizedBox(
                      height: 10,
                    ),

                     //press Raised button show Two asset Image decoration Row

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
                    SizedBox(
                      height: 10,
                    ),

                    //press Raised button show Two Network Image decoration Row
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
                    // A singel Asset Image

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.lightGreen,
                      child: Image.asset("assets/images/img1.jpg",fit: BoxFit.cover,),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    // A singel Network Image
                    Container(
                        height: 300,
                        width: 300,
                        color: Colors.blue,
                        child: Image.network(imgSrc2,fit: BoxFit.cover,)
                    ),

                               //Third button press picture visible

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
          ],
        ),
      ),
    );
  }
}

