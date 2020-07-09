import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:listacompras/store/compras.store.dart';
import 'package:listacompras/view/detail.view.dart';

class Lista extends StatefulWidget {
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {

  GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController _compraController = TextEditingController();

  var store = GetIt.I.get<CompraStore>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Lista de Compras"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Detail()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Form(
                key: _form,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _compraController,
                      decoration: InputDecoration(
                        labelText: "Item"
                      ),
                      validator: (e) {
                        if(e.isEmpty)
                          return "O campo não pode ser vazio!";
                      },
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Adicionar"),
                        onPressed: () {
                          if(_form.currentState.validate()) {
                            store.addList(_compraController.text);
                          }
                        },
                      ),
                    ),
                    Observer(
                      builder: (_) {
                        return Text("${store.listaCompras.length}");
                      },
                    ),
                    Observer(
                      builder: (_) {
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: store.listaCompras.length, 
                          itemBuilder: (context, i) {
                            return ListTile(title: Text(store.listaCompras[i]));
                          },
                        );
                      },
                    )
                  ],
                )
              )
            )
          ],
        ),
      )
    );
  }
}