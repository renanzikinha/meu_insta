import 'package:flutter/material.dart';
import 'package:insta_renaz/pages/buscar_page.dart';
import 'package:insta_renaz/pages/feed_page.dart';
import 'package:insta_renaz/pages/perfil_page.dart';
import 'package:insta_renaz/pages/reel_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indiceAtual = 0;

  final List<Widget> telas = const[
    FeedPage(),
    BuscarPage(),
    ReelPage(),
    PerfilPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: indiceAtual,
        children: telas,
      ),
      bottomNavigationBar: NavigationBar(
        height: 68,
        backgroundColor: Colors.amber,
        indicatorColor: Colors.blue,
        selectedIndex: indiceAtual,
        onDestinationSelected: (novoIndice){
          setState(() {
            indiceAtual = novoIndice;
          });
        },
        destinations: const [ 
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon:  Icon(Icons.home),
            label: 'Inicio'
          ),
           NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon:  Icon(Icons.search, size:30),
            label: 'Buscar'
          ),
           NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon:  Icon(Icons.movie),
            label: 'Reels'
          ),
           NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon:  Icon(Icons.person),
            label: 'Perfil'
          ),
        ]
      ),
    );
  }
}