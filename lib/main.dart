import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  _buildContainer(IconData icon, String naming){
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey)
      ),
      child: Row(
        children: [
          SizedBox(width: 15,),
          Icon(icon,color: Colors.blue,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(naming),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey[400],),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Profile'),
        backgroundColor: Colors.blue[900],
        elevation: 0.1,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 25),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(
                        image: AssetImage('assets/seller1.png'),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Abass-Olisa Olanrewaju', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('kalanruse@gmail.com', style: TextStyle(fontWeight: FontWeight.w400),),
                      Text('University of Lagos',style: TextStyle(fontWeight: FontWeight.w400),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Text('General',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            SizedBox(height: 30,),
            _buildContainer(Icons.account_circle, 'Edit Profile'),
            SizedBox(height: 30,),
            _buildContainer(Icons.api, 'Badge'),
            SizedBox(height: 30,),
            _buildContainer(Icons.add_box_outlined, 'Study Goals'),
            SizedBox(height: 30,),
            _buildContainer(Icons.add_alert, 'Focus Mode'),
            SizedBox(height: 30,),
            _buildContainer(Icons.access_alarms_sharp, 'School Schedule'),
            SizedBox(height: 30,),
            _buildContainer(Icons.add_reaction_sharp, 'Invite Friends'),



          ],
        ),
      ),
    );
  }
}
