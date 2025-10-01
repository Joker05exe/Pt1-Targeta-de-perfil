import 'package:flutter/material.dart';

void main() {
  runApp(const Pt1_deltio_Joan());
}

class Pt1_deltio_Joan extends StatelessWidget {
  const Pt1_deltio_Joan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina la flag de depuració
      title: 'Perfil',
      theme: ThemeData(
        primarySwatch: const Color.fromARGB(255, 243, 3, 3),
      ),
      home: const PerfilScreen(),
    );
  }
}

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Joan Del Tio Barberà'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.network(
                'https://images.static-bluray.com/reviews/19066_1.jpg',
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Enviali un missatge a HULK',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            IconButton(
              icon: Image.asset(
              'assets/hulk.png',
                width: 40,
                height: 40,
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Correu electrònic enviat!')),
                );
              },
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Acció extra!')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}