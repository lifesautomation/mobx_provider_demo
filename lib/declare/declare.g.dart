// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'declare.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Declare on _Declare, Store {
  final _$counterAtom = Atom(name: '_Declare.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$listAtom = Atom(name: '_Declare.list');

  @override
  ObservableList<dynamic> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<dynamic> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$mapAtom = Atom(name: '_Declare.map');

  @override
  ObservableMap<dynamic, dynamic> get map {
    _$mapAtom.reportRead();
    return super.map;
  }

  @override
  set map(ObservableMap<dynamic, dynamic> value) {
    _$mapAtom.reportWrite(value, super.map, () {
      super.map = value;
    });
  }

  @override
  String toString() {
    return '''
counter: ${counter},
list: ${list},
map: ${map}
    ''';
  }
}
