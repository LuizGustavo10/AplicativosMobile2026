import 'package:flutter/material.dart';

//Pagina de perfil
class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("perfil"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        //centralizar
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIfV3cTgY6NanZXUGL1hSE0IONzbQypAsntg&s",
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Desenvolvedor Full Flutter",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Luiz", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  "Apaixonado por tecnologia, onde muitos veem problemas, a tecnologia enxerga possibilidades",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, height: 1.4),
                ),
              ),
            ),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(15),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.email, color: Colors.blue),
                    title: Text("E-mail"),
                    subtitle: Text("Neymar@gmail.com"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.phone, color: Colors.blue),
                    title: Text("Telefone"),
                    subtitle: Text("(44)99890-1315"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.school, color: Colors.blue),
                    title: Text("Cidade"),
                    subtitle: Text("Nova Londrina - PR"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.book, color: Colors.blue),
                    title: Text("Formação"),
                    subtitle: Text("Técnico de Informática para Internet"),
                  ),
                  SizedBox(height: 25),
                  //deixar no itens na linha
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print("clicado");
                          },
                          label: Text("Editar"),
                          icon: Icon(Icons.edit),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 20),
                          ),
                        ),
                      ),

                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print("clicou");
                          },
                          label: Text("Mensagem"),
                          icon: Icon(Icons.message),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 20),
                          ),
                        ),
                      ),

                      Expanded(
                        child: SizedBox(
                          child: OutlinedButton.icon(
                            onPressed: () {
                              print("Clicado");
                            },
                            icon: Icon(Icons.logout),
                            label: Text("Sair da conta"),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.red,
                              side: BorderSide(color: Colors.red),
                              padding: EdgeInsets.symmetric(vertical: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
