import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar para o usuário poder voltar
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Fundo transparente
        elevation: 0, // Sem sombra
      ),
      body: Center(
        child: Padding(
          // Adiciona um padding para a imagem não colar nas bordas
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            'assets/images/OnboardingPage.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
