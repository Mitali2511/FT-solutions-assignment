import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utilities/common_widgets.dart';

class RecordListScreen extends StatefulWidget {
  const RecordListScreen({super.key});

  @override
  State<RecordListScreen> createState() => _RecordListScreenState();
}

class _RecordListScreenState extends State<RecordListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
       resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Record List"),
      ),
      body:Stack(
          children: [
            CommonWidgets.background(0.85, 30, context,
            child:  ListView.builder(
              padding: const EdgeInsets.only(top: 5),
              itemCount:10 ,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed("/recordDetail");
                   
                  },
                  child: Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: 
                         
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Person name "),
                              SizedBox(
                                width:
                                    MediaQuery.sizeOf(context).width / 1.5,
                                child: Text(
                                    "random text"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )),


           
          ],
        )
    );
 
  }
}
