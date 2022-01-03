import 'package:flutter/material.dart';

class QuranOther extends StatefulWidget {
  String suraName;
  String Aeat;
   QuranOther({Key? key, required this.suraName,required this.Aeat}) : super(key: key);

  @override
  _QuranOtherState createState() => _QuranOtherState();
}

class _QuranOtherState extends State<QuranOther> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(widget.suraName),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 32,right: 32,top: 15),
              child: Container(

                  child: Text(widget.Aeat,style: TextStyle(
                      color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),)),
            )
          ],
        ),
      ),
    );
  }
}
