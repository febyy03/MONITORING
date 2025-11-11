import 'package:flutter/material.dart';
import 'pages/splash_screen.dart';
import 'pages/home_page.dart';
import 'pages/history_page.dart';
import 'pages/profile_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'MY FOOD APP',
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
      useMaterial3: true,
      
      appBarTheme: const AppBarTheme(
        // 1. Agar judul berada di TENGAH
        centerTitle: true, 
        
        // 2. Mengatur gaya tulisan untuk judul
        titleTextStyle: TextStyle(
          color: Colors.white,            // Warna PUTIH
          fontWeight: FontWeight.w900,    // SANGAT TEBAL (Extra Bold)
          fontSize: 26,                   // Ukuran DIBESARKAN agar lebih menonjol
          letterSpacing: 2.0,             // Jarak antar huruf DITAMBAH (memberi kesan modern/spacious)
          shadows: [                      // Menambahkan efek bayangan (shadow) agar 3D/keren
            Shadow(
              blurRadius: 2.0, 
              color: Colors.black54, 
              offset: Offset(2, 2),
            ),
          ],
        ),
      ),
    ),
    home: const SplashScreen(),
  );
}
}


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // daftar halaman
  final List<Widget> _pages = [
    HomePage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  // ganti halaman ketika icon di-tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
