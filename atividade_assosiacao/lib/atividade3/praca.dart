import 'dart:web_audio';

import 'guiche.dart';

class Praca {
  late int _cod;
  late String _localizacao;
  double _tarifa = 0;
  List<Guiche> _guiches = [];
  double _saldoTotal = 0;
  int _totalVeiculos = 0;

  int get cod => _cod;
  String get Localizacao => _localizacao;
  double get tarifa => tarifa;
  List<Guiche> get guiches => _guiches;

  void setCod(int num) {
    _cod = num;
  }

  void setLocalizacao(String local) {
    _localizacao = local;
  }

  void setTarifa(double valor) {
    _tarifa;
  }

  void iniciarGuiche() {
    Guiche guiche = Guiche();

    guiche.setId(1);
    guiche.setStatus(true);
  }

  double valorTotal() {
    int g = _guiches.length;
    for (int i = 0; i < g; i++) {
      _saldoTotal = _saldoTotal + _guiches[i].saldo;
    }
    return _saldoTotal;
  }

  int veiculosTotais() {
    int g = _guiches.length;
    for (int i = 0; i < g; i++) {
      _totalVeiculos = _totalVeiculos + _guiches[i].quantVeiculos;
    }
    return _totalVeiculos;
  }

  void atualizarLista(List<Guiche> lista) {
    _guiches = lista;
  }
}
