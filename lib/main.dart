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
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 200,
                height: 100,
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text("Click this ->"),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                        onPressed: () => {}, child: Text("Click me")),
                  ),
                ],
              ),
            ),
            SizedBox(
                child: Container(
              color: Colors.blue,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              child: Text("Family is love"),
            )),
            SizedBox(
              height: 200,
              width: 500,
              child: Image.network(
                  "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/d3789c8c-0874-407c-a457-03b147f59b18/dfpo9ck-e8a366db-b1ac-4c97-ab89-fef64c2f43f5.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2QzNzg5YzhjLTA4NzQtNDA3Yy1hNDU3LTAzYjE0N2Y1OWIxOFwvZGZwbzljay1lOGEzNjZkYi1iMWFjLTRjOTctYWI4OS1mZWY2NGMyZjQzZjUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.B0THlWVU3xyhDhC0qqSFHpyVPwLObDZTBzoQQ--zwoc"),
            )
          ],
        )),
      ),
    );
  }
}
