import 'dart:io';

import 'package:atividade_assosiacao/atividade3/guiche.dart';
import 'package:atividade_assosiacao/atividade3/praca.dart';

class Pedagio {
  Praca praca = Praca();
  List<Guiche> guicheglist = [];
  void iniciarPraca() {
    praca.setCod(1);
    praca.setLocalizacao('Br-111, KM-10');
    praca.setTarifa(9.89);
    praca.iniciarGuiche();
    guicheglist = praca.guiches;
  }

  void pagarPedagio() {
    int g = praca.guiches.length;
    for (int i = 0; i < g; i++) {
      guicheglist[i].cobrarPedagio(praca.tarifa);
      praca.atualizarLista(guicheglist);
    }
  }

  void executarPedagio() {
    iniciarPraca();
    double valortarifa = praca.tarifa;
    print('Bem-vindo ao pedagio do ${praca.Localizacao}');
    //print('O preço da tarifa é R\$ ${valortarifa.toString()}');
    //print('O guighe que temos disponivel é o ${praca.guiches}');
    print('o que você deseja fazer?');
    print('1 - pagar pedagio');
    print('2 - ver saldo total');
    print('3 - ver quantidade total de veiculos');
    String resp = stdin.readLineSync()!;
    if(resp == '1'){
      pagarPedagio();
    } else if (resp == '2'){
      praca.valorTotal();
    } else if (resp == '3'){
      praca.veiculosTotais();
    }
  }
}
