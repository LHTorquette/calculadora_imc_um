class Pessoa {
  String? nome;
  double? peso;
  double? altura;

  Pessoa(this.nome, this.altura, this.peso);

  double calcularImc() {
    if (peso == null || altura == null) {
      return 0;
    } else {
      double calculoImc = peso! / (altura! * altura!);
      return calculoImc;
    }
  }

  String resultIMC(double calcularImc) {
    String info = '';
    if (calcularImc < 16) {
      info = "Magreza grave";
    } else if (calcularImc >= 16 && calcularImc < 17) {
      info = 'Magreza Moderada';
    } else if (calcularImc >= 17 && calcularImc < 18.5) {
      info = 'Magreza Leve';
    } else if (calcularImc >= 18.5 && calcularImc < 25) {
      info = 'Saudável';
    } else if (calcularImc >= 25 && calcularImc < 30) {
      info = 'Sobrepeso';
    } else if (calcularImc >= 30 && calcularImc < 35) {
      info = 'Obsidade Grau I';
    } else if (calcularImc >= 35 && calcularImc < 40) {
      info = 'Obsidade Grau II (severa)';
    } else {
      info = 'Obsidade Grau III (mórbida)';
    }
    return info;
  }

  @override
  String toString() {
    double imc = calcularImc();
    String info = resultIMC(imc);
    return "O IMC do $nome é de ${imc.toStringAsFixed(2)} e está no $info";
  }
}
