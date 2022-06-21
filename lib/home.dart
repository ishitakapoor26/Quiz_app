import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/quiz_page.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List<String> images = [
    "images/py.png",
    "images/java.png",
    "images/linux.png",
    "images/cpp.png",
    "images/js.png",
  ];

  Widget customcard(String langname, String image){
    return Padding(padding: EdgeInsets.all(20.0,),
    child: InkWell(
      onTap: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => getjson()
        ));
      },
      child: Material(
        color: Colors.indigoAccent,
        elevation: 10.0,
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.symmetric(vertical: 10.0,),
                  child:Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  )
              ),
              Center(
                child: Text(
                  langname,
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),

              ),
              SizedBox(
                height: 15.0,
              )
              // Container(
              //   padding: EdgeInsets.all(20.0),
              //   child: Text(
              //     "Python is an interpreted high-level general-purpose programming language.  Its language constructs as well as its object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.",
              //    style: TextStyle(
              //     fontSize: 18.0,
              //     color: Colors.white,
              //     fontFamily: "Alike",
              //   ),
              //     maxLines: 5,
              //     textAlign: TextAlign.justify,
              //   ),
              // )
            ],
          ),
        ),
      ),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'KwizzApp',
          style: TextStyle(
            fontFamily: 'Quando',
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          customcard("Python", images[0]),
          customcard("Java", images[1]),
          customcard("Linux",images[2]),
          customcard("C++",images[3]),
          customcard("JavaScript",images[4]),
        ],
      ),
    );
  }
}
