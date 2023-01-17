unit uniteTextes;

{$mode objfpc}{$H+}
{$codepage utf8}

interface

uses
  Classes, SysUtils,unitRecord, unitvariable;

//Afficher le nombre de tour
procedure afficheTour();
//ecran accueil
procedure imageAccueil();
procedure afficherTexte1();
procedure afficherTexte2();
procedure afficherTexteCharge();
//ecran 1
procedure afficherTexte3();
procedure afficherTexte4();
procedure afficherTexte5();
procedure afficherTexte6();
procedure afficherTexte7();
procedure afficherTexte8();
procedure afficherTexte9();
//ecran 2
procedure afficherTexte10();
procedure afficherTexte11(p:Personnage);
procedure afficherTexte12();
procedure afficherTexte13();
procedure afficherTexte14();
procedure afficherTexte15();
procedure afficherTexte16();
procedure afficherTexte17();
procedure afficherTexte18();
//ecran 3
procedure afficherTexte19();
procedure afficherTexte20(p:Personnage);
procedure afficherTexte21();
procedure afficherTexte22();
procedure afficherTexte23();
procedure afficherTexte24();
procedure afficherTexte25();
procedure afficherTexte26();
procedure afficherTexte27();
procedure afficherTexte28();
procedure afficherTexte29(p:Personnage);
procedure afficherTexte30();
procedure afficherTexte31();
procedure afficherTexte32();
procedure afficherTexte33();
procedure afficherTexte34();
procedure afficherTexte35();
procedure afficherTexte36();
procedure afficherTexte37();
procedure afficherTexte38();
procedure afficherTexte39();
procedure afficherTexte40();
procedure afficherTexte41();
procedure afficherTexte42();
procedure afficherTexte43();
procedure afficherTexte44();
procedure afficherTexte45();
procedure afficherTexte46();
procedure afficherTexte47();
procedure afficherTexte48();
procedure afficherTexte49();
procedure afficherTexte50();
procedure afficherTexte51();
procedure afficherTexte52();
procedure afficherTexte53();
procedure afficherTexte54();
procedure afficherTexte55();
procedure afficherTexte56();
procedure afficherTexte57();
procedure afficherTexte58();
procedure afficherTexte59();
procedure afficherTexte60();
procedure afficherTexte61();
procedure afficherTexte62();
procedure afficherTexte63();
procedure afficherTexte64();
procedure afficherTexte65();
procedure afficherTexte66();
procedure afficherTexte67();
procedure afficherTexte68();
procedure afficherTexte69();
procedure afficherTexte70();
procedure afficherTexte71();
procedure afficherTexte72();
procedure afficherTexte73();
procedure afficherTexte74();
procedure afficherTexte75();
//ecran 4
procedure afficherTexte76();
procedure afficherTexte77();
procedure afficherTexte78();
procedure afficherTexte79();
procedure afficherTexte80();
procedure afficherTexte81();
procedure afficherTexte82();
procedure afficherTexte83();
procedure afficherTexte84();
procedure afficherTexte85();
procedure afficherTexte86();
procedure afficherTexte87();
procedure afficherTexte88();
procedure afficherTexte89();
procedure afficherTexte90();
procedure afficherTexte91();
procedure afficherTexte92();
procedure afficherTexte93();
procedure afficherTexte94();
procedure afficherTexte95();
procedure afficherTexte96();
procedure afficherTexte97();
procedure afficherTexte98();
procedure afficherTexte99();
procedure afficherTexte100();
procedure afficherTexte101();
procedure afficherTexte102();
procedure afficherTexte103();
procedure afficherTexte104();
procedure afficherTexte105();
procedure afficherTexte106();
procedure afficherTexte107();
procedure afficherTexte108();
procedure afficherTexte109();
procedure afficherTexte110();
procedure afficherTexte111();
procedure afficherTexte112();
procedure afficherTexte113();
//ecran 5
procedure afficherTexte114();
procedure afficherTexte115();
procedure afficherTexte116();
procedure afficherTexte117();
procedure afficherTexte118();
procedure afficherTexte119();
procedure afficherTexte120();
procedure afficherTexte121();
procedure afficherTexte122();
procedure afficherTexte123();
procedure afficherTexte124();
procedure afficherTexte125();
procedure afficherTexte126();
procedure afficherTexte127();
procedure afficherTexte128();
procedure afficherTexte129();
procedure afficherTexte130();
procedure afficherTexte131();
procedure afficherTexte132();
//ecran 6
procedure afficherTexte133();
procedure afficherTexte134();
procedure afficherTexte135();
procedure afficherTexte136();
procedure afficherTexte137();
procedure afficherTexte138();
procedure afficherTexte139();
procedure afficherTexte140();
procedure afficherTexte141();
procedure afficherTexte142();
procedure afficherTexte143();
procedure afficherTexte144();
procedure afficherTexte145();
procedure afficherTexte146();
procedure afficherTexte147();
procedure afficherTexte148();
procedure afficherTexte149();
procedure afficherTexte150();
procedure afficherTexte151();
procedure afficherTexte152();
procedure afficherTexte153();
procedure afficherTexte154();
procedure afficherTexte155();
//ecran 7
procedure afficherTexte156();
procedure afficherTexte157();
procedure afficherTexte158();
procedure afficherTexte159();
procedure afficherTexte160();
procedure afficherTexte161();
procedure afficherTexte162();
procedure afficherTexte163();
procedure afficherTexte164();
procedure afficherTexte165();
procedure afficherTexte166();
procedure afficherTexte167();
procedure afficherTexte168();
procedure afficherTexte169();
procedure afficherTexte170();
//Sauvegarde
procedure afficherTexteSauvegarde();


