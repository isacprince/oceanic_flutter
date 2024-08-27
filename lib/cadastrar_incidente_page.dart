import 'package:flutter/material.dart';
import 'incident_data.dart';

class CadastrarIncidentePage extends StatefulWidget {
  @override
  _CadastrarIncidentePageState createState() => _CadastrarIncidentePageState();
}

class _CadastrarIncidentePageState extends State<CadastrarIncidentePage> {
  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _gravidadeController = TextEditingController();
  final TextEditingController _coordenadasController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();

  void _cadastrarIncidente() {
    IncidentData().addIncident(
      _tituloController.text,
      _gravidadeController.text,
      _coordenadasController.text,
      _descricaoController.text,
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 55, 57, 59),
      appBar: AppBar(title: const Text('Cadastrar Incidente')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _tituloController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Título',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _gravidadeController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Gravidade',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _coordenadasController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Coordenadas',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _descricaoController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Descrição',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _cadastrarIncidente,
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
