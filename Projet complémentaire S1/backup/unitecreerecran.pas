unit uniteCreerEcran;

{$mode objfpc}{$H+}
{$codepage utf8}

interface

uses
  Classes, SysUtils,UniteTextes,GestionEcran,unitRecord,unitvariable,uniteConstruire, uniteTransaction, uniteSave;


procedure EcranAccueil();
procedure Ecran1(var p: Personnage);
procedure Ecran2(var p: Personnage);
procedure Ecran3(var p: Personnage);
Procedure Ecran4(var p: Personnage);
procedure Ecran5(var p: Personnage);
procedure Ecran6(var p: Personnage);
procedure Ecran7(var p: Personnage);

implementation

procedure EcranAccueil();                  //dessine l'écran de démarrage

begin
     changerTailleConsole(200,60);

     imageAccueil();                      //dessine le logo du jeu
     deplacerCurseurXY(81,53);
     afficherTexte1();                    //lancer une partie
     deplacerCurseurXY(83,56);
     afficherTexte2();                    //texte quitter le jeu

end;

//__________________________________________________________________________________

procedure Ecran1(var p: Personnage);       //dessine l'ecran de choix du nom

var
  c1, c2 : Coordonnees;
  t: typeBordure;
  re: string;
  rep:integer;


begin
  changerTailleConsole(200,60);

  c1.x:=5;
  c1.y:=2;
  c2.x:=198;
  c2.y:=58;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre de la fenetre

  c1.x:=85;
  c1.y:=2;
  c2.x:=125;
  c2.y:=6;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     // cadre du titre

  c1.x:=70;
  c1.y:=2;
  c2.x:=85;
  c2.y:=3;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=75;
  c1.y:=3;
  c2.x:=85;
  c2.y:=4;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=80;
  c1.y:=4;
  c2.x:=85;
  c2.y:=5;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=2;
  c2.x:=140;
  c2.y:=3;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=3;
  c2.x:=135;
  c2.y:=4;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=4;
  c2.x:=130;
  c2.y:=5;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=90;
  c1.y:=6;
  c2.x:=120;
  c2.y:=7;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=100;
  c1.y:=7;
  c2.x:=110;
  c2.y:=8;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=84;
  c1.y:=50;
  c2.x:=127;
  c2.y:=54;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre quitter

  deplacerCurseurXY(90,4);         // titre
  afficherTexte3();

  deplacerCurseurXY(12,18);        //scénario
  afficherTexte6();
  deplacerCurseurXY(12,19);
  afficherTexte7();
  deplacerCurseurXY(15,20);
  afficherTexte8();
  deplacerCurseurXY(12,21);
  afficherTexte9();

  deplacerCurseurXY(10,35);
  afficherTexte4();
  deplacerCurseurXY(10,39);
  afficherTexte5();

  deplacerCurseurXY(86,52);        // texte quitter le jeu
  afficherTexte2();

  deplacerCurseurXY(10,36);        //saisie du nom du joueur
  readln(re);
  setNom(p,re);

  readln(rep);
  case(rep)of
    1:begin
         Ecran2(p);                       // dessine l'écran de choix de difficulté
       end;


    2: begin
         effacerEcran;                      //quitter  le jeu
       end;

    end;

end;

//____________________________________________________________________________

procedure Ecran2(var p: Personnage);       //dessine l'écran de choix de difficulté

var
  c1, c2 : Coordonnees;
  t: typeBordure;
  rep:integer;


begin
  changerTailleConsole(200,60);

  c1.x:=5;
  c1.y:=2;
  c2.x:=198;
  c2.y:=58;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);   //cadre de la fenetre

  c1.x:=85;
  c1.y:=2;
  c2.x:=125;
  c2.y:=6;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     // cadre du titre

  c1.x:=70;
  c1.y:=2;
  c2.x:=85;
  c2.y:=3;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=75;
  c1.y:=3;
  c2.x:=85;
  c2.y:=4;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=80;
  c1.y:=4;
  c2.x:=85;
  c2.y:=5;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=2;
  c2.x:=140;
  c2.y:=3;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=3;
  c2.x:=135;
  c2.y:=4;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=4;
  c2.x:=130;
  c2.y:=5;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=90;
  c1.y:=6;
  c2.x:=120;
  c2.y:=7;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=100;
  c1.y:=7;
  c2.x:=110;
  c2.y:=8;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=84;
  c1.y:=50;
  c2.x:=127;
  c2.y:=54;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre quitter

  deplacerCurseurXY(95,4);         // titre
  afficherTexte10();

  deplacerCurseurXY(22,14);               //explications
  afficherTexte11(p);
  deplacerCurseurXY(22,16);
  afficherTexte12();
  deplacerCurseurXY(22,17);
  afficherTexte13();

  deplacerCurseurXY(25,23);               // proposition des difficultés
  afficherTexte14();
  deplacerCurseurXY(25,25);
  afficherTexte15();
  deplacerCurseurXY(25,27);
  afficherTexte16();
  deplacerCurseurXY(25,29);
  afficherTexte17();

  deplacerCurseurXY(86,52);               //texte quitter le jeu
  afficherTexte18();

  deplacerCurseurXY(70,14);               //emplacement réponse


  readln(rep);
  case(rep)of
    1: begin
         initialisation1();               // Difficulté très facile
         Ecran3(p);                       // dessine l'ecran de menu
       end;

    2: begin
         initialisation2();               // Difficulté facile
         Ecran3(p);                       // dessine l'ecran de menu
       end;

    3: begin
         initialisation3();               // Difficulté moyenne
         Ecran3(p);                       // dessine l'ecran de menu
       end;

    4: begin
         initialisation4();               // Difficulté difficile
         Ecran3(p);                       // dessine l'ecran de menu
       end;

    5: begin
         effacerEcran;                      //quitter le jeu
       end;
  end;

