import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: AppHome());
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Guevara - Activity",
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[700],
        elevation: 4,
        shadowColor: Colors.blueGrey,
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 500,
              width: 500,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  color: Colors.blue.shade50,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    SizedBox(
                      height: 100,
                      child: Text(
                        "Log-in Form",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),

                    // username
                    SizedBox(
                      height: 70,
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Username",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    // password
                    SizedBox(
                      height: 70,
                      width: 350,
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Password",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                          onPressed: () => {}, child: Text("Submit")),
                    ),
                  ],
                ),
              )),
          SizedBox(
              height: 500,
              width: 400,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  child: Image.network(
                      height: 500,
                      width: 300,
                      fit: BoxFit.cover,
                      "https://cdn.prod.website-files.com/665420ea445064a3ad56323a/665420ea445064a3ad563409_Campus.png")))
        ],
      )),
    ));
  }
}
