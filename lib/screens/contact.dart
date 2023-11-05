import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:localauth/utils/global.dart';

import 'hcontact.dart';

class contacttt extends StatefulWidget {
  const contacttt({super.key});

  @override
  State<contacttt> createState() => _contactttState();
}

class _contactttState extends State<contacttt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                final LocalAuthentication auth = LocalAuthentication();
                if (await auth.isDeviceSupported() == true ||
                    auth.canCheckBiometrics == true) {
                  auth
                      .authenticate(
                          localizedReason: "Authenticate for hidden contact")
                      .then((value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => contactt(),
                        ));
                  });
                }
              },
              icon: Icon(Icons.done_outline))
        ],
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("${list[index]['name']}"),
              subtitle: Text("${list[index]['contact']}"),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    hlist.add(list[index]);
                    list.remove(hlist[index]);
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