end;
//___________________________________________________________________________

procedure Ecran3(var p: personnage);       //dessine l'ecran de menu

var
  c1, c2 : Coordonnees;
  t: typeBordure;
  rep: Integer;
  rep2: String;

begin
  changerTailleConsole(200,60);

  c1.x:=5;
  c1.y:=2;
  c2.x:=198;
  c2.y:=58;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);   //cadre de la fenetre

  c1.x:=85;
  c1.y:=2;
  c2.x:=125;
  c2.y:=6;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     // cadre du titre

  c1.x:=70;
  c1.y:=2;
  c2.x:=85;
  c2.y:=3;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=75;
  c1.y:=3;
  c2.x:=85;
  c2.y:=4;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=80;
  c1.y:=4;
  c2.x:=85;
  c2.y:=5;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=2;
  c2.x:=140;
  c2.y:=3;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=3;
  c2.x:=135;
  c2.y:=4;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=4;
  c2.x:=130;
  c2.y:=5;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=90;
  c1.y:=6;
  c2.x:=120;
  c2.y:=7;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=100;
  c1.y:=7;
  c2.x:=110;
  c2.y:=8;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  deplacerCurseurXY(90,4);         // titre
  afficherTexte19();

  deplacerCurseurXY(170,5);         //Affiche le nb de tour
  afficheTour();


  deplacerCurseurXY(15,5);         // nom du joueur
  afficherTexte20(p);


  deplacerCurseurXY(15,6);         // quantité d'or
  afficherTexte21();

  c1.x:=15;
  c1.y:=15;
  c2.x:=100;
  c2.y:=25;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);      //cadre Description

  c1.x:=45;
  c1.y:=14;
  c2.x:=70;
  c2.y:=16;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);      //cadre titre Description

  deplacerCurseurXY(53,15);         // textes Description
  afficherTexte22();
  deplacerCurseurXY(20,19);
  afficherTexte23();
  deplacerCurseurXY(20,20);
  afficherTexte24();
  deplacerCurseurXY(20,21);
  afficherTexte25();
  deplacerCurseurXY(18,22);
  afficherTexte26();
  deplacerCurseurXY(19,23);
  afficherTexte27();

  deplacerCurseurXY(70,19);         // données Description
  afficherTexte28();
  deplacerCurseurXY(70,20);
  afficherTexte29(p);
  deplacerCurseurXY(70,21);
  afficherTexte30();

  c1.x:=15;
  c1.y:=30;
  c2.x:=100;
  c2.y:=43;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre Habitants

  c1.x:=45;
  c1.y:=29;
  c2.x:=70;
  c2.y:=31;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre titre Habitants


  deplacerCurseurXY(49,30);         // textes Habitants
  afficherTexte31();
  deplacerCurseurXY(20,33);        // textes Colons
  afficherTexte32();
  deplacerCurseurXY(20,34);
  afficherTexte36();
  deplacerCurseurXY(20,36);        // textes Citoyens
  afficherTexte33();
  deplacerCurseurXY(20,37);
  afficherTexte38();
  deplacerCurseurXY(20,39);        // textes Soldats
  afficherTexte34();
  deplacerCurseurXY(20,41);
  afficherTexte40();

  deplacerCurseurXY(70,33);         // données Colons
  afficherTexte35();
  deplacerCurseurXY(70,36);         // données Citoyens
  afficherTexte37();
  deplacerCurseurXY(70,39);         // données Soldats
  afficherTexte39();


  c1.x:=110;
  c1.y:=15;
  c2.x:=190;
  c2.y:=55;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);    //cadre Ressources

  c1.x:=135;
  c1.y:=14;
  c2.x:=165;
  c2.y:=16;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre titre Ressources

  deplacerCurseurXY(141,15);       // textes Ressources
  afficherTexte42();
  deplacerCurseurXY(115,19);
  afficherTexte43();
  deplacerCurseurXY(115,21);
  afficherTexte44();
  deplacerCurseurXY(115,23);
  afficherTexte45();
  deplacerCurseurXY(115,25);
  afficherTexte46();
  deplacerCurseurXY(115,27);
  afficherTexte47();
  deplacerCurseurXY(115,29);
  afficherTexte48();
  deplacerCurseurXY(115,31);
  afficherTexte49();
  deplacerCurseurXY(115,33);
  afficherTexte50();
  deplacerCurseurXY(115,35);
  afficherTexte51();

  deplacerCurseurXY(165,19);         // données Ressources
  afficherTexte52();
  deplacerCurseurXY(165,21);
  afficherTexte53();
  deplacerCurseurXY(165,23);
  afficherTexte54();
  deplacerCurseurXY(165,25);
  afficherTexte55();
  deplacerCurseurXY(165,27);
  afficherTexte56();
  deplacerCurseurXY(165,29);
  afficherTexte57();
  deplacerCurseurXY(165,31);
  afficherTexte58();
  deplacerCurseurXY(165,33);
  afficherTexte59();
  deplacerCurseurXY(165,35);
  afficherTexte60();

  deplacerCurseurXY(42,45);        // textes choix de l'action
  afficherTexte61();
  deplacerCurseurXY(38,49);
  afficherTexte62();

  c1.x:=39;
  c1.y:=52;
  c2.x:=80;
  c2.y:=54;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);       //cadre quitter

  deplacerCurseurXY(42,53);
  afficherTexte63();                 //quitter le jeu


  deplacerCurseurXY(10,50);          //emplacement reponse

  readln(rep);
  case(rep)of
    1:begin                                     //changer de tour
       bonheur();                               //affiche le niveau de bonheur des populations
       tva(getFertilite);                       //effectue les consommations des populations et les productions de ressources

       if((getTour()mod 7)=0)then               //tous les 7 tours
         begin
           ecran7(p);                           //dessine l'écran de combat
         end
       else
         begin
            if ((getTour() mod 3) =0)then       //tous les 3 tours
              ecran6(p)                         //dessine l'écran du marchand
            else
              ecran3(p);                        //dessine l'ecran de menu
         end;
      end;

    2: begin
         ecran4(p);                             //dessine l'écran de gestion des bâtiments
       end;

    3: begin
          deplacerCurseurXY(10,57);
          afficherTexteSauvegarde();            //propose de sauvegarder la partie
          readln(rep2);
          if (rep2='o') then
            begin
              sauvegarde(p);                    //sauvegarde la partie
              effacerEcran;                     //quitte le jeu
            end
          else
            effacerEcran;                      // quitte le jeu
       end;


    4:begin
        if (getCaverne>0) then                //Si les conditions sont toutes réunies...
           if (getGold()>300) then
             begin                            //Recrute un soldat
                setGold(getGold()-300);
                setSoldat(getSoldat()+1);
                deplacerCurseurXY(20,12);
                afficherTexte163();
                readln;
                ecran3(p);                     //dessine l'ecran de menu
             end

           else                                //Sinon...
           begin                               //Message d'erreur
              deplacerCurseurXY(10,12);
              afficherTexte152();
              readln;
              ecran3(p);                       //Dessine l'ecran de menu
           end

        else
           begin
             deplacerCurseurXY(10,12);
             afficherTexte41();                //Message d'erreur
             readln;
             ecran3(p);                        //Dessine l'ecran de menu
           end;

        end;
    end;

  readln;

