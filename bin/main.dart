import 'ihm.dart';
import 'lightout.dart';

void main(List<String> arguments) {
  LightOut lightOut = new LightOut();
  IHM.afficheDebut();
  IHM.InitialisationDuTableau();
  lightOut.initPlateau();
  IHM.affichePlateau(lightOut.getPlateau());
  while(lightOut.fini()!=true){
      while (lightOut.fini() != true) {
    //Vous pouvez taper cheatcode pour finir instantanément le jeu.
    IHM.NombreDeFoisJouer(lightOut);
    lightOut.incrementNbPlay();
    IHM.choixJoueur(lightOut);
    IHM.affichePlateau(lightOut.getPlateau());
  }
  IHM.afficheFin();
  if(IHM.veuxRejouer() == true){
    lightOut.initPlateau();
    IHM.affichePlateau(lightOut.getPlateau());
    lightOut.initNbplay();
  }
  }

  
}
