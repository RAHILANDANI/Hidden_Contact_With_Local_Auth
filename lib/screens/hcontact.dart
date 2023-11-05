import 'package:flutter/material.dart';
import 'package:localauth/utils/global.dart';

class contactt extends StatefulWidget {
  const contactt({super.key});

  @override
  State<contactt> createState() => _contacttState();
}

class _contacttState extends State<contactt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: ListView.builder(
        itemCount: hlist.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("${hlist[index]['name']}"),
              subtitle: Text("${hlist[index]['contact']}"),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    list.add(list[index]);
                    hlist.remove(hlist[index]);
                  });
                },
                icon: Icon(Icons.hide_source),
              ),
            ),
          );
        },
      ),
    );
  }
}
