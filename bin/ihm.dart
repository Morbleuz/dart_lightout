import 'led.dart';
import 'lightout.dart';
import 'plateau.dart';
import 'dart:io';

class IHM {
  //Prends en compte le choix du joueur
  static void choixJoueur(LightOut lightOut) {
    bool valide = false;
    while (valide != true) {
      print("Choisir une valeur dans le tableau (1-25)");
      String choix = stdin.readLineSync().toString();
      if (choix == "1") {
        lightOut.getPlateau().getLesLed()[0][0].changeEtat();
        lightOut.changeVoisin(0, 0);
        valide = true;
      } else if (choix == "2") {
        lightOut.getPlateau().getLesLed()[0][1].changeEtat();
        lightOut.changeVoisin(0, 1);
        valide = true;
      } else if (choix == "3") {
        lightOut.getPlateau().getLesLed()[0][2].changeEtat();
        lightOut.changeVoisin(0, 2);
        valide = true;
      } else if (choix == "4") {
        lightOut.getPlateau().getLesLed()[0][3].changeEtat();
        lightOut.changeVoisin(0, 3);
        valide = true;
      } else if (choix == "5") {
        lightOut.getPlateau().getLesLed()[0][4].changeEtat();
        lightOut.changeVoisin(0, 4);
        valide = true;
      } else if (choix == "6") {
        lightOut.getPlateau().getLesLed()[1][0].changeEtat();
        lightOut.changeVoisin(1, 0);
        valide = true;
      } else if (choix == "7") {
        lightOut.getPlateau().getLesLed()[1][1].changeEtat();
        lightOut.changeVoisin(1, 1);
        valide = true;
      } else if (choix == "8") {
        lightOut.getPlateau().getLesLed()[1][2].changeEtat();
        lightOut.changeVoisin(1, 2);
        valide = true;
      } else if (choix == "9") {
        lightOut.getPlateau().getLesLed()[1][3].changeEtat();
        lightOut.changeVoisin(1, 3);
        valide = true;
      } else if (choix == "10") {
        lightOut.getPlateau().getLesLed()[1][4].changeEtat();
        lightOut.changeVoisin(1, 4);
        valide = true;
      } else if (choix == "11") {
        lightOut.getPlateau().getLesLed()[2][0].changeEtat();
        lightOut.changeVoisin(2, 0);
        valide = true;
      } else if (choix == "12") {
        lightOut.getPlateau().getLesLed()[2][1].changeEtat();
        lightOut.changeVoisin(2, 1);
        valide = true;
      } else if (choix == "13") {
        lightOut.getPlateau().getLesLed()[2][2].changeEtat();
        lightOut.changeVoisin(2, 2);
        valide = true;
      } else if (choix == "14") {
        lightOut.getPlateau().getLesLed()[2][3].changeEtat();
        lightOut.changeVoisin(2, 3);
        valide = true;
      } else if (choix == "15") {
        lightOut.getPlateau().getLesLed()[2][4].changeEtat();
        lightOut.changeVoisin(2, 4);
        valide = true;
      } else if (choix == "16") {
        lightOut.getPlateau().getLesLed()[3][0].changeEtat();
        lightOut.changeVoisin(3, 0);
        valide = true;
      } else if (choix == "17") {
        lightOut.getPlateau().getLesLed()[3][1].changeEtat();
        lightOut.changeVoisin(3, 1);
        valide = true;
      } else if (choix == "18") {
        lightOut.getPlateau().getLesLed()[3][2].changeEtat();
        lightOut.changeVoisin(3, 2);
        valide = true;
      } else if (choix == "19") {
        lightOut.getPlateau().getLesLed()[3][3].changeEtat();
        lightOut.changeVoisin(3, 3);
        valide = true;
      } else if (choix == "20") {
        lightOut.getPlateau().getLesLed()[3][4].changeEtat();
        lightOut.changeVoisin(3, 4);
        valide = true;
      } else if (choix == "21") {
        lightOut.getPlateau().getLesLed()[4][0].changeEtat();
        lightOut.changeVoisin(4, 0);
        valide = true;
      } else if (choix == "22") {
        lightOut.getPlateau().getLesLed()[4][1].changeEtat();
        lightOut.changeVoisin(4, 1);
        valide = true;
      } else if (choix == "23") {
        lightOut.getPlateau().getLesLed()[4][2].changeEtat();
        lightOut.changeVoisin(4, 2);
        valide = true;
      } else if (choix == "24") {
        lightOut.getPlateau().getLesLed()[4][3].changeEtat();
        lightOut.changeVoisin(4, 3);
        valide = true;
      } else if (choix == "25") {
        lightOut.getPlateau().getLesLed()[4][4].changeEtat();
        lightOut.changeVoisin(4, 4);
        valide = true;
      } //Code de triche pour finir le jeu instantanément ;)
      else if (choix == "cheatcode") {
        lightOut.vide();
        valide = true;
      } else {
        print("Saisir une valeur valide");
      }
    }
  }

