import 'package:mobx/mobx.dart';

part 'declare.g.dart';

class Declare = _Declare with _$Declare;

abstract class _Declare with Store {
  // declare here
  //TODO: Add @observable and declare variable like this for any variable you want make state changing
  @observable
  int counter = 0;

  //TODO: Special variable declaration are ObservableMap and ObservableList
  //TODO: You can you it like Map and List in normal, just different in declaration
  @observable
  ObservableList list = ObservableList();

  @observable
  ObservableMap map = ObservableMap();
}
