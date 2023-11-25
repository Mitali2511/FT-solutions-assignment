import 'package:flutter/material.dart';
import 'package:ft_solutions/utilities/common_widgets.dart';

class AddRecordScreen extends StatefulWidget {
  const AddRecordScreen({super.key});

  @override
  State<AddRecordScreen> createState() => _AddRecordScreenState();
}

class _AddRecordScreenState extends State<AddRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Create New Record"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          CommonWidgets.background(0.9, 30, context,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(

                  child: Column(
                 //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "First name",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const TextField(
                          decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 211, 210, 210),
                        hintText: "Enter your First name",
                      )),
                     SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                      const Text(
                        "Last name",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const TextField(
                          decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 211, 210, 210),
                        hintText: "Enter your Last name",
                      )),
                                           SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),

                      const Text(
                        "Email",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const TextField(
                          decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 211, 210, 210),
                        hintText: "Enter your email",
                      )),
                                           SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),

                      const Text(
                        "Gender",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const TextField(
                          decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 211, 210, 210),
                        hintText: "Enter your gender",
                      )),
                                           SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),

                      const Text(
                        "Phone Number",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const TextField(
                          decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 211, 210, 210),
                        hintText: "Enter your phone number",
                      )),
                                           SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),

                      const Text(
                        "Id Number",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const TextField(
                          decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 211, 210, 210),
                        hintText: "Enter your id number",
                      )),
                                           SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),

                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 26, 43, 135)),
                            onPressed: () {},
                            child: const Text("Submit")),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
