import 'dart:io';

import 'questoes.dart';

  List<Questoes> questoes = [];
  List<String> resp =[];
  int nota = 0;

  void inicializarLista(){
    Questoes questao = Questoes();
    for(int i = 0; i < 10; i++){
      questao.SetDescricao("Esta é uma questão. Selecione a alternativa correta:");
      questao.SetAlternativaA('A - Esta é a alternativa A');
      questao.SetAlternativaB('A - Esta é a alternativa B');
      questao.SetAlternativaC('A - Esta é a alternativa C');
      questao.SetAlternativaD('A - Esta é a alternativa D');
      questao.SetAlternativaCorreta('C');
      questoes.add(questao);
    }
  }

  void printQuestoes(){
    for(int i = 0; i < 10; i++ ){
      print(questoes[i].getDescricao());
      print(questoes[i].getAlternativaA());
      print(questoes[i].getAlternativaB());
      print(questoes[i].getAlternativaC());
      print(questoes[i].getAlternativaD());
      resp.add(stdin.readLineSync()!);
    }
  }

  void corrigir(){
    for(int i = 0; i < 10; i++){
      if(resp[i].toUpperCase() == questoes[i].getAlternativaCorreta()){
        nota++;
      }
    }
  }

  void main(List<String> args) {
    inicializarLista();
    printQuestoes();
    corrigir();
    if(nota > 8){
      print('Parabens você foi aprovado com nota $nota');
    } else if (nota < 8 && nota > 4){
      print('Você ficou de recuperação e sua nota foi $nota');
    } else {
      print('Você reprovou e teve nota $nota');
    }
}