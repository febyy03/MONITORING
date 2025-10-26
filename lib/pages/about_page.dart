import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Pembuat'),
        backgroundColor: Colors.orange,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage('https://i.imgur.com/WxNkKZC.jpg'),
              ),
              SizedBox(height: 20),
              Text(
                'Nama: [Isi Nama Kamu]',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Kelas: [Isi Kelas Kamu]',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'NIM: [Isi NIM Kamu]',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
