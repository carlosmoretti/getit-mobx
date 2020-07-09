// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compras.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CompraStore on _ComprasStore, Store {
  final _$listaComprasAtom = Atom(name: '_ComprasStore.listaCompras');

  @override
  ObservableList<String> get listaCompras {
    _$listaComprasAtom.reportRead();
    return super.listaCompras;
  }

  @override
  set listaCompras(ObservableList<String> value) {
    _$listaComprasAtom.reportWrite(value, super.listaCompras, () {
      super.listaCompras = value;
    });
  }

  final _$_ComprasStoreActionController =
      ActionController(name: '_ComprasStore');

  @override
  void addList(String item) {
    final _$actionInfo = _$_ComprasStoreActionController.startAction(
        name: '_ComprasStore.addList');
    try {
      return super.addList(item);
    } finally {
      _$_ComprasStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaCompras: ${listaCompras}
    ''';
  }
}
