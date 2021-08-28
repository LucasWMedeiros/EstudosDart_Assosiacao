class Guiche{
  int _id = 0;
  late bool _status;
  double _saldo = 0;
  int _quantVeiculos = 0;

  double get saldo => _saldo;
  int get id => _id;
  bool get status => _status;
  int get quantVeiculos => _quantVeiculos;

  void setId(int num)=> _id = num;
  void setStatus(bool status) => status;

  void cobrarPedagio(double valor){
    _saldo = _saldo + valor;
    _quantVeiculos++;
  }
}