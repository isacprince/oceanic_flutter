import 'package:flutter/material.dart';
import 'incident_data.dart';

class VisualizarIncidentesPage extends StatefulWidget {
  @override
  _VisualizarIncidentesPageState createState() =>
      _VisualizarIncidentesPageState();
}

class _VisualizarIncidentesPageState extends State<VisualizarIncidentesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 55, 57, 59),
      appBar: AppBar(title: const Text('Visualizar Incidentes')),
      body: ListView.builder(
        itemCount: IncidentData().incidents.length,
        itemBuilder: (context, index) {
          final incident = IncidentData().incidents[index];
          return Card(
            color: Colors.grey[800],
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    incident.titulo,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Gravidade: ${incident.gravidade}',
                    style: const TextStyle(color: Colors.white70),
                  ),
                  Text(
                    'Coordenadas: ${incident.coordenadas}',
                    style: const TextStyle(color: Colors.white70),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    incident.descricao,
                    style: const TextStyle(color: Colors.white70),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.check_circle,
                              color: incident.status == IncidentStatus.resolvido
                                  ? Colors.green
                                  : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                incident.status = IncidentStatus.resolvido;
                              });
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.cancel,
                              color: incident.status == IncidentStatus.perdido
                                  ? Colors.red
                                  : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                incident.status = IncidentStatus.perdido;
                              });
                            },
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: incident.status == IncidentStatus.resolvido
                            ? Colors.green
                            : incident.status == IncidentStatus.perdido
                                ? Colors.red
                                : Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
