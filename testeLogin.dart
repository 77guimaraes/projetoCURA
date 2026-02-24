import 'dart:io';

void main() {
  print("=== BEM-VINDO AO CURA DIGITAL 🌹💙 ===");
  print("Faça seu login para acessar nosso sistema. 👇");

  while (true) {
    //PEDE PRO USUÁRIO INFORMAR O LOGIN EM ALGUM CAMPO
    stdout.write('Informe seu login: ');

    //RECEBE A INFORMAÇÃO DIGITADA PELO USUÁRIO E DEVOLVE AO SISTEMA
    String? entradaLogin = stdin.readLineSync()!;

    // "== null" significa NULO ---- "isEmpty" significa "ESTÁ VAZIO"
    if (entradaLogin.isEmpty) {
      print('Login inválido! ❌ ');
      continue; //USUÁRIO RETORNA AO PREENCHIMENTO DE LOGIN
    }

    if (entradaLogin.length < 11) {
      print('São necessários 11 caracteres no mínimo.⚠️');
      continue;
    } else {
      print('Vamos para a próxima etapa. 😊👌');

      break;
    }
  }
    while (true) {
      stdout.write("Digite sua senha: ");
      String? entradaSenha = stdin.readLineSync()!;

      if (entradaSenha.isEmpty) {
        print('Senha inválida! ❌ Tente novamente.');
        continue;
      }

      //CONTANDO QUANTOS CARACTERES "entradaSenha" DEVE TER NO MÍNIMO
      if (entradaSenha.length < 8) {
        print('A senha deve possuir no mínimo 8 caracteres!⚠️');
        continue;
      }

        else {
        print('Acesso autorizado! ✅');
      }
      break;
    }
  }
