import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Buttons'),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.green,
                  backgroundColor: Colors.green[50],
                ),
                child: const Text('FLATBUTTON',),
                onPressed: () {
                  print('CLICK');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                  primary: Colors.red,
                  backgroundColor: Colors.red[50],
                ),
                child: const Text('ELEVATEDBUTTON',),
                onPressed: () {
                  print('CLICK');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              IconButton(
                icon: const Icon(
                  Icons.verified,
                  color: Colors.blue,),
                onPressed: (){
                print('CLICK');
              },
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onLongPress: () {
                  print('CLICK');
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),color: Colors.blue,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Text('INKWELLBUTTON',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                   ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                style: TextButton.styleFrom(
                  side: const BorderSide(
                    width: 2,
                    color: Colors.blue,
                  )
                ),
              child: const Text('OUTLINEDBUTTON'),
                onPressed: (){
                print('CLICK');
               },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){
            print("CLICK");
          },
        ),
      ),
    );
  }
}