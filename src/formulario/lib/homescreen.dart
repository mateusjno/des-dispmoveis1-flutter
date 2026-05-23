import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ======================== VARIÁVEIS e FUNÇÕES ============================//
  
  String _exibirDados = '';
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  bool _verSenha = false;

  //metodo para exibir dados na tela//
  void exibirDados() {
    setState(() {
      _exibirDados = 'Nome: ${_nomeController.text}\n Email: ${_emailController.text}\nSenha: ${_senhaController.text}';
    });
  }

  // ======================== FIM ============================//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Formulário")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Form(
        child: Column(
          children: [
            Text("Usando formulários e recuperando dados"),
            SizedBox(height: 20),
            TextFormField(
              controller: _nomeController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Nome',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                prefix: Icon(Icons.person),
                suffix: Icon(Icons.check_circle),
              ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                prefix: Icon(Icons.email),
                suffix: Icon(Icons.check_circle),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _senhaController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                prefix: Icon(Icons.lock),
                suffix: IconButton(onPressed: () {
                  setState(() {
                    _verSenha = !_verSenha;
                  });
                }, icon: Icon(_verSenha ? Icons.visibility_off : Icons.visibility))
                ),
                obscureText: _verSenha,
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(onPressed: exibirDados, child: Text('Cadastro')),
              ),
              SizedBox(height: 20),
              Text("Dados do formulário"),
              SizedBox(height: 10),
              Text(_exibirDados, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
        ),
      ),
    );
  }
}