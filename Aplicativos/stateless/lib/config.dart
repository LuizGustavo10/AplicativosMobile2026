import 'package:flutter/material.dart';

class Configuracoes extends StatefulWidget {
  const Configuracoes({super.key});

  @override
  State<Configuracoes> createState() => PaginaConfiguracoes();
}

class PaginaConfiguracoes extends State<Configuracoes> {
  bool modoEscuro = false;
  bool notificacoes = true;
  bool localizacao = false;
  double volume = 50;
  double tamanhoFonte = 16;
  String idiomaSelecionado = "Português";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            "Preferências",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Card(
            child: SwitchListTile(
              value: modoEscuro,
              secondary: Icon(Icons.dark_mode),
              title: Text("Modo Escuro"),
              subtitle: Text("Ativar Desativa Tema"),
              onChanged: (valor) {setState(() {modoEscuro = valor;});},
            ),
          ),
          Card(
            child: SwitchListTile(
              value: localizacao,
              secondary: Icon(Icons.location_on),
              title: Text("Localização"),
              subtitle: Text("Permitir acesso a localização"),
              onChanged: (valor) {setState(() {localizacao = valor;});
              },
            ),
          ),

          SizedBox(height: 10,),
          Text("Ajustes", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.volume_up),
                      SizedBox(width: 10,),
                      Text("Volume", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    ],
                  ),
                    Slider(
                    value:volume, min:0, max:100, divisions: 10, label: volume.round().toString(),
                    onChanged: (valor){ setState(() { volume = valor; }); },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
