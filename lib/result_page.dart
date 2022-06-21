import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

class resultpage extends StatefulWidget {
  int marks;
  resultpage({required this.marks});
  // resultpage({required Key key, required this.marks}) : super(key: key);
  @override
  _resultpageState createState() => _resultpageState();
}

class _resultpageState extends State<resultpage> {
  int marks=0;
  List<String> images =[
    "images/success.png",
    "images/good.png",
    "images/bad.png",
  ];

  String message='';
  String image='';

  @override
  void initState(){
    marks = widget.marks;
    if(marks < 20){
      image= images[2];
      message= "You should try hard..\n"+"You scored $marks";
    }else if(marks < 35){
      image= images[1];
      message= "You can do better..\n"+ "You scored $marks";
    }else{
      image= images[0];
      message= "You did very well..\n"+"You scored $marks";
    }
    super.initState();
  }

  // int marks;
  // _resultpageState(this.marks);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Result",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex:7,
              child:Material(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                      Material(
                        child: Container(
                          height: 300.0,
                          width: 300.0,
                            child: ClipRect(
                              child: Image(
                                image: AssetImage(
                                  image,
                                ),
                              ),
                            ),
                          ),
                        ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 15.0,
                        ),
                        child: Center(
                          child: Text(
                            message,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ),
              ) ),
          Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OutlinedButton(onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homepage()));
                  }, child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 25.0,
                      ),
                      side: BorderSide(width: 3.0, color: Colors.indigo),
                      // splashColor: Colors.indigoAccent,),
                  ),),

                ],
          ))
        ],
      ),
    );
  }
}
