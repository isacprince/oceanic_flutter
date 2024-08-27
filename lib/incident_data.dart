class Incident {
  final String titulo;
  final String gravidade;
  final String coordenadas;
  final String descricao;
  IncidentStatus status;

  Incident({
    required this.titulo,
    required this.gravidade,
    required this.coordenadas,
    required this.descricao,
    this.status = IncidentStatus.pendente,
  });
}

enum IncidentStatus { pendente, resolvido, perdido }

class IncidentData {
  static final IncidentData _instance = IncidentData._internal();

  final List<Incident> _incidents = [];

  factory IncidentData() {
    return _instance;
  }

  IncidentData._internal();

  List<Incident> get incidents => _incidents;

  void addIncident(
    String titulo,
    String gravidade,
    String coordenadas,
    String descricao,
  ) {
    _incidents.add(Incident(
      titulo: titulo,
      gravidade: gravidade,
      coordenadas: coordenadas,
      descricao: descricao,
    ));
  }
}
