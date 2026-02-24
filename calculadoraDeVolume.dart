import 'dart:io';
import 'dart:math';

//CRIA UMA FUNÇÃO PARA CALCULAR O VOLUME DE UMA PANELA EM LITROS
//DEFINE ATRIBUTOS DE DIÂMETRO E ALTURA EM CM
//CALCULA O VOLUME USANDO A FÓRMULA DO CILINDRO: V = π * r² * h
double volumeLitros(double diametroCm, double alturaCm) =>
    pi * pow(diametroCm / 2, 2) * alturaCm / 1000;

void main() {
  //'Aplicação piloto de cálculo de volume nas panelas do feitio'
  print('CENTRO DE UNIFICAÇÃO ROSA AZUL - CURA🌹💙');
  print('==== CALCULAR VOLUME DAS PANELAS EM LITROS ====');

  double diametroPanela1 = 53.5;
  double diametroPanela2 = 45.0;
  double diametroPanela3 = 60.0;

  print('Panelas disponíveis para cálculo:');
  print('1. Panela 1 (1ª de Inox): Diâmetro = $diametroPanela1 cm');
  print('2. Panela 2 (2ª de Inox): Diâmetro = $diametroPanela2 cm');
  print('3. Panela de Colheita): Diâmetro = $diametroPanela3 cm');

  stdout.write('Informe o número da panela desejada: ');
  String? entradaPanela = stdin.readLineSync();

  double d; /*Essa declaração serve para incluir o valor dentro do if else.
            Dentro da validação de if e else, antes do print, será declarada
            a variável "d", a qual receberá uma variável de diâmetro.
            Ao escolher a opção 1, a panela ja estará com o valor de diâmetro,
            não sendo necessária a declaração manual do usuário.*/

  //VERIFICA A ENTRADA DO USUÁRIO PARA SABER QUAL PANELA
  //FOI ESCOLHIDA E EXIBE O DIÂMETRO CORRESPONDENTE
  if (entradaPanela == '1') {
    d = diametroPanela1;
    print('Panela 1 escolhida. Diâmetro de $diametroPanela1 cm');
  } else if (entradaPanela == '2') {
    d = diametroPanela2;
    print('Panela 2 escolhida. Diâmetro de $diametroPanela2 cm');
  } else {
    print('Opção inválida. Por favor, escolha 1 ou 2.');
    return;
  }
 
  stdout.write('Informe a altura do material na panela (em cm): ');
  final h = double.parse(stdin.readLineSync()!);
  final volume = volumeLitros(d, h);

  print('O volume da panela é: ${volume.toStringAsFixed(3)} L');
}
