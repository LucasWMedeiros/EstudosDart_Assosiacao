class Questoes{
  late String _descricao;
  late String _alternativaA;
  late String _alternativaB;
  late String _alternativaC;
  late String _alternativaD;
  late String _alternativaCorreta;

  String getDescricao(){
    return _descricao;
  }
  String getAlternativaA(){
    return _alternativaA;
  }
  String getAlternativaB(){
    return _alternativaB;
  }
  String getAlternativaC(){
    return _alternativaC;
  }
  String getAlternativaD(){
    return _alternativaD;
  }
  String getAlternativaCorreta(){
    return _alternativaCorreta;
  }

  void SetDescricao(String texto){
    _descricao = texto;
  }
  void SetAlternativaA(String texto){
    _alternativaA = texto;
  }
  void SetAlternativaB(String texto){
    _alternativaB = texto;
  }
  void SetAlternativaC(String texto){
    _alternativaC = texto;
  }
  void SetAlternativaD(String texto){
    _alternativaD = texto;
  }
  void SetAlternativaCorreta(String texto){
    _alternativaCorreta = texto;
  }

  
}