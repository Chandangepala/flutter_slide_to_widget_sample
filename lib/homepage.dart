import 'package:flutter/material.dart';
import 'package:flutter_slide_to_widget_sample/next_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:restart_app/restart_app.dart';
import 'package:slide_to_act/slide_to_act.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>  _HomePage();
}

class _HomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SlideAction(
              borderRadius: 12,
              elevation: 2,
              innerColor: Colors.deepPurple,
              outerColor: Colors.deepPurple.shade200,
              sliderButtonIcon: Icon(
                  Icons.lock_open,
                  color: Colors.white,
              ),
              text: "Slide  to unlock",
              textStyle: TextStyle(
                fontSize: 24,
                color: Colors.white
              ),
              onSubmit: (){

                //do something
                  Fluttertoast.showToast(
                      msg: "Page unlocked",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      textColor: Colors.white,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.deepPurple.shade200,
                      fontSize: 16
                  );
                 Future.delayed(Duration(seconds: 2), (){
                   /// Fill webOrigin only when your new origin is different than the app's origin
                   //Restart.restartApp(webOrigin: '[your main route]');

                   //To navigate to next page.
                   Navigator.of(context).pushReplacement(
                     MaterialPageRoute(builder: (context) => NextPage())
                   );
                 });
              },
            ),
          ),
        ),
    );
  }

}