import 'package:mobx/mobx.dart';

part 'compras.store.g.dart';

class CompraStore = _ComprasStore with _$CompraStore;

abstract class _ComprasStore with Store {
  @observable
  var listaCompras = ObservableList<String>();

  @action
  void addList(String item) {
    listaCompras.add(item);
  }
}