implementation

procedure afficheTour();
begin
     writeln('Tour : ',getTour());
end;

//_________________________________________________________________________________

procedure imageAccueil();
begin
     writeln('                                                                                                                                                                                                   ');
     writeln('         ########################################################################################################################################################################################  ');
     writeln('               #############################################################################################################################################################################       ');
     writeln('                       #################################             >>               >==>    >=>         >==>    >=>             >===>           #################################                ');
     writeln('                              ##########################            >>=>              >> >=>  >=>         >> >=>  >=>           >=>    >=>        ##########################                       ');
     writeln('                                    ####################           >> >=>             >=> >=> >=>         >=> >=> >=>         >=>        >=>      ####################                             ');
     writeln('                                            ############          >=>  >=>            >=>  >=>>=>         >=>  >=>>=>         >=>        >=>      ############                                     ');
     writeln('                                                 #######         >=====>>=>           >=>   > >=>         >=>   > >=>         >=>        >=>      #######                                          ');
     writeln('                                                     ###        >=>      >=>          >=>    >>=>         >=>    >>=>           >=>     >=>       ###                                              ');
     writeln('                                                      ##       >=>        >=>         >=>     >=>         >=>     >=>             >===>           ##                                               ');
     writeln('                                                       #                                                                                          #                                                ');
     writeln('                                                                                     >><    < >< ><      ><       >< >                                                                             ');
     writeln('                                                                                    > ><        ><     >    <    <    >                                                                            ');
     writeln('                                                                                      ><       ><      >    <       >                                                                              ');
     writeln('                                                                                      ><      ><         ><       >< ><                                                                            ');
     writeln('                                        .*:  :::::::.                                                                                                                                              ');
     writeln('                                         =-::.   :=:==                                                                                                                                             ');
     writeln('                                         -:      .:---:  =-                                                                                                                                        ');
     writeln('                                         -=::::::..::+.  -+:::      ..                                                                                                                             ');
     writeln('                                         -:           .  :-   :::::==                                                                                                                              ');
     writeln('                                         ::              -+:::   :+-=.                                                                    .::::::::....                                            ');
     writeln('                                         ::              --  .::::::                                                                     ::       :...:--:-.                                       ');
     writeln('                                .:..     --              ==                                                                           .:--                 .-:                                     ');
     writeln('                                .-:=+::::--::::.:.       =-                                                                          --             ::        :.                                   ');
     writeln('                                     -.        .-+-*=:::-+-                                                                        .-                 .--::::. .:                                  ');
     writeln('                                     =          .- .-.  .:::::---.                                                                .-   :.      .::.     :-   .::::                                 ');
     writeln('                                     :.           -  -         :+.                                                                -   .=      :. :+::-:   :.     .                                 ');
     writeln('                                     .:           :.  -         -.                                                               :.  :=.     :-.  .-  .-:  -.                                      ');
     writeln('                                     =             -  -          =                                                               : .- =     :: -.  ::    :. -                                      ');
     writeln('                        .    .       -             -  -          -                                                               :.-  -    .-   =   =.    .:.:                                     ');
     writeln('                       :=.  .=-     :.             -  -          -.                                                             ..=   :.   -    .-   +      :+                                     ');
     writeln('                   :-  : =:  --    .:              =  -          =                                                               +     -  .:     :.  .-                                            ');
     writeln('                   -+. :  -: :-   .: :::-=.:::::   - -           =                                                               .     -  -       -   :.                                           ');
     writeln('                    -- -   :-.+--++==:..:+     .-.- -. :--:::.  -:                                                                      - -       -    =                                           ');
     writeln('                    .=::    :-==---:  ..::::::::-%-+--::+    :-::                                                                        ::       .-   :-                                          ');
     writeln('                     :-::    .+-   .-            :+-.:::::::::=*:                                                                                  -    +                                          ');
     writeln('                      ---     .+     =            =+.          +.                                                                                  -    --.                                        ');
     writeln('                      .==      .-    -.           -:-          +                                                                             .--:::=     *:----:                                   ');
     writeln('                      :==-      .-   .:           - -          =                                                                          :::.     =     =      --:                                ');
     writeln('                     ..=+#::::    -  .:           = -        --+:::::..::-=                                                            :::         -     :.       .-:.                             ');
     writeln('                     .:+:--::.:::  =.-           ::-.        -+      ...:+-                                                         .::            -      -          :-                            ');
     writeln('                      =-:=::-:==-+=:+= .--::::. .-.=:--++=- .--.        .-                                                        .:.              =      -            -:                          ');
     writeln('                      .-+-.-+ .---+*#=+++=----++*=*+*-===---=:+-:-=:.  ::                                                       .-:                =      =             .-                         ');
     writeln('                       =-. . .-:----::........:-::--+---:==*=:===:-=-:                                                         ::                  .:..:.::              .-                        ');
     writeln('                        -.::::::-+=:---:::::-----:::::::: ---.                                                                  -:.                                     .::.                       ');
     writeln('                        :=:::.  ..                      .-+                                                                       .:::::.                       -.:-::-:.                          ');
     writeln('               .:...:::::-. ..--:---::--:-::::::--:---:-:+::::::....  :                                                                 :-::..:::::::.      .:::.                                  ');
     writeln('                            ..  =:                           .=.         ....:.:.                                                                    ..---:::                                      ');
     writeln('                         .:: .:::.:::::::::::::::::::::::-:::=:::::.:.                                                                                                                             ');
     writeln('                          ..:.:...::::..          .                                                                                                                                                ');
     writeln('                                            .:..:.:::::.... .                                                                                                                                      ');


