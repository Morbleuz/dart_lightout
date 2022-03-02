import 'led.dart';

class Plateau {
  //Attribut
  List<List<Led>> _lesled =
      new List.generate(5, (index) => new List.generate(5, (index) => Led()));

  //Constructeur
  Plateau();

  //Getter
  List<List<Led>> getLesLed() {
    return this._lesled;
  }
}
