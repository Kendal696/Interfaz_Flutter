import 'package:flutter/material.dart';
class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Buscar...',
            border: InputBorder.none,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              // Acción para limpiar el campo de búsqueda
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Número de elementos en la lista
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Resultado de búsqueda $index'),
                  subtitle: Text('Detalles del resultado $index'),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Volver'),
          ),
        ],
      ),
    );
  }
}