end;


procedure afficherTexte1();
begin
     writeln('Commencer la partie (Tapez 1 puis entrée)');
end;

procedure afficherTexte2();
begin
  writeln('Quitter la partie (Tapez 2 puis entrée)');
end;

procedure afficherTexteCharge();
begin
     writeln('Voulez-vous charger une sauvegarde ? ("o" pour oui, "n" pour non)');
end;


//_____________________________________________________________________________

procedure afficherTexte3();
begin
  writeln('Création d''une nouvelle partie');
end;


procedure afficherTexte4();
begin
  writeln('Comment vous-appelez vous ? (Saisisez votre nom puis tapez sur entrée)');
end;

procedure afficherTexte5();
begin
  writeln('Pour valider ce nom, tapez 1 puis entrée');
end;


procedure afficherTexte6();
begin
  writeln('Sur ordre de la reine, vous et votre équipage prenez les voiles afin de coloniser de nouveaux territoires et augmenter la puissance de votre nation.');
end;


procedure afficherTexte7();
begin
  writeln('Voici de nombreux jours que vous parcourez les mers à bord de votre caravelle, espérant trouver une île oû s''intaller. Soudain, la vigie exulte :');
end;

procedure afficherTexte8();
begin
  writeln('- Terre, terre en vue mon capitaine !!! C''est une île et elle a l''air inhabitée !');
end;

procedure afficherTexte9();
begin
  writeln('C''est parfait ! Il ne vous reste plus qu'' à acoster et entamer votre mission. Bonne chance capitaine, vous en aurez besoin !');
end;

//______________________________________________________________________________

procedure afficherTexte10();
begin
  writeln('Choix de la difficulté');
end;

procedure afficherTexte11(p:Personnage);
begin
  writeln('Quelle difficulté choisissez-vous ',getNom(p),' ?');
end;

