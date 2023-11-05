import 'package:flutter/material.dart';

import '../utils/global.dart';
import 'contact.dart';

class homepagee extends StatefulWidget {
  const homepagee({super.key});

  @override
  State<homepagee> createState() => _homepageeState();
}

class _homepageeState extends State<homepagee> {
  TextEditingController name = TextEditingController();
  TextEditingController contact = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Contact"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => contacttt(),
                      ));
                },
                icon: Icon(Icons.done))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            list.add({'name': name.text, 'contact': contact.text});
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Added Succesful")));
            name.clear();
            contact.clear();
          },
        ),
        body: Column(
          children: [
            TextFormField(
              controller: name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter your Name"),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: contact,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your Contact number"),
            ),
          ],
        ),
      ),
    );
  }
}
