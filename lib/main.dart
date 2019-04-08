
//@author mosayeb bameri
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "simple login",
      home: MainActivity(),
    );
  }
}


class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[
                          Colors.redAccent,
                          Colors.blueAccent
                        ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                    )
                  ),
                  child: Center(
                    child: Icon(Icons.lock_outline,size: 40,),
                  ),
              ),
              ListView(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 100),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60)
                        )
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(

                        children: <Widget>[
                          Container(height: 40,),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "نام کاربری",
                              icon: Icon(Icons.person_outline),
                            ),
                          ),
                          Container(height: 40,),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "رمز عبور",
                              icon: Icon(Icons.lock_outline),
                            ),
                          ),
                          SizedBox(height: 40,),
                          InkWell(
                            onTap: (){
                              print("ok");
                            },
                            child: Container(
                              width: 300,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.all(Radius.circular(60))
                              ),
                              child: Center(
                                  child: Text("ورود",
                                    style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold)
                                    ,)
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("رمز عبورت رو فراموش کردی؟"),
                          SizedBox(height: 40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(60)
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.fingerprint,
                                    color:Colors.grey[700] ,
                                  ),
                                ),
                              ),
                              SizedBox(width: 50,),
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(100)
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.face,
                                    color:Colors.grey[700] ,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
