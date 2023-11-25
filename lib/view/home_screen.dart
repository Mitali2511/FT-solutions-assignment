import 'package:flutter/material.dart';
import 'package:ft_solutions/utilities/common_widgets.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
//Appbar
     
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Home"),
         
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
//body
        body: Stack(
          children: [
            CommonWidgets.background(0.8, 30, context),
//Summary

            Positioned(
              top: MediaQuery.of(context).size.height * 0.15,
              left: MediaQuery.of(context).size.height * 0.02,
              right: MediaQuery.of(context).size.height * 0.02,
              child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 235, 235),
                      borderRadius: BorderRadius.circular(30)),
                //  height: MediaQuery.sizeOf(context).height * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                                          "Summary",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropdownButton(
                              value: items[0],
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (Value) {}),
                          DropdownButton(
                              value: items[0],
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (Value) {}),
                        ],
                      ),
//Summary Cards

                      CommonWidgets.summaryCard(),
                      CommonWidgets.summaryCard(),
                      CommonWidgets.summaryCard(),
                    ],
                  )),
            ),
//Horizontal scroll cards

            Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              left: MediaQuery.of(context).size.height * 0.02,
              right: MediaQuery.of(context).size.height * 0.02,
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 235, 235, 235),
                    borderRadius: BorderRadius.circular(30)),
               // height: MediaQuery.sizeOf(context).height * 0.3,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.toNamed("/recordList");
                        },
                        child: Card(
                            color: const Color.fromARGB(255, 173, 209, 239),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/box.png",
                                  height: MediaQuery.sizeOf(context).height * 0.2,
                                ),
                                const Text(
                                  "List of record",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed("/addRecord");
                        },
                        child: Card(
                            color: const Color.fromARGB(255, 224, 204, 211),
                            child: Column(
                              children: [
                                Image.asset("assets/images/box (1).png",
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.2),
                                const Text("Create new record",
                                    style: TextStyle(fontWeight: FontWeight.bold))
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
