import 'dart:io';
import 'package:calculadora_imc_1_dio/models/pessoa.dart';

void main() {
  stdout.write('Insira o seu nome:');
  String nome = stdin.readLineSync()!;
  stdout.write('Insira o seu peso:');
  double? entradaPeso = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write('Insira a sua altura:');
  double? entradaAltura = double.tryParse(stdin.readLineSync() ?? '');

  Pessoa pessoa1 = Pessoa(nome, entradaAltura, entradaPeso);
  pessoa1.calcularImc();
  print(pessoa1.toString());
}
