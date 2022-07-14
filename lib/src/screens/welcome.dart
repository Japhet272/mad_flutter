import 'package:flutter/material.dart';

import 'home.dart';
class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Stack(
          children:<Widget>[
Image.asset(
      'asset/images/screenshot.png',
  fit: BoxFit.fill,
  height: double.infinity,
  width: double.infinity,
),
Align(
  child: Container(
      height: 4000,
      width: double.infinity,
      decoration: BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          //where the linear gradient begins and ends
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          //Add one stop for each color. Stops should increase from 0 to 1
          colors: [Colors.black.withOpacity(1),

            Colors.black.withOpacity(0.9),

            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.7),
            Colors.black.withOpacity(0.6),
            Colors.black.withOpacity(0.5),
            Colors.black.withOpacity(0.4),
            Colors.black.withOpacity(0.1),
            Colors.black.withOpacity(0.05),
            Colors.black.withOpacity(0.025),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container())),
),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Enjoy the world",
                  textScaleFactor: 1,
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "We will help you find the best \n experiences and adventures",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Home()));
                      },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            )
          ]
        )
      ),
    );
  }
}
