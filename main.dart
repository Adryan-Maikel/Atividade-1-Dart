import 'dart:io';
import 'dart:math' as math;

void main(){
  choose();
}

choose(){
  print("Digite o número do calculo desejado:");
  print("1-Calcular a área de um círculo");
  print("2-Calcular o salário de um funcionário");
  print("3-Calcular o salário de um vendedor sobre suas vendas");
  print("4-Calcular a 1ª Lei da termodinâmica");
  print("5-Calcular a 2ª Lei da termodinâmica");
  int inputNumber = int.parse(stdin.readLineSync()!);
  if(inputNumber == 1){
    calculationCircleArea();
  }else if(inputNumber == 2){
    workerSalaryCalculation();
  }else if(inputNumber == 3){
    calculateCommission();
  }else if(inputNumber == 4){
    firstCalculatationThermodynamics();
  }else if(inputNumber == 5){
    secondCalculatationThermodynamics();
  }else{
    print("***********************");
    print("Digite um valor válido!");
    print("***********************");
    chooseAgain();
  }
}

chooseAgain(){
  print("\nDeseja tentar de novo?\nS - sim ou N - não");
  String? newChoose = stdin.readLineSync().toString().toUpperCase();
  if(newChoose == "S"){
    choose();
  }
  else{
    return;
  }
}

calculationCircleArea(){
  print("Digite o valor do raio do círculo:");
  double radius = double.parse(stdin.readLineSync()!);
  double result = (radius * radius) * math.pi;
  print("A area do circulo é $result");
  chooseAgain();
}

workerSalaryCalculation(){
  print("Digite o número de identificação do funcionário:");
  int identificationNumber = int.parse(stdin.readLineSync()!);
  print("Digite o número de horas trabalhadas:");
  int workedHours = int.parse(stdin.readLineSync()!);
  print("Digite valor que o funcionário recebe por horas trabalhadas:");
  double hourlyWage = double.parse(stdin.readLineSync()!);
  double salary = workedHours * hourlyWage;
  print("\nCHAPA = $identificationNumber\nSALÁRIO = R\$ ${salary.toStringAsFixed(2)}");
  chooseAgain();
}

calculateCommission(){
  print("Digite o nome do vendedor:");
  String name = stdin.readLineSync()!;
  print("Digite o salário do vendedor:");
  double salary = double.parse(stdin.readLineSync()!);
  print("Digite o total de vendas em dinheiro feito pelo vendedor:");
  double sales = double.parse(stdin.readLineSync()!);
  double finalSalary = salary + sales * 0.15;
  print("$name receberá R\$ ${finalSalary.toStringAsFixed(2)} esse mês.");
  chooseAgain();
}

firstCalculatationThermodynamics(){
  print("Fórmula:\nQ = T + ΔU");
  print("Qual a quantidade de calor recebida em Joule?");
  int q = int.parse(stdin.readLineSync()!);
  print("Qual a temperatura em Joule que o gás realiza o trabalho?");
  int t = int.parse(stdin.readLineSync()!);
  print("Qual era a energia interna em Joule do sistema antes de receber o calor?");
  int u = int.parse(stdin.readLineSync()!);
  print("$q = $t + (U - $u)");
  print("$q = $t - $u + U");
  int result = u - t + q;
  print("U = $result J");
  chooseAgain();
}

secondCalculatationThermodynamics(){
  print("Fórmula:\nN = T/Q1 * 100%");
  print("Um motor à vapor realiza um trabalho em quantos quilojoules?");
  int t = int.parse(stdin.readLineSync()!);
  t *= 1000;
  print("Qual a quantidade de calor que lhe é fornecido em quilojoules?");
  int q = int.parse(stdin.readLineSync()!);
  q *= 1000;
  print("N = $t/$q * 100%");
  double result = t / q;
  print("N = ${result.toStringAsFixed(2)} * 100%");
  result *= 100;
  print("N = ${result.toStringAsFixed(2)}%");
  chooseAgain(); 
} 
