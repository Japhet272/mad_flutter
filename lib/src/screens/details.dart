import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mad_flutter/src/models/places.dart';

class Details extends StatelessWidget {
  //const Details({Key? key}) : super(key: key);
  final Place place;

  Details(this.place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
      Column(
      children: [
      Container(
      width: double.infinity,
        height: 450,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          child: Image.asset(
            'asset/images/screenshot.png',
            // "asset/images/${place.image}",

          //  height: 100,
            width:double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            children: [
              Icon(Icons.calendar_today, color: Colors.grey, size: 20,),
              SizedBox(width: 5,),
              Text('${place.days}days', style: TextStyle(color: Colors.grey))
            ],
          )
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(text: '${place.place} \n',
                  style: TextStyle(fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
              TextSpan(
                  text: 'Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard  dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type  '),
            ],
                style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.pink[400],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Price\n', style: TextStyle(fontSize: 18)),
                        TextSpan(text: '\$300',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold))
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.black,
                            blurRadius: 8,
                            offset: Offset(1, 1)
                        )
                      ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Book a tour', style: TextStyle(color: Colors.pink,),),
                  ),
                ),),
            ],
          ),
        ),
      )
      ],
    ),
    Positioned(
    top: 20,
    left: 10,
    child: GestureDetector(
    onTap: (){
      Navigator.pop(context);
    },
    child: Align(
    alignment: Alignment.topLeft,
    child: Icon(Icons.arrow_back_ios),
    ),
    ),
    ),
    ],
      ),
    );
  }
}
