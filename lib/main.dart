import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exemplo Imagem Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Exibindo Imagem Local'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Adicionamos um SingleChildScrollView para evitar overflow quando o teclado aparecer
      body: SingleChildScrollView(
        // Adicionamos Padding para dar as margens laterais
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            // Alinha os filhos à esquerda
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Espaço no topo
              const SizedBox(height: 80),

              // Logo no centro
              Center(
                child: Image.asset(
                  'assets/images/logo.png', // Mantenha seu caminho
                  width: 200,
                  height: 200,
                ),
              ),

              const SizedBox(height: 20), // Espaço entre logo e texto
              // Título
              Text(
                'Sign in your account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24, // Um pouco maior para combinar com o design
                ),
              ),

              const SizedBox(height: 30), // Espaço antes do formulário
              // Label Email
              const Text(
                'Email',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),

              // Campo de Texto Email
              TextField(
                decoration: InputDecoration(
                  hintText: 'ex: jon.smith@email.com',
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none, // Sem borda visível
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 12,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Label Senha
              const Text(
                'Password',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),

              // Campo de Texto Senha
              TextField(
                obscureText: true, // Para esconder a senha
                decoration: InputDecoration(
                  hintText: '*********',
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 12,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Botão de Sign In
              SizedBox(
                width: double.infinity, // Faz o botão ocupar toda a largura
                child: ElevatedButton(
                  onPressed: () {
                    // Nenhuma funcionalidade, como solicitado
                  },
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Cor do texto
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Cor de fundo do botão
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Texto "or sign in with"
              const Center(
                child: Text(
                  'or sign in with',
                  style: TextStyle(color: Colors.black54),
                ),
              ),

              const SizedBox(height: 20),

              // Botões de redes sociais
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Botão Google
                  _buildSocialButton(
                    'assets/images/google_logo.png',
                  ), // Assumindo que você tem essas imagens
                  const SizedBox(width: 16),
                  // Botão Facebook
                  _buildSocialButton('assets/images/face_logo.png'),
                  const SizedBox(width: 16),
                  // Botão Twitter
                  _buildSocialButton('assets/images/twiter_logo.png'),
                ],
              ),

              const SizedBox(height: 40),

              // Texto de "Sign Up"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(color: Colors.black54),
                  ),
                  TextButton(
                    onPressed: () {
                      // Nenhuma funcionalidade
                    },
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Espaço no final
            ],
          ),
        ),
      ),
    );
  }

  // Widget auxiliar para criar os botões de redes sociais
  // Você pode colocar isso fora do método build, mas dentro da classe _MyHomePageState
  Widget _buildSocialButton(String imagePath) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        imagePath,
        height: 30, // Ajuste o tamanho conforme necessário
        width: 30,
      ),
    );
  }
}