  //Voir si la led est éteint ou allumé
  static String voirLed(Led led) {
    String etat = " ";
    if (led.getEstAllume() == true) {
      etat = "*";
    }
    return etat;
  }
  static bool veuxRejouer(){
    bool rejouer = false;
    print("Voulez vous rejouer ?(o/n)");
    String reponse = stdin.readLineSync().toString();
    while(reponse != "o" && reponse != "n"){
      print("Saisir une valeur valide !");
      String reponse = stdin.readLineSync().toString(); 
      
    }
    if(reponse =="o"){
      rejouer = true;;
    }return rejouer;

  }
  //Permet d'afficher le plateau
  static void affichePlateau(Plateau plateau) {
    stdout.write("---------------\n");
    for (int y = 0; y < plateau.getLesLed().length; y++) {
      for (int x = 0; x < plateau.getLesLed().length; x++) {
        stdout.write("|" + voirLed(plateau.getLesLed()[y][x]).toString() + "|");
      }
      stdout.writeln("");
    }
    stdout.write("---------------\n");
  }

  //Affiche la fin du jeu
  static void afficheFin() {
    print(
        "\nBBBBBBBBBBBBBBBBB   RRRRRRRRRRRRRRRRR                  AAA   VVVVVVVV           VVVVVVVV     OOOOOOOOO           !!!\n"
        "B::::::::::::::::B  R::::::::::::::::R                A:::A  V::::::V           V::::::V   OO:::::::::OO        !!:!!\n"
        "B::::::BBBBBB:::::B R::::::RRRRRR:::::R              A:::::A V::::::V           V::::::V OO:::::::::::::OO      !:::!\n"
        "BB:::::B     B:::::BRR:::::R     R:::::R            A:::::::AV::::::V           V::::::VO:::::::OOO:::::::O     !:::!\n"
        "  B::::B     B:::::B  R::::R     R:::::R           A:::::::::AV:::::V           V:::::V O::::::O   O::::::O     !:::!\n"
        "  B::::B     B:::::B  R::::R     R:::::R          A:::::A:::::AV:::::V         V:::::V  O:::::O     O:::::O     !:::!\n"
        "  B::::BBBBBB:::::B   R::::RRRRRR:::::R          A:::::A A:::::AV:::::V       V:::::V   O:::::O     O:::::O     !:::!\n"
        "  B:::::::::::::BB    R:::::::::::::RR          A:::::A   A:::::AV:::::V     V:::::V    O:::::O     O:::::O     !:::!\n"
        "  B::::BBBBBB:::::B   R::::RRRRRR:::::R        A:::::A     A:::::AV:::::V   V:::::V     O:::::O     O:::::O     !:::!\n"
        "  B::::B     B:::::B  R::::R     R:::::R      A:::::AAAAAAAAA:::::AV:::::V V:::::V      O:::::O     O:::::O     !:::!\n"
        "  B::::B     B:::::B  R::::R     R:::::R     A:::::::::::::::::::::AV:::::V:::::V       O:::::O     O:::::O     !!:!!\n"
        "  B::::B     B:::::B  R::::R     R:::::R    A:::::AAAAAAAAAAAAA:::::AV:::::::::V        O::::::O   O::::::O      !!! \n"
        "BB:::::BBBBBB::::::BRR:::::R     R:::::R   A:::::A             A:::::AV:::::::V         O:::::::OOO:::::::O          \n"
        "B:::::::::::::::::B R::::::R     R:::::R  A:::::A               A:::::AV:::::V           OO:::::::::::::OO       !!! \n"
        "B::::::::::::::::B  R::::::R     R:::::R A:::::A                 A:::::AV:::V              OO:::::::::OO        !!:!!\n"
        "BBBBBBBBBBBBBBBBB   RRRRRRRR     RRRRRRRAAAAAAA                   AAAAAAAVVV                 OOOOOOOOO           !!!\n");
  }

