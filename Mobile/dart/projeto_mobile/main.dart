import 'dart:math'; // Import to use the Random class
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Contatos',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(
        name: 'Alan Stacholski',
        phoneNumber: '(41) 99999-9999',
        email: 'stacholski@email.com'),
    Contact(
        name: 'Eduardo Trzaskacz',
        phoneNumber: '(41) 94444-4444',
        email: 'eduardot@email.com'),
    Contact(
        name: 'Gabriel Silva',
        phoneNumber: '(41) 98888-8888',
        email: 'gab@email.com'),
    Contact(
        name: 'Marcelo Piloni',
        phoneNumber: '(41) 97777-7777',
        email: 'piloni@email.com'),
    Contact(
        name: 'Mateus Pereira',
        phoneNumber: '(41) 96666-6666',
        email: 'mpereira@email.com'),
    Contact(
        name: 'Paulo Sérgio',
        phoneNumber: '(41) 92222-2222',
        email: 'psergio@email.com'),
    Contact(
        name: 'Rafael Arantes',
        phoneNumber: '(41) 95555-5555',
        email: 'arantes@email.com'),
    Contact(
        name: 'Yatahan Andrade',
        phoneNumber: '(41) 93333-3333',
        email: 'yandrade@email.com'),
  ];

  // Define a list of light palette colors
  final List<Color> lightPaletteColors = [
    Colors.pink.shade100,
    Colors.blue.shade100,
    Colors.green.shade100,
    Colors.orange.shade100,
    Colors.purple.shade100,
    Colors.yellow.shade100,
    Colors.teal.shade100,
    Colors.cyan.shade100,
  ];

  // Function to get a random light color
  Color getRandomLightColor() {
    Random random = Random();
    return lightPaletteColors[random.nextInt(lightPaletteColors.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Contatos'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: getRandomLightColor(),
              // Randomize the background color
              child: Text(
                contacts[index].name[0],
                style: const TextStyle(
                  color: Colors.black54, // Set the letter color for contrast
                ),
              ),
            ),
            title: Text(
              contacts[index].name,
              style: const TextStyle(
                color: Colors.white, // Set title color to white
              ),
            ),
            subtitle: Text(
              contacts[index].phoneNumber,
              style: const TextStyle(
                color: Colors.white54, // Set subtitle color to a lighter white
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min, // To align icons horizontally
              children: [
                IconButton(
                  icon: const Icon(Icons.phone, color: Colors.white70),
                  onPressed: () {
                    // Ação ao clicar no ícone de telefone
                    print('Ligar para ${contacts[index].phoneNumber}');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.email, color: Colors.white70),
                  onPressed: () {
                    // Ação ao clicar no ícone de email
                    print('Enviar email para ${contacts[index].email}');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.white70),
                  onPressed: () {
                    // Ação ao clicar no ícone de mais opções
                    print('Mais opções para ${contacts[index].name}');
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Contact {
  final String name;
  final String phoneNumber;
  final String email;

  Contact({
    required this.name,
    required this.phoneNumber,
    required this.email,
  });
}