end;


//__________________________________________________________________________

procedure Ecran4(var p: Personnage);                 //dessine l'écran de gestion des bâtiments

var
  c1, c2 : Coordonnees;
  t: typeBordure;
  rep:Integer;
  rep2:String;

begin
  changerTailleConsole(200,60);


  c1.x:=5;
  c1.y:=2;
  c2.x:=198;
  c2.y:=58;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);   //cadre de la fenetre

  c1.x:=85;
  c1.y:=2;
  c2.x:=125;
  c2.y:=6;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     // cadre du titre

  c1.x:=70;
  c1.y:=2;
  c2.x:=85;
  c2.y:=3;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=75;
  c1.y:=3;
  c2.x:=85;
  c2.y:=4;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=80;
  c1.y:=4;
  c2.x:=85;
  c2.y:=5;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=2;
  c2.x:=140;
  c2.y:=3;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=3;
  c2.x:=135;
  c2.y:=4;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=4;
  c2.x:=130;
  c2.y:=5;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=90;
  c1.y:=6;
  c2.x:=120;
  c2.y:=7;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=100;
  c1.y:=7;
  c2.x:=110;
  c2.y:=8;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  deplacerCurseurXY(88,4);         // titre
  afficherTexte76();

  deplacerCurseurXY(170,5);         //Affiche le nb de tour
  afficheTour();

  deplacerCurseurXY(15,5);         // nom du joueur
  afficherTexte20(p);

  deplacerCurseurXY(15,6);         // quantité d'or
  afficherTexte21();


  c1.x:=15;
  c1.y:=15;
  c2.x:=100;
  c2.y:=25;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);    //cadre habitations

  c1.x:=45;
  c1.y:=14;
  c2.x:=70;
  c2.y:=16;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre titre habitations


  deplacerCurseurXY(55,15);        //textes habitations
  afficherTexte77();
  deplacerCurseurXY(20,19);
  afficherTexte78();
  deplacerCurseurXY(20,21);
  afficherTexte80();
  deplacerCurseurXY(20,23);
  afficherTexte82();

  deplacerCurseurXY(70,19);         // données habitations
  afficherTexte79();
  deplacerCurseurXY(70,21);
  afficherTexte81();
  deplacerCurseurXY(70,23);
  afficherTexte83();


  c1.x:=15;
  c1.y:=30;
  c2.x:=100;
  c2.y:=40;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre Social

  c1.x:=45;
  c1.y:=29;
  c2.x:=70;
  c2.y:=31;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre titre Social

  deplacerCurseurXY(56,30);         // textes Social
  afficherTexte84();
  deplacerCurseurXY(20,34);
  afficherTexte85();
  deplacerCurseurXY(20,37);
  afficherTexte86();

  deplacerCurseurXY(70,34);         // données Social
  afficherTexte87();
  deplacerCurseurXY(70,37);
  afficherTexte88();

  c1.x:=110;
  c1.y:=15;
  c2.x:=190;
  c2.y:=55;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);    //cadre Industries

  c1.x:=135;
  c1.y:=14;
  c2.x:=165;
  c2.y:=16;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre titre Industries


  deplacerCurseurXY(147,15);       // textes Industries
  afficherTexte89();
  deplacerCurseurXY(115,18);
  afficherTexte90();
  deplacerCurseurXY(115,20);
  afficherTexte91();
  deplacerCurseurXY(115,22);
  afficherTexte92();
  deplacerCurseurXY(115,24);
  afficherTexte93();
  deplacerCurseurXY(115,26);
  afficherTexte94();
  if (getCitoyens()>0) then                    //si il y a des citoyens sur l'île, nouvelles constructions débloquées
     begin
          deplacerCurseurXY(115,28);
          afficherTexte95();
          deplacerCurseurXY(115,30);
          afficherTexte96();
          deplacerCurseurXY(115,32);
          afficherTexte97();
          deplacerCurseurXY(115,34);
          afficherTexte98();
     end;
  if (getMine()>0) then                         //si il y a une mine de construit, nouvelle construction débloquée
     begin
          deplacerCurseurXY(115,36);
          afficherTexte99();
     end;
  if (getFonderie()>0) then                    //si il y a une fonderie de construit, nouvelle construction débloquée
     begin
          deplacerCurseurXY(115,38);
          afficherTexte100();
     end;

  deplacerCurseurXY(165,18);         // données Industries
  afficherTexte101();
  deplacerCurseurXY(165,20);
  afficherTexte102();
  deplacerCurseurXY(165,22);
  afficherTexte103();
  deplacerCurseurXY(165,24);
  afficherTexte104();
  deplacerCurseurXY(165,26);
  afficherTexte105();
  if (getCitoyens()>0) then                         //si il y a des citoyens sur l'île, nouvelles constructions débloquées
     begin
          deplacerCurseurXY(165,28);
          afficherTexte106();
          deplacerCurseurXY(165,30);
          afficherTexte107();
          deplacerCurseurXY(165,32);
          afficherTexte108();
          deplacerCurseurXY(165,34);
          afficherTexte109();
     end;
  if (getMine()>0) then                             //si il y a une mine de construit, nouvelle construction débloquée
     begin
          deplacerCurseurXY(165,36);
          afficherTexte110();
     end;
  if (getFonderie()>0) then                         //si il y a une fonderie de construit, nouvelle construction débloquée
     begin
          deplacerCurseurXY(165,38);
          afficherTexte111();
     end;

   deplacerCurseurXY(36,43);       // textes choix de l'action
  afficherTexte112();
  deplacerCurseurXY(29,47);
  afficherTexte113();

  c1.x:=38;
  c1.y:=51;
  c2.x:=79;
  c2.y:=53;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);       //cadre quitter

  deplacerCurseurXY(41,52);          //quitter le jeu
  afficherTexte63();

  deplacerCurseurXY(15,9);           // emplacement réponse

  readln(rep);
   case(rep)of
     1: begin
          Ecran5(p);                     //dessine l'ecran de construction de bâtiments
        end;

     2: begin
          Ecran3(p);                     //dessine l'ecran de menu
        end;

     3: begin
          deplacerCurseurXY(10,57);
          afficherTexteSauvegarde();     //propose de sauvegarder la partie
          readln(rep2);
          if (rep2='o') then
            begin
              sauvegarde(p);             //sauvegarde la partie
              effacerEcran;              //quitte le jeu
            end
          else
            effacerEcran;                //quitte le jeu
       end;

   end;

   readln;

 end;

