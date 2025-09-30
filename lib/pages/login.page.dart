import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/principal.page.dart';

class Login extends StatefulWidget {
  // Adicionar construtor const para melhor performance
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.grey[800], // Um pouco mais escuro para combinar
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ), // Padding só nas laterais
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey[800]!,
              Colors.grey[900]!,
              Colors.grey[900]!,
              Colors.black,
            ],
          ),
        ),
        // Usar SingleChildScrollView + Column para evitar overflow do teclado
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Alinha texto à esquerda
            children: <Widget>[
              const SizedBox(height: 80), // Espaço no topo

              const Text(
                'E-mail ou nome de usuário',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),

              // Campo de texto para E-mail
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  color: Colors.white,
                ), // Cor do texto digitado
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[700],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none, // Sem borda
                  ),
                ),
              ),
              const SizedBox(height: 30),

              const Text(
                'Senha',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),

              // Campo de texto para Senha
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[700],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 50),

              // Botão de Entrar (moderno)
              Center(
                child: ElevatedButton(
                  // ANTES: Usava Container + FlatButton. Agora só ElevatedButton.
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Cor de fundo
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PrincipalPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Entrar',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Botão de Esqueceu a senha (moderno)
              Center(
                child: TextButton(
                  // ANTES: Usava Container + FlatButton. Agora só TextButton.
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.grey),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                  ),
                  onPressed: () {
                    // Adicionar lógica de "esqueci a senha" aqui
                  },
                  child: const Text(
                    'Esqueceu a senha?',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
