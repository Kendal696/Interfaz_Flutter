import 'package:flutter/material.dart';

class Notification2 extends StatelessWidget {
  const Notification2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Center(
        child: Column(children: [
          const Text('Sin Notificaciones'),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver'))
        ]),
      ),
    );
  }
}