//___________________________________________________________________________

//Procedure Ecran5(var p: Personnage);          // dessine l'écran de construction des batîments

var
  c1, c2 : Coordonnees;
  t: typeBordure;
  rep : Integer;
  rep2: String;

begin
  changerTailleConsole(200,60);

  c1.x:=5;
  c1.y:=2;
  c2.x:=198;
  c2.y:=58;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);   //cadre de la fenetre

  c1.x:=85;
  c1.y:=2;
  c2.x:=125;
  c2.y:=6;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     // cadre du titre

  c1.x:=70;
  c1.y:=2;
  c2.x:=85;
  c2.y:=3;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=75;
  c1.y:=3;
  c2.x:=85;
  c2.y:=4;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=80;
  c1.y:=4;
  c2.x:=85;
  c2.y:=5;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=2;
  c2.x:=140;
  c2.y:=3;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=3;
  c2.x:=135;
  c2.y:=4;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=4;
  c2.x:=130;
  c2.y:=5;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=90;
  c1.y:=6;
  c2.x:=120;
  c2.y:=7;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=100;
  c1.y:=7;
  c2.x:=110;
  c2.y:=8;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  deplacerCurseurXY(88,4);         // textes titre
  afficherTexte76();

  deplacerCurseurXY(170,5);         //Afficher le nb de tour
  afficheTour();


  deplacerCurseurXY(15,5);         // texte joueur
  afficherTexte20(p);

  deplacerCurseurXY(15,6);         // texte or
  afficherTexte21();

  deplacerCurseurXY(18,11);         // textes Construire
  afficherTexte114();

  c1.x:=15;
  c1.y:=15;
  c2.x:=101;
  c2.y:=25;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);    //cadre Maisons

  c1.x:=45;
  c1.y:=14;
  c2.x:=70;
  c2.y:=16;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre titre Maisons

  deplacerCurseurXY(55,15);
  afficherTexte77();
  deplacerCurseurXY(20,19);         // textes Construire Maisons_Colons
  afficherTexte78();
  deplacerCurseurXY(20,21);         // textes Construire Maisons_Citoyens
  afficherTexte80();
  deplacerCurseurXY(20,23);         // textes Construire Caverne
  afficherTexte82();

  deplacerCurseurXY(45,19);         // données Construire Maisons_Colons
  afficherTexte115();
  deplacerCurseurXY(45,21);         // données Construire Maisons_Citoyens
  afficherTexte116();
  deplacerCurseurXY(45,23);         // données Construire Caverne
  afficherTexte117();


  c1.x:=15;
  c1.y:=30;
  c2.x:=101;
  c2.y:=40;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre Social

  c1.x:=45;
  c1.y:=29;
  c2.x:=70;
  c2.y:=31;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre titre Social

  deplacerCurseurXY(56,30);         // textes Construire Social
  afficherTexte84();
  deplacerCurseurXY(20,34);
  afficherTexte85();
  deplacerCurseurXY(20,37);
  afficherTexte86();

  deplacerCurseurXY(45,34);         // données Construire Social
  afficherTexte118();
  deplacerCurseurXY(45,37);
  afficherTexte119();

  c1.x:=105;
  c1.y:=15;
  c2.x:=195;
  c2.y:=40;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);    //cadre Industries

  c1.x:=135;
  c1.y:=14;
  c2.x:=165;
  c2.y:=16;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre titre Industries

  deplacerCurseurXY(147,15);       // textes Construire Industries
  afficherTexte89();
  deplacerCurseurXY(111,19);
  afficherTexte90();
  deplacerCurseurXY(111,21);
  afficherTexte91();
  deplacerCurseurXY(111,23);
  afficherTexte92();
  deplacerCurseurXY(111,25);
  afficherTexte93();
  deplacerCurseurXY(111,27);
  afficherTexte94();
  if (getCitoyens()>0) then
     begin
          deplacerCurseurXY(111,29);
          afficherTexte95();
          deplacerCurseurXY(111,31);
          afficherTexte96();
          deplacerCurseurXY(111,33);
          afficherTexte97();
          deplacerCurseurXY(111,35);
          afficherTexte98();
     end;
  if (getMine()>0) then
     begin
          deplacerCurseurXY(111,37);
          afficherTexte99();
     end;
  if (getFonderie()>0) then
     begin
          deplacerCurseurXY(111,39);
          afficherTexte100();
     end;

  deplacerCurseurXY(140,19);         // données Construire Industries
  afficherTexte120();
  deplacerCurseurXY(140,21);
  afficherTexte121();
  deplacerCurseurXY(140,23);
  afficherTexte122();
  deplacerCurseurXY(140,25);
  afficherTexte123();
  deplacerCurseurXY(140,27);
  afficherTexte124();
   if (getCitoyens()>0) then
     begin
          deplacerCurseurXY(140,29);
          afficherTexte125();
          deplacerCurseurXY(140,31);
          afficherTexte126();
          deplacerCurseurXY(140,33);
          afficherTexte127();
          deplacerCurseurXY(140,35);
          afficherTexte128();
     end;
  if (getMine()>0) then
     begin
          deplacerCurseurXY(140,37);
          afficherTexte129();
     end;
  if (getFonderie()>0) then
     begin
          deplacerCurseurXY(140,39);
          afficherTexte130();
     end;


  c1.x:=105;
  c1.y:=42;
  c2.x:=194;
  c2.y:=56;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);    //cadre Ressources

  c1.x:=135;
  c1.y:=41;
  c2.x:=165;
  c2.y:=43;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre titre Ressources

  deplacerCurseurXY(140,42);       // textes Ressources
  afficherTexte42();
  deplacerCurseurXY(117,46);
  afficherTexte43();
  deplacerCurseurXY(117,47);
  afficherTexte44();
  deplacerCurseurXY(117,48);
  afficherTexte45();
  deplacerCurseurXY(117,49);
  afficherTexte46();
  deplacerCurseurXY(117,50);
  afficherTexte47();
  deplacerCurseurXY(117,51);
  afficherTexte48();
  deplacerCurseurXY(117,52);
  afficherTexte49();
  deplacerCurseurXY(117,53);
  afficherTexte50();
  deplacerCurseurXY(117,54);
  afficherTexte51();

  deplacerCurseurXY(165,46);         // données Ressources
  afficherTexte52();
  deplacerCurseurXY(165,47);
  afficherTexte53();
  deplacerCurseurXY(165,48);
  afficherTexte54();
  deplacerCurseurXY(165,49);
  afficherTexte55();
  deplacerCurseurXY(165,50);
  afficherTexte56();
  deplacerCurseurXY(165,51);
  afficherTexte57();
  deplacerCurseurXY(165,52);
  afficherTexte58();
  deplacerCurseurXY(165,53);
  afficherTexte59();
  deplacerCurseurXY(165,54);
  afficherTexte60();


  deplacerCurseurXY(29,48);       // textes Actions
  afficherTexte131();

  c1.x:=34;
  c1.y:=51;
  c2.x:=75;
  c2.y:=53;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre Quitter

  deplacerCurseurXY(37,52);       // textes Quitter
  afficherTexte132();

  deplacerCurseurXY(49,11);         // curseur réponse


  readln(rep);
   case(rep)of
     1: begin                         //construire une maison
          cMaison();
          readln;
          ecran5(p);
        end;

     2: begin                         //construire une maison de citoyens
          cMaison_Citoyens();
          readln;
          ecran5(p);
        end;

     3: begin                        //construire une caverne
          cCaverne();
          readln;
          ecran5(p);
        end;

     4: begin                         //construire un centre-ville
          cCentre();
          readln;
          ecran5(p);
        end;

     5: begin                         //construire une chapelle
           cChapelle();
           readln;
           ecran5(p);
        end;

     6: begin                        //construire une cabane de bûcherons
          cBucheron();
          readln;
          ecran5(p);
        end;

     7: begin                        //construire une cabane de pêcheurs
          cPecheur();
          readln;
          ecran5(p);
        end;

     8: begin                        //construire une bergerie
          cBergerie();
          readln;
          ecran5(p);
        end;

     9: begin                        //construire un atelier de tisserands
          cTisserand();
          readln;
          ecran5(p);
        end;

     10:begin
          cEntrepot();                  // construire un entrepot
          readln;
          ecran5(p);
        end;

     11: begin                          //construire une scierie
          if (getCitoyens()>0) then
            begin
                 cScierie();
                 readln;
                 ecran5(p);
            end;
        end;

     12: begin                           //construire un verger
          if (getCitoyens()>0) then
            begin
                 cVerger();
                 readln;
                 ecran5(p);
            end;
        end;

     13: begin                          //construire une distillerie
          if (getCitoyens()>0) then
            begin
                 cDistillerie();
                 readln;
                 ecran5(p);
            end;
        end;

     14: begin                        //construire une mine
          if (getCitoyens()>0) then
            begin
                 cMine();
                 readln;
                 ecran5(p);
            end;
        end;

     15: begin                        //construire une fonderie
          if (getMine()>0) then
             begin
                 cFonderie();
                 readln;
                 ecran5(p);
             end;
        end;

     16: begin                        //construire une outillerie
          if (getFonderie()>0) then
             begin
                 cOutilleur();
                 readln;
                 ecran5(p);
             end;
        end;

     17: begin                        // Arrêter de construire
          ecran4(p);
        end;

     18: begin                        // Quitter
          deplacerCurseurXY(10,57);
          afficherTexteSauvegarde();
          readln(rep2);
          if (rep2='o') then
            begin
              sauvegarde(p);
              effacerEcran;
            end
          else
            effacerEcran;
         end;

     end;

  readln;