  //Affiche le debut du jeu
  static void afficheDebut() {
    print(
        "\nLLLLLLLLLLL               iiii                     hhhhhhh                  OOOOOOOOO                              tttt\n"
        "L:::::::::L              i::::i                    h:::::h                OO:::::::::OO                         ttt:::t          \n"
        "L:::::::::L               iiii                     h:::::h              OO:::::::::::::OO                       t:::::t          \n"
        "LL:::::::LL                                        h:::::h             O:::::::OOO:::::::O                      t:::::t          \n"
        "  L:::::L               iiiiiii    ggggggggg   gggggh::::h hhhhh       O::::::O   O::::::Ouuuuuu    uuuuuuttttttt:::::ttttttt    \n"
        "  L:::::L               i:::::i   g:::::::::ggg::::gh::::hh:::::hhh    O:::::O     O:::::Ou::::u    u::::ut:::::::::::::::::t    \n"
        "  L:::::L                i::::i  g:::::::::::::::::gh::::::::::::::hh  O:::::O     O:::::Ou::::u    u::::ut:::::::::::::::::t    \n"
        "  L:::::L                i::::i g::::::ggggg::::::ggh:::::::hhh::::::h O:::::O     O:::::Ou::::u    u::::utttttt:::::::tttttt    \n"
        "  L:::::L                i::::i g:::::g     g:::::g h::::::h   h::::::hO:::::O     O:::::Ou::::u    u::::u      t:::::t          \n"
        "  L:::::L                i::::i g:::::g     g:::::g h:::::h     h:::::hO:::::O     O:::::Ou::::u    u::::u      t:::::t          \n"
        "  L:::::L                i::::i g:::::g     g:::::g h:::::h     h:::::hO:::::O     O:::::Ou::::u    u::::u      t:::::t          \n"
        "  L:::::L         LLLLLL i::::i g::::::g    g:::::g h:::::h     h:::::hO::::::O   O::::::Ou:::::uuuu:::::u      t:::::t    tttttt\n"
        "LL:::::::LLLLLLLLL:::::Li::::::ig:::::::ggggg:::::g h:::::h     h:::::hO:::::::OOO:::::::Ou:::::::::::::::uu    t::::::tttt:::::t\n"
        "L::::::::::::::::::::::Li::::::i g::::::::::::::::g h:::::h     h:::::h OO:::::::::::::OO  u:::::::::::::::u    tt::::::::::::::t\n"
        "L::::::::::::::::::::::Li::::::i  gg::::::::::::::g h:::::h     h:::::h   OO:::::::::OO     uu::::::::uu:::u      tt:::::::::::tt\n"
        "LLLLLLLLLLLLLLLLLLLLLLLLiiiiiiii    gggggggg::::::g hhhhhhh     hhhhhhh     OOOOOOOOO         uuuuuuuu  uuuu        ttttttttttt  \n"
        "                                            g:::::g                                                                              \n"
        "                                gggggg      g:::::g                                                                              \n"
        "                                g:::::gg   gg:::::g                                                                              \n"
        "                                 g::::::ggg:::::::g                                                                              \n"
        "                                  gg:::::::::::::g                                                                               \n"
        "                                    ggg::::::ggg                                                                                 \n"
        "                                       gggggg                                                                                    \n");
  }

  //Affiche l'initialisation du tableau
  static void InitialisationDuTableau() {
    print("+---------------------------+\n"
        "| Initialisation du tableau |\n"
        "+---------------------------+");
  }

  //Affiche le nombre de fois jouer
  static void NombreDeFoisJouer(LightOut lightOut) {
    print("+--------------------------+\n"
            "| Nombre de fois jouer : " +
        lightOut.getNbFoisJouer().toString() +
        " |\n"
            "+--------------------------+");
  }
}
