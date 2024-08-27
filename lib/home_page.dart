import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 55, 57, 59),
      appBar: AppBar(
        title: const Text('Home Page'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Bem-vindo ao Oceanic!',
              style: TextStyle(
                fontSize: 28,  // Aumentando o tamanho do texto
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),  // Aumentando o espaçamento entre os elementos
            Image.asset(
              'images/logo.png',
              height: MediaQuery.of(context).size.height * 0.35,  // Aumentando a altura da imagem
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cadastrar_incidente');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),  // Aumentando o tamanho do botão
                textStyle: const TextStyle(fontSize: 18),  // Aumentando o tamanho do texto do botão
              ),
              child: const Text('CADASTRAR INCIDENTE'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/visualizar_incidentes');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('VISUALIZAR INCIDENTES'),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
                backgroundColor: Colors.redAccent,
              ),
              child: const Text('Logoff'),
            ),
          ],
        ),
      ),
    );
  }
}