end;

//___________________________________________________________________________

procedure Ecran6(var p: Personnage);                     //dessine l'écran du marchand

var
  c1, c2 : Coordonnees;
  t: typeBordure;
  rep: Integer;

begin
  changerTailleConsole(200,60);

  c1.x:=5;
  c1.y:=2;
  c2.x:=198;
  c2.y:=58;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);   //cadre de la fenetre

  c1.x:=85;
  c1.y:=2;
  c2.x:=125;
  c2.y:=6;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     // cadre du titre

  c1.x:=70;
  c1.y:=2;
  c2.x:=85;
  c2.y:=3;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=75;
  c1.y:=3;
  c2.x:=85;
  c2.y:=4;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=80;
  c1.y:=4;
  c2.x:=85;
  c2.y:=5;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=2;
  c2.x:=140;
  c2.y:=3;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=3;
  c2.x:=135;
  c2.y:=4;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=4;
  c2.x:=130;
  c2.y:=5;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=90;
  c1.y:=6;
  c2.x:=120;
  c2.y:=7;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=100;
  c1.y:=7;
  c2.x:=110;
  c2.y:=8;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  deplacerCurseurXY(90,4);         // textes titre
  afficherTexte19();

  deplacerCurseurXY(170,5);         //Afficher le nb de tour
  afficheTour();

  deplacerCurseurXY(15,5);         // texte joueur
  afficherTexte20(p);

  deplacerCurseurXY(15,6);         // texte or
  afficherTexte21();

  deplacerCurseurXY(18,12);        // textes Marchand
  afficherTexte133();
  deplacerCurseurXY(18,14);
  afficherTexte134();
  deplacerCurseurXY(33,15);
  afficherTexte135();
  deplacerCurseurXY(33,16);
  afficherTexte136();
  deplacerCurseurXY(33,17);
  afficherTexte137();

  c1.x:=15;
  c1.y:=21;
  c2.x:=100;
  c2.y:=47;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);    //cadre Resssources

  c1.x:=45;
  c1.y:=20;
  c2.x:=70;
  c2.y:=22;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre titre Ressources


  deplacerCurseurXY(48,21);         // texte Ressources
  afficherTexte151();
  deplacerCurseurXY(28,26);
  afficherTexte43();
  deplacerCurseurXY(28,28);
  afficherTexte44();
  deplacerCurseurXY(28,30);
  afficherTexte45();
  deplacerCurseurXY(28,32);
  afficherTexte46();
  deplacerCurseurXY(28,34);
  afficherTexte47();
  deplacerCurseurXY(28,36);
  afficherTexte48();
  deplacerCurseurXY(28,38);
  afficherTexte49();
  deplacerCurseurXY(28,40);
  afficherTexte50();
  deplacerCurseurXY(28,42);
  afficherTexte51();

  deplacerCurseurXY(75,26);         // données Ressources
  afficherTexte52();
  deplacerCurseurXY(75,28);
  afficherTexte53();
  deplacerCurseurXY(75,30);
  afficherTexte54();
  deplacerCurseurXY(75,32);
  afficherTexte55();
  deplacerCurseurXY(75,34);
  afficherTexte56();
  deplacerCurseurXY(75,36);
  afficherTexte57();
  deplacerCurseurXY(75,38);
  afficherTexte58();
  deplacerCurseurXY(75,40);
  afficherTexte59();
  deplacerCurseurXY(75,42);
  afficherTexte60();

  c1.x:=110;
  c1.y:=21;
  c2.x:=190;
  c2.y:=34;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);    //cadre Acheter

  c1.x:=140;
  c1.y:=20;
  c2.x:=165;
  c2.y:=22;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);      //cadre titre Acheter

  deplacerCurseurXY(150,21);
  afficherTexte138();
  deplacerCurseurXY(122,24);         // textes Acheter
  afficherTexte139();
  deplacerCurseurXY(122,26);
  afficherTexte140();
  deplacerCurseurXY(122,28);
  afficherTexte141();
  deplacerCurseurXY(122,30);
  afficherTexte142();
  deplacerCurseurXY(122,32);
  afficherTexte143();


  c1.x:=110;
  c1.y:=38;
  c2.x:=190;
  c2.y:=54;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre Vendre

  c1.x:=140;
  c1.y:=37;
  c2.x:=165;
  c2.y:=39;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     //cadre titre Vendre

  deplacerCurseurXY(150,38);
  afficherTexte144();
  deplacerCurseurXY(122,41);         // textes Vendre
  afficherTexte145();
  deplacerCurseurXY(122,43);
  afficherTexte146();
  deplacerCurseurXY(122,45);
  afficherTexte147();
  deplacerCurseurXY(122,47);
  afficherTexte148();
  deplacerCurseurXY(122,49);
  afficherTexte149();
  deplacerCurseurXY(122,51);
  afficherTexte150();


  deplacerCurseurXY(30,52);         // texte Arrêter
  afficherTexte154();

  readln(rep);
     case(rep)of
       1: begin                         //acheter poisson
            aPoisson();
            readln;
            ecran6(p);
          end;

       2: begin                         // acheter bois
            aBois();
            readln;
            ecran6(p);
          end;

       3: begin                         // acheter outil
             aOutil();
             readln;
             ecran6(p);
          end;

       4: begin                        // acheter laine
            aLaine();
            readln;
            ecran6(p);
          end;

       5: begin                        // acheter une pomme
            aPomme();
            readln;
            ecran6(p);
          end;

       6: begin                        // vendre poisson
            vPoisson();
            readln;
            ecran6(p);
          end;

       7: begin                        // vendre bois
            vBois();
            readln;
            ecran6(p);
          end;

       8: begin                        // vendre outil
            vOutil();
            readln;
            ecran6(p);
          end;

       9: begin                        // vendre laine
            vLaine();
            readln;
            ecran6(p);
          end;

       10: begin                        // vendre une pomme
            vPomme();
            readln;
            ecran6(p);
          end;

      11: begin                        // vendre Rhum
            vRhum();
            readln;
            ecran6(p);
          end;

      12: begin                    //passer au tour suivant
            Ecran3(p);
          end;

     end;

   readln;

