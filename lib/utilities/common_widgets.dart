import 'package:flutter/material.dart';

class CommonWidgets {

  static Widget background(double height,double radius, BuildContext context, {Widget? child}){
    return  Stack(
      children: [
        Image.asset(
            "assets/images/background.jpeg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
          ),
         Align(
          alignment: Alignment.bottomCenter,
           child: Container(
              padding: const EdgeInsets.all(12),
              decoration:  BoxDecoration(
                  color: const Color.fromARGB(255, 244, 244, 244),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(radius),
                      topRight: Radius.circular(radius))),
              height: MediaQuery.sizeOf(context).height *height,
child: child,
              
          
            ),
         ),
      ],
    );

  }




  static Widget summaryCard(){

    return  const Row(
                        children: [
                          Card(
                            color: Color.fromARGB(255, 157, 188, 213),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                "lorem",
                               
                              ),
                            ),
                          ),
                          Card(
                            color: Color.fromARGB(255, 157, 188, 213),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text("established",
                                  ),
                            ),
                          ),
                          Card(
                            color: Color.fromARGB(255, 157, 188, 213),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text("Lorem Ipsum",
                                  ),
                            ),
                          ),
                        ],
                      );
  }


   
}