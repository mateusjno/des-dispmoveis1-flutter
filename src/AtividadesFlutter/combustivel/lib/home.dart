import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // VARIÁVEIS E FUNCÕES //

  String _resultado = "";
  final _valor_combustivel = TextEditingController();
  final _valor_dinheiro = TextEditingController();
  final _nome = TextEditingController();

  void calcular() {
    String nome = _nome.text;
    double totalpagar = 0;
    double result = 0;
    double desc = 0;
    double resultcdesc = 0;
    double combustivel = double.parse(_valor_combustivel.text);
    double dinheiro = double.parse(_valor_dinheiro.text);
    result = dinheiro / combustivel;

    if(dinheiro > 180){
      desc = 10;
      totalpagar = dinheiro-(dinheiro*(desc/100));
    }
    else if(dinheiro > 90){
      desc = 5;
      totalpagar = dinheiro-(dinheiro*(desc/100));
    }
    else{
      desc = 0;
      totalpagar = dinheiro-(dinheiro*(desc/100));
    }

    setState(() {
      _resultado =
          '''Você tem R\$ ${dinheiro.toString()} e pode comprar ${result.toString()} litros de gasolina. \n
             $nome seu desconto é de ${desc.toString()}\% TOTAL A PAGAR : R\$ ${totalpagar.toString()}\n''';
    });
  }

  // FIM DAS VARIÁVEIS E FUNÇÕES //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MATEUS JESUS NOCKELLI DE OLIVEIRA",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Cálculo de combustível",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5kLaRYNFYevki1jwBxTXNu6D5VPCdePPJhg&s',
                width: 100,
                height: 100,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[150],
                  labelText: "Digite o nome",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                ),
                controller: _nome,
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[150],
                  labelText: "Digite o valor do combústivel",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                ),
                controller: _valor_combustivel,
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[150],
                  labelText: "Digite o valor em dinheiro",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                ),
                controller: _valor_dinheiro,
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                height: 80,
                child: ElevatedButton(
                  onPressed: () {
                    calcular();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    "Calcular",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                _resultado.toUpperCase(),
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
