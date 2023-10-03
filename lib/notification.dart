import 'package:flutter/material.dart';
class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Screen'),
      ),
      body: Center(
        child:Column(children: [
          Text('No hay notificaciones'),
          ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Volver'),
        ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        ) 
        
      ),
    );
  }
}