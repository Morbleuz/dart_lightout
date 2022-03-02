import 'dart:math';

import 'ihm.dart';
import 'led.dart';
import 'plateau.dart';

class LightOut {
  //Attribut
  Plateau _plateau = new Plateau();
  int _nbPlay = 0;

  //Constructeur
  LightOut();

  //Getter && Setter
  Plateau getPlateau() {
    return this._plateau;
  }

  int getNbFoisJouer() {
    return _nbPlay;
  }

  //Incrémente le nombre de fois jouer
  void incrementNbPlay() {
    this._nbPlay++;
  }
  void initNbplay(){
    this._nbPlay =0;
  }
  //Pour vider le tableau
  void vide() {
    for (int y = 0; y < this._plateau.getLesLed().length; y++) {
      for (int x = 0; x < this._plateau.getLesLed().length; x++) {
        this._plateau.getLesLed()[y][x].eteindre();
      }
    }
  }

  //Initialise le plateau avec 9 Leds allumés
  void initPlateau() {
    int count = 0;
    while (count < 9) {
      int y = new Random().nextInt(4);
      int x = new Random().nextInt(4);
      if (this._plateau.getLesLed()[y][x].getEstAllume() == false) {
        count++;
        this._plateau.getLesLed()[y][x].changeEtat();
      }
    }
  }

  //Check si les voisins ne sont pas en dehors du plateau
  bool enDehors(int y, int x) {
    bool enDehors = false;
    if (y == 5) {
      enDehors = true;
    }
    if (y == -1) {
      enDehors = true;
    }
    if (x == 5) {
      enDehors = true;
    }
    if (x == -1) {
      enDehors = true;
    }
    return enDehors;
  }

  //Fonction qui permet de savoir si le jeu est fini
  bool fini() {
    bool fini = true;
    for (int y = 0; y < this._plateau.getLesLed().length; y++) {
      for (int x = 0; x < this._plateau.getLesLed().length; x++) {
        if (this._plateau.getLesLed()[y][x].getEstAllume() == true) {
          fini = false;
        }
      }
    }

    return fini;
  }

  //Change l'état du voisin du haut,de droite,du bas et de la gauche
  void changeVoisin(int y, int x) {
    //En haut
    if (enDehors(y - 1, x) == false) {
      this._plateau.getLesLed()[y - 1][x].changeEtat();
    }

    //En bas
    if (enDehors(y + 1, x) == false) {
      this._plateau.getLesLed()[y + 1][x].changeEtat();
    }
    //A gauche
    if (enDehors(y, x - 1) == false) {
      this._plateau.getLesLed()[y][x - 1].changeEtat();
    }
    //A droite
    if (enDehors(y, x + 1) == false) {
      this._plateau.getLesLed()[y][x + 1].changeEtat();
    }
  }
}
