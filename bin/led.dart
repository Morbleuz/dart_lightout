class Led {
  //Attributs
  bool _estAllume = false;
  //Constructeur
  Led();
  Led.estAllume(this._estAllume);

  //Getter & Setter
  bool getEstAllume() {
    return this._estAllume;
  }

  //Changer l'état de la led
  void changeEtat() {
    if (this._estAllume == false) {
      this._estAllume = true;
    } else {
      this._estAllume = false;
    }
  }

  //Eteindre la led
  void eteindre() {
    this._estAllume = false;
  }
}
