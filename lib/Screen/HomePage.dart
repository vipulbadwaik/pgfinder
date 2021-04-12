import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



const name = [
     
     'pgname',
     'pgname1',
     'pgname2',
     'pgname3',
     'pgname4',
     'pgname5',
     'pgname6',

];
const price = [
     
     '3000',
     '5000',
     '213',
     '1234',
     '12',
     '3687',
     '89576',

];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: name.length,
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(3),
                child: Image(
                    image: NetworkImage(
                        'https://images.livemint.com/img/2019/04/16/600x338/Kerala_1555430371601.jpg')),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    name[index],
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    price[index],
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        );
      },
    ));
  }
}