end;

//______________________________________________________________________________

procedure Ecran7(var p: Personnage);             //dessine l'écran de combat

var
  c1, c2 : Coordonnees;
  t: typeBordure;
  rep: char;
  a:integer;

begin
  changerTailleConsole(200,60);

  c1.x:=5;
  c1.y:=2;
  c2.x:=198;
  c2.y:=58;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);   //cadre de la fenetre

  c1.x:=85;
  c1.y:=2;
  c2.x:=125;
  c2.y:=6;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);     // cadre du titre

  c1.x:=70;
  c1.y:=2;
  c2.x:=85;
  c2.y:=3;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=75;
  c1.y:=3;
  c2.x:=85;
  c2.y:=4;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=80;
  c1.y:=4;
  c2.x:=85;
  c2.y:=5;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=2;
  c2.x:=140;
  c2.y:=3;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=3;
  c2.x:=135;
  c2.y:=4;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=125;
  c1.y:=4;
  c2.x:=130;
  c2.y:=5;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=90;
  c1.y:=6;
  c2.x:=120;
  c2.y:=7;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  c1.x:=100;
  c1.y:=7;
  c2.x:=110;
  c2.y:=8;
  t:= simple;
  dessinerCadre(c1,c2,t,15,0);

  deplacerCurseurXY(103,4);         // textes titre
  afficherTexte156();


  deplacerCurseurXY(15,5);         // texte joueur
  afficherTexte20(p);


  deplacerCurseurXY(15,6);         // texte or
  afficherTexte21();

  deplacerCurseurXY(20,16);        //scénario
  afficherTexte157();
  deplacerCurseurXY(22,18);
  afficherTexte158();


  deplacerCurseurXY(20,26);        // textes comparaison armées
  afficherTexte159();
  deplacerCurseurXY(20,27);
  afficherTexte160();

  deplacerCurseurXY(18,30);       // acheter des soldats
  afficherTexte162();
  deplacerCurseurXY(80,30);

  readln(rep);
     case(rep)of
      'o':begin
          if (getCaverne>0) then
              if getGold()>300 then
                begin
                  setGold(getGold()-300);
                  setSoldat(getSoldat()+1);
                  deplacerCurseurXY(120,30);
                  afficherTexte163();
                  readln;
                  ecran7(p);
                end
              else
                begin
                  deplacerCurseurXY(120,30);
                  afficherTexte152();
                end
          else
            begin
              deplacerCurseurXY(120,30);
              afficherTexte41();
              readln;
            end;
          end;
     end;

  deplacerCurseurXY(18,35);
  afficherTexte161();
  deplacerCurseurXY(75,35);

  readln(a);
  setSoldatVeut(a);
  if (getSoldatVeut()>getSoldat()) then
      begin
        deplacerCurseurXY(18,36);
        afficherTexte164();
        readln();
        Ecran7(p);
      end
  else
      begin
         setSoldatCombat(getSoldatVeut());
         deplacerCurseurXY(18,36);
         afficherTexte165();
      end;
  readln;
  deplacerCurseurXY(18,38);
  afficherTexte166();

  if getSoldatCombat>=getPilleur then
    begin
       deplacerCurseurXY(18,42);
       afficherTexte167();
       setSoldat((getSoldat()-getSoldatCombat())+(getSoldatCombat()-getpilleur()));
       deplacerCurseurXY(18,43);
       afficherTexte168();
       deplacerCurseurXY(18,46);
       afficherTexte170();
    end
  else
    begin
       deplacerCurseurXY(18,42);
       afficherTexte169();
       setSoldat(getSoldat()-getSoldatCombat());
       deplacerCurseurXY(18,43);
       afficherTexte168();
       deplacerCurseurXY(18,46);
       afficherTexte170();

       if (getBois()> 20) then
         setBois(getBois-20)
       else
         setBois(0);

       if (getPoissons()> 20) then
         setPoissons(getPoissons-20)
       else
         setPoissons(0);

       if (getOutils()> 15) then
         setOutils(getOutils-15)
       else
         setOutils(0);

       if (getLaine()> 5) then
         setLaine(getLaine-5)
       else
         setLaine(0);

       if (getRhum()> 3) then
         setRhum(getRhum-3)
       else
         setRhum(0);

       if (getGold()> 2000) then
         setGold(getGold-2000)
       else
         setGold(0);

    end;
    readln();
    setPilleur(getPilleur*2);
    ecran3(p);

   end;

end.
