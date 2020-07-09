import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:listacompras/store/compras.store.dart';

class Detail extends StatefulWidget {
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  var store = GetIt.I.get<CompraStore>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Observer(
          builder: (_) {
            return Text("${store.listaCompras.length}");
          },
        ),
      ),
    );
  }
}