procedure afficherTexte12();
begin
  writeln('Le niveau de difficulté influence la quantité de ressources disponibles au début du jeu,');
end;

procedure afficherTexte13();
begin
  writeln('plus la difficulté est grande, moins vous disposerez de ressources pour commencer.');
end;

procedure afficherTexte14();
begin
  writeln('- Très facile  (Tapez 1 puis entrée)');
end;

procedure afficherTexte15();
begin
  writeln('- Facile       (Tapez 2 puis entrée)');
end;

procedure afficherTexte16();
begin
  writeln('- Moyenne      (Tapez 3 puis entrée)');
end;

procedure afficherTexte17();
begin
  writeln('- Difficile    (Tapez 4 puis entrée)');
end;

procedure afficherTexte18();
begin
  writeln('Quitter la partie (Tapez 5 puis entrée)');
end;
//__________________________________________________________________________

procedure afficherTexte19();
begin
  writeln('Bienvenue sur : Dayfell Cay');
end;


procedure afficherTexte20(p:Personnage);
begin
  writeln('Nom du joueur  :   ',getNom(p));
end;


procedure afficherTexte21();
begin
  writeln('Or             :   ', getGold);
end;


procedure afficherTexte22();
begin
  writeln('Description');
end;


procedure afficherTexte23();
begin
  writeln('Nom de l''île          :');
end;


procedure afficherTexte24();
begin
  writeln('Propriétaire          :');
end;

procedure afficherTexte25();
begin
  writeln('Fertilité de l''île    :');
end;

procedure afficherTexte26();
begin
  writeln('(Sur une île non fertile vous ne pourrez pas obtenir de rhum,');
end;


procedure afficherTexte27();
begin
  writeln('même en construisant une distillerie)');
end;


procedure afficherTexte28();
begin
  writeln('Dayfell Cay');
end;


procedure afficherTexte29(p:Personnage);
begin
  writeln(getNom(p));
end;

procedure afficherTexte30();
begin
  if (getFertilite=1) then
     writeln('Oui')
  else
      writeln('Non');
end;


procedure afficherTexte31();
begin
  writeln('Liste des habitants');
end;


procedure afficherTexte32();
begin
  writeln('Nombre de colons       :');
end;


procedure afficherTexte33();
begin
  writeln('Nombre de citoyens     :');
end;

procedure afficherTexte34();
begin
  writeln('Nombre de soldats      :');
end;

procedure afficherTexte35();
begin
  writeln(getHabitants);
end;

procedure afficherTexte36();
begin
  writeln('(Chaque colon consomme 1 poisson par jour)');
end;

procedure afficherTexte37();
begin
  writeln(getCitoyens);
end;

procedure afficherTexte38();
begin
  writeln('(Chaque citoyen consomme 1 poisson, 2 tissus et 1 pomme par jour)');
end;

procedure afficherTexte39();
begin
  writeln(getSoldat);
end;

procedure afficherTexte40();
begin
  writeln('Pour recruter un soldat en échange de 300 or, tapez 4 puis entrée');
end;

procedure afficherTexte41();
begin
  writeln('Vous ne possédez pas de caverne de soldats pour les acueillir ! ');
end;


procedure afficherTexte42();
begin
  writeln('Liste des ressources');
end;


procedure afficherTexte43();
begin
  writeln('Quantité de poissons          :');
end;


procedure afficherTexte44();
begin
  writeln('Quantité de bois              :');
end;


procedure afficherTexte45();
begin
  writeln('Quantité d''outils             :');
end;


procedure afficherTexte46();
begin
  writeln('Quantité de laines            :');
end;


procedure afficherTexte47();
begin
  writeln('Quantité de tissus            :');
end;


procedure afficherTexte48();
begin
  writeln('Quantité de pommes            :');
end;

procedure afficherTexte49();
begin
  writeln('Quantité de rhums             :');
end;

procedure afficherTexte50();
begin
  writeln('Quantité de charbons          :');
end;

procedure afficherTexte51();
begin
  writeln('Quantité de fers              :');
end;


procedure afficherTexte52();
begin
  writeln(getPoissons,'/',getStock);
end;

procedure afficherTexte53();
begin
  writeln(getBois,'/',getStock);
end;

procedure afficherTexte54();
begin
  writeln(getOutils,'/',getStock);
end;

procedure afficherTexte55();
begin
  writeln(getLaine,'/',getStock);
end;

procedure afficherTexte56();
begin
  writeln(getTissu,'/',getStock);
end;

procedure afficherTexte57();
begin
  writeln(getPomme,'/',getStock);
end;

procedure afficherTexte58();
begin
  writeln(getRhum,'/',getStock);
end;

procedure afficherTexte59();
begin
  writeln(getCharbon,'/',getStock);
end;

procedure afficherTexte60();
begin
  writeln(getFer,'/',getStock);
end;



procedure afficherTexte61();
begin
  writeln('Tour suivant (Tapez 1 puis entrée)');
end;


procedure afficherTexte62();
begin
  writeln('Gestion des batiments (Tapez 2 puis entrée)');
end;


procedure afficherTexte63();
begin
  writeln('Quitter le jeu (Tapez 3 puis entrée)');
end;

procedure afficherTexte64();
begin
  writeln('Les colons sont très contents, leurs besoins ont tous été satisfaits.');
end;

procedure afficherTexte65();
begin
  writeln('Les colons sont satisfaits, mais il va falloir se réapprovisionner en ressources !');
end;

procedure afficherTexte66();
begin
  writeln('Les colons sont mécontents car certains de leurs besoins n'' ont pas été comblés : ')
end;


procedure afficherTexte67();
begin
  writeln(getHabitants()-getPoissons(), ' colons sont morts par manque de poissons');
end;

procedure afficherTexte68();
begin
  writeln('Il n''y a pas de colons sur votre île');
end;

procedure afficherTexte69();
begin
  writeln('Les citoyens sont très contents, leurs besoins ont tous été satisfaits.');
end;

procedure afficherTexte70();
begin
  writeln('Les citoyens sont satisfaits, mais il va falloir se réapprovisionner en ressources !');
end;

procedure afficherTexte71();
begin
  writeln('Les citoyens sont mécontents car certains de leurs besoins n''ont pas été comblés : ');
end;

procedure afficherTexte72();
begin
  writeln(getCitoyens()-getPoissons(), ' citoyens sont morts par manque de poissons');
end;

procedure afficherTexte73();
begin
  writeln('Les citoyens sont mécontents car certains de leurs besoins n''ont pas été comblés : il n''y a plus de tissu !');
end;

procedure afficherTexte74();
begin
  writeln(getCitoyens()-getPomme(), ' citoyens sont morts par manque de pommes');
end;

procedure afficherTexte75();
begin
  writeln('Il n''y a pas de citoyens sur votre île');
end;



//__________________________________________________________________________

procedure afficherTexte76();
begin
  writeln('Gestion des bâtiments de Dayfell Cay');
end;

procedure afficherTexte77();
begin
  writeln('Maisons');
end;


procedure afficherTexte78();
begin
  writeln('Maison de Colons            :');
end;


procedure afficherTexte79();
begin
  writeln(getMaisons);
end;


procedure afficherTexte80();
begin
  writeln('Maison de Citoyens          :');
end;


procedure afficherTexte81();
begin
  writeln(getMaisons_Citoyens);
end;


procedure afficherTexte82();
begin
  writeln('Caverne de soldat           :');
end;


procedure afficherTexte83();
begin
     writeln(getCaverne);
end ;


procedure afficherTexte84();
begin
  writeln('Social');
end;


procedure afficherTexte85();
begin
  writeln('Centre-ville                :');
end;


procedure afficherTexte86();
begin
  writeln('Chapelle                    :');
end;


procedure afficherTexte87();
begin
  writeln(getCentre);
end;


procedure afficherTexte88();
begin
  writeln(getChapelle);
end;


procedure afficherTexte89();
begin
  writeln('Industries');
end;


procedure afficherTexte90();
begin
  writeln('Cabane de bucherons          :');
end;


procedure afficherTexte91();
begin
  writeln('Cabane de pêcheurs           :');
end;


procedure afficherTexte92();
begin
  writeln('Bergerie                     :');
end;


procedure afficherTexte93();
begin
  writeln('Atelier de tisserands        :');
end;

procedure afficherTexte94();
begin
  writeln('Entrepot                     :');
end;


procedure afficherTexte95();
begin
  writeln('Scierie                       :');
end;

procedure afficherTexte96();
begin
  writeln('Verger                        :');
end;

procedure afficherTexte97();
begin
  writeln('Distillerie                   :');
end;

procedure afficherTexte98();
begin
  writeln('Mine                          :');
end;

procedure afficherTexte99();
begin
  writeln('Fonderie                      :');
end;

procedure afficherTexte100();
begin
  writeln('Outilleur                     :');
end;



procedure afficherTexte101();
begin
  writeln(getBucherons);
end;


procedure afficherTexte102();
begin
  writeln(getPecheurs);
end;


procedure afficherTexte103();
begin
  writeln(getBergerie);
end;


procedure afficherTexte104();
begin
  writeln(getTisserands);
end;

procedure afficherTexte105();
 begin
   writeln(getEntrepot);
 end;


procedure afficherTexte106();
begin
  writeln(getScierie);
end;

procedure afficherTexte107();
begin
  writeln(getVerger);
end;

procedure afficherTexte108();
begin
  writeln(getDistillerie);
end;

procedure afficherTexte109();
begin
  writeln(getMine);
end;

procedure afficherTexte110();
begin
  writeln(getFonderie);
end;

procedure afficherTexte111();
begin
  writeln(getOutilleur);
end;



procedure afficherTexte112();
begin
  writeln('Construire un bâtiment (Tapez 1 puis entrée)');
end;


procedure afficherTexte113();
begin
  writeln('Retour à l''écran de gestion de l''île (Tapez 2 puis entrée)');
end;

//___________________________________________________________________________

procedure afficherTexte114();
begin
  writeln('Que voulez-vous construire ?');
end;


procedure afficherTexte115();
begin
  writeln('2 Bois                          (Tapez 1 puis entrée)');
end;

procedure afficherTexte116();
begin
  writeln('1 Bois, 1 Outils, 1 Maison de Colons (Tapez 2/entrée)');
end;

procedure afficherTexte117();
begin
  writeln('1000 Or, 10 Bois, 5 Outils      (Tapez 3 puis entrée)');
end;

procedure afficherTexte118();
begin
  writeln('200 Or, 8 Bois, 4 Outils        (Tapez 4 puis entrée)');
end;

procedure afficherTexte119();
begin
  writeln('300 Or, 6 Bois, 3 Outils        (Tapez 5 puis entrée)');
end;

procedure afficherTexte120();
begin
  writeln('50 Or, 3 Outils              (Tapez 6 puis entrée)');
end;

procedure afficherTexte121();
begin
  writeln('100 Or, 5 Bois, 3 Outils     (tapez 7 puis entrée)');
end;

procedure afficherTexte122();
begin
  writeln('200 Or, 4 Bois, 2 Outils     (Tapez 8 puis entrée)');
end;

procedure afficherTexte123();
begin
  writeln('300 Or, 3 Bois, 2 Outils     (Tapez 9 puis entrée)');
end;

procedure afficherTexte124();
begin
  writeln('100 Or, 10 Bois, 5 Outils    (Tapez 10 puis entrée)');
end;

procedure afficherTexte125();
begin
  writeln('200 Or, 3 Bois, 4 Outils     (Tapez 11 puis entrée)');
end;

procedure afficherTexte126();
begin
  writeln('200 Or, 8 Outils             (Tapez 12 puis entrée)');
end;

procedure afficherTexte127();
begin
  writeln('5000 Or, 6 Bois, 6 Outils    (Tapez 13 puis entrée)');
end;

procedure afficherTexte128();
begin
  writeln('300 Or, 5 Bois, 3 Outils     (Tapez 14 puis entrée)');
end;

procedure afficherTexte129();
begin
  writeln('200 Or, 3 Bois, 5 Outils     (Tapez 15 puis entrée)');
end;

procedure afficherTexte130();
begin
  writeln('300 Or, 5 Bois, 6 Outils     (Tapez 16 puis entrée)');
end;

procedure afficherTexte131();
begin
  writeln('Arrêter de construire  (Tapez la touche 17 puis entrée)');
end;

procedure afficherTexte132();
begin
  writeln('Quitter le jeu (Tapez 18 puis entrée)');
end;

//___________________________________________________________________________

procedure afficherTexte133();
begin
  writeln('Un Marchand vient à votre rencontre...');
end;

procedure afficherTexte134();
begin
  writeln('Le Marchand : -Salut jeune ami(e) ! Tu m''a l''air en difficulté !');
end;

procedure afficherTexte135();
begin
  writeln('Dur dur de devoir gérer toutes tes ressources n''est ce pas ?' );
end;

procedure afficherTexte136();
begin
  writeln('Mais ne t''inquiète pas je vais t''aider ;)' );
end;

procedure afficherTexte137();
begin
  writeln('Tu peux m''acheter des ressources ou me vendre les tiennes si tu veux.' );
end;

procedure afficherTexte138();
begin
  writeln('Acheter' );
end;

procedure afficherTexte139();
begin
  writeln('1 poisson   = 15 or         (Tapez 1 puis entrée)' );
end;

procedure afficherTexte140();
begin
  writeln('1 bois      = 15 or         (Tapez 2 puis entrée)' );
end;

procedure afficherTexte141();
begin
  writeln('1 outil     = 25 or         (Tapez 3 puis entrée)' );
end;

procedure afficherTexte142();
begin
  writeln('1 laine     = 20 or         (Tapez 4 puis entrée)' );
end;

procedure afficherTexte143();
begin
  writeln('1 pomme     = 5 or          (Tapez 5 puis entrée)' );
end;

procedure afficherTexte144();
begin
  writeln('Vendre' );
end;

procedure afficherTexte145();
begin
  writeln('1 poisson   = 8 or         (Tapez 6 puis entrée)' );
end;

procedure afficherTexte146();
begin
  writeln('1 bois      = 8 or         (Tapez 7 puis entrée)' );
end;

procedure afficherTexte147();
begin
  writeln('1 outil     = 20 or        (Tapez 8 puis entrée)' );
end;

procedure afficherTexte148();
begin
  writeln('1 laine     = 15 or        (Tapez 9 puis entrée)' );
end;

procedure afficherTexte149();
begin
  writeln('1 pomme     = 3 or         (Tapez 10 puis entrée)' );
end;


procedure afficherTexte150();
begin
  writeln('1 rhum      = 2000 or      (Tapez 11 puis entrée)' );
end;

procedure afficherTexte151();
begin
  writeln('Rappel des ressources');
end;

procedure afficherTexte152();
begin
  writeln('Aie, on dirait que tu manque d''or');
end;

procedure afficherTexte153();
begin
  writeln('Je crois que tu n''as pas cette ressource à me vendre');
end;

procedure afficherTexte154();
begin
  writeln('Arrêter les transactions içi (Tapez 12 puis entrée)' );
end;

procedure afficherTexte155();
begin
  writeln('Vous ne pouvez pas stocker d''avantage cette ressource.');
end;

//______________________________________________________________________________

procedure afficherTexte156();
begin
  writeln('Combat')
end;

procedure afficherTexte157();
begin
  writeln('Un de vos matelots accourt vers vous tout essouflé :')
end;

procedure afficherTexte158();
begin
  writeln('- Capitaine, capitaine !! Nous subissons une attaque de brigants ! Il faut nous défendre !')
end;

procedure afficherTexte159();
begin
  writeln('L''ennemi se compose de ', getPilleur(), '  pilleurs.')
end;

procedure afficherTexte160();
begin
  writeln('Vous possédez  ', getSoldat(), '  soldats.')
end;

procedure afficherTexte161();
begin
  writeln('Combien de soldats voulez-vous envoyer combattre ?')
end;

procedure afficherTexte162();
begin
  writeln('Voulez-vous acheter un soldat pour 300 or ?("o" pour oui, "n" pour non)');
end;

procedure afficherTexte163();
begin
  writeln('+ 1 soldat');
end;

procedure afficherTexte164();
begin
  writeln('Vous n''avez pas assez de soldats.');
end;

procedure afficherTexte165();
begin
  writeln('Vous envoyez ',getSoldatCombat(),' soldats au combat');
end;

procedure afficherTexte166();
begin
  writeln('L''assault est lancé !!');
end;

procedure afficherTexte167();
begin
  writeln('Vous avez gagné le combat ! Vos ressources sont sauvées.');
end;

procedure afficherTexte168();
begin
  writeln('Il vous reste ',getSoldat(),' soldats.');
end;

procedure afficherTexte169();
begin
  writeln('Vous avez perdu le combat ! Les brigands emportent beaucoup de vos ressources.');
end;

procedure afficherTexte170();
begin
  writeln('A la prochaine attaque il y aura beaucoup plus de brigants ! Attention à bien se préparer !');
end;

//______________________________________________________________________________

procedure afficherTexteSauvegarde();
begin
  writeln('Voulez-vous sauvegarder votre partie pour la reprendre la prochaine fois ? ("o" pour oui, "n" pour non)');
end;


end.
