unit uniteConstruire;

{$mode objfpc}{$H+}
{$codepage utf8}

interface

uses
  Classes, SysUtils, unitvariable, GestionEcran;

//Construire une maison
procedure cMaison();

//Construire une maison de citoyen
procedure cMaison_Citoyens();

//Construire une caverne de soldats
procedure cCaverne();


//Construire un centre-ville
procedure cCentre();

//Construire une chapelle
procedure cChapelle();

//Construire une cabane de bûcherons
procedure cBucheron();

//Construire une cabane de pêcheurs
procedure cPecheur();

//Construire une bergerie
procedure cBergerie();

//Construire un tisserand
procedure cTisserand();

//Construire un entrepôt
procedure cEntrepot();


//Construire une scierie
procedure cScierie();

//Construire un verger
procedure cVerger();

//Construire une distillerie
procedure cDistillerie();

//Construire une mine
procedure cMine();

//Construire une fonderie
procedure cFonderie();

//Construire une outillerie
procedure cOutilleur();



implementation

procedure cMaison();                 //Construire une maison de colons
begin
   if (getBois()>=2) then                      //si toutes les conditions sont réunies...
       begin
            setBois(getBois-2);
            setMaisons(getMaisons+1);
            deplacerCurseurXY(85,11);
            writeln('+1 Maison de Colons');            //une maison de colons est construite
            setHabitants(getHabitants+1);
            deplacerCurseurXY(85,12);
            writeln('1 colon est arrivé !')
       end
   else
     begin
       deplacerCurseurXY(85,11);
       writeln('Vous n''avez pas assez de ressources ');     //message d'erreur
     end;
end;



procedure cMaison_Citoyens();                 //Construire une maison de citoyens
begin
     if (getPoissons()>getHabitants()) then
           if ((getBois()>=1) and (getOutils()>=1) and (getMaisons()>=1)) then        //si toutes les conditions sont réunies...
               begin
                    setBois(getBois-1);
                    setOutils(getOutils-1);
                    setMaisons(getMaisons-1);
                    setMaisons_Citoyens(getMaisons_Citoyens+1);
                    deplacerCurseurXY(85,11);
                    writeln('+1 Maison de Citoyens, -1 Maison de Colons');        //une maison de citoyens est construite, une maison de colons détruite
                    setHabitants(getHabitants-1);
                    setCitoyens(getCitoyens+1);
                    deplacerCurseurXY(85,12);
                    writeln('1 citoyen est arrivé et a pris la place d''un colon ! (-1 colon)');
                    deplacerCurseurXY(85,13);
                    writeln('Vous pouvez maintenant construire de nouveaux bâtiments !');
               end
           else
               begin
                 deplacerCurseurXY(85,11);
                 writeln('Vous n''avez pas assez de ressources ');               //message d'erreur
               end
     else
         begin
             deplacerCurseurXY(85,11);
             writeln('Tous les besoins des colons ne sont pas satisfaits ');     //message d'erreur
         end;
end;



procedure cCaverne();                                    //Construire une caverne de soldats
begin
   if ((getGold()>=1000) and (getBois()>=10) and (getOutils()>=5)) then          //si toutes les conditions sont réunies...
         begin
            setGold(getGold-1000);
            setbois(getBois-10);
            setOutils(getOutils-5);
            setCaverne(getCaverne+1);
            deplacerCurseurXY(85,11);
            writeln('+1 Caverne');                                                    //une caverne est construite
            deplacerCurseurXY(85,12);
            writeln('Vous pouvez désormais accueillir et recruter des soldats !');    //possibilité d'engager des soldats débloquée
         end
   else
         begin
           deplacerCurseurXY(85,11);
           writeln('Vous n''avez pas assez de ressources ');                        //message d'erreur
         end;
end;




procedure cCentre();                 //Construire un centre-ville
begin
   if ((getGold()>=200) and (getBois()>=8) and (getOutils()>=4)) then           //si toutes les conditions sont réunies...
                         begin
                              setGold(getGold-200);
                              setBois(getBois-8);
                              setOutils(getOutils-4);
                              setCentre(getCentre+1);
                              deplacerCurseurXY(85,11);
                              writeln('+1 Centre-Ville');                       //un centre-ville est construit
                         end
   else
     begin
       deplacerCurseurXY(85,11);
       writeln('Vous n''avez pas assez de ressources ');                       //message d'erreur
     end;
end;



procedure cChapelle();                 //Construire une chapelle
begin
   if ((getGold()>=300) and (getBois()>=6) and (getOutils()>=3)) then          //si toutes les conditions sont réunies...
       begin
          setGold(getGold-300);
          setBois(getBois-6);
          setOutils(getOutils-3);
          setChapelle(getChapelle+1);
          deplacerCurseurXY(85,11);
          writeln('+1 Chapelle');                                               //une chapelle est construite
       end
   else
       begin
         deplacerCurseurXY(85,11);
         writeln('Vous n''avez pas assez de ressources ');                    //message d'erreur
       end;
end;



procedure cBucheron();                 //Construire une cabane de bûcherons
begin
   if ((getGold()>=50) and (getOutils()>=3)) then                              //si toutes les conditions sont réunies...
       begin
            setGold(getGold-50);
            setOutils(getOutils-3);
            setBucherons(getBucherons+1);
            deplacerCurseurXY(85,11);
            writeln('+1 Cabane de bûcherons');                                  //une cabane de bûcherons est construite
            deplacerCurseurXY(85,12);
            writeln('Chaque cabane de bûcheron produit 3 bois par tour');
       end
   else
       begin
           deplacerCurseurXY(85,11);
           writeln('Vous n''avez pas assez de ressources ');                  //message d'erreur
       end;
end;



procedure cPecheur();                 //Construire une cabane de pêcheurs
begin
   if ((getGold()>=100) and (getBois()>=5) and (getOutils()>=3)) then         //si toutes les conditions sont réunies...
       begin
            setGold(getGold-100);
            setBois(getBois-5);
            setOutils(getOutils-3);
            setPecheurs(getPecheurs+1);
            deplacerCurseurXY(85,11);
            writeln('+1 Cabane de pêcheurs');                                 //une cabane de pêcheurs est construite
            deplacerCurseurXY(85,12);
            writeln('Chaque cabane de pêcheurs produit 3 poissons par tour');
       end
   else
       begin
         deplacerCurseurXY(85,11);
         writeln('Vous n''avez pas assez de ressources ');                    //message d'erreur
       end;
end;



procedure cBergerie();                 //Construire une bergerie
begin
   if ((getGold()>=200) and (getBois()>=4) and (getOutils()>=2)) then          //si toutes les conditions sont réunies...
       begin
            setGold(getGold-200);
            setBois(getBois-4);
            setOutils(getOutils-2);
            setBergerie(getBergerie+1);
            deplacerCurseurXY(85,11);
            writeln('+1 Bergerie');                                            //une bergerie est construite
            deplacerCurseurXY(85,12);
            writeln('Chaque bergerie produit 3 laines par tour');
       end
   else
       begin
         deplacerCurseurXY(85,11);
         writeln('Vous n''avez pas assez de ressources ');                    //message d'erreur
       end;
end;



procedure cTisserand();                 //Construire un atelier de tisserands
begin
   if ((getGold()>=300) and (getBois()>=3) and (getOutils()>=2)) then           //si toutes les conditions sont réunies...
       begin
            setGold(getGold-300);
            setBois(getBois-3);
            setOutils(getOutils-2);
            setTisserands(getTisserands+1);
            deplacerCurseurXY(85,11);
            writeln('+1 Atelier de Tisserands');                               //un atelier de tisserands est construit
            deplacerCurseurXY(85,12);
            writeln('Chaque tisserand transforme 3 laines en tissu par tour (si c''est possible)');
       end
   else
       begin
         deplacerCurseurXY(85,11);
         writeln('Vous n''avez pas assez de ressources ');                     //message d'erreur
       end;
end;



procedure cEntrepot();                           // Construire un entrepôt
begin
   if ((getGold()>=100) and (getBois()>=10) and (getOutils()>=5)) then         //si toutes les conditions sont réunies...
        begin
            setGold(getGold-100);
            setbois(getBois-10);
            setOutils(getOutils-5);
            setEntrepot(getEntrepot+1);
            setStock(getStock+40);
            deplacerCurseurXY(85,11);
            writeln('+1 entrepot');                                            //un entrepot est construit
            deplacerCurseurXY(85,12);
            writeln('Vous pouvez désormais stocker plus de ressources !');     //possibilité de stocker plus de ressources
        end
    else
        begin
          deplacerCurseurXY(85,11);
          writeln('Vous n''avez pas assez de ressources ');                 //message d'erreur
        end;
end;



procedure cScierie();                 //Construire une scierie
begin
   if ((getGold()>=200) and (getBois()>=3) and (getOutils()>=4)) then          //si toutes les conditions sont réunies...
       begin
            setGold(getGold-200);
            setBois(getBois-3);
            setOutils(getOutils-4);
            setScierie(getScierie+1);
            deplacerCurseurXY(85,11);
            writeln('+1 Scierie');                                             //une scierie est construite
            deplacerCurseurXY(85,12);
            writeln('Chaque scierie produit 5 bois par tour si vous avez au moins une cabane de bûcherons');
       end
   else
       begin
         deplacerCurseurXY(85,11);
         writeln('Vous n''avez pas assez de ressources ');                //message d'erreur
       end;
end;



procedure cVerger();                 //Construire un verger
begin
   if ((getGold()>=200) and (getOutils()>=8)) then                           //si toutes les conditions sont réunies...
       begin
            setGold(getGold-200);
            setOutils(getOutils-8);
            setVerger(getVerger+1);
            deplacerCurseurXY(85,11);
            writeln('+1 Verger');                                           //un verger est construit
            deplacerCurseurXY(85,12);
            writeln('Chaque verger produit 20 pommes par tour');
       end
   else
       begin
          deplacerCurseurXY(85,11);
          writeln('Vous n''avez pas assez de ressources ');                 //message d'erreur
       end;
end;



procedure cDistillerie();                 //Construire une distillerie
begin
   if (getFertilite=0) then                                       //si l'île n'est pas fertile...
      begin
        deplacerCurseurXY(85,12);
        writeln('Votre île n''est pas fertile : vous ne pourrez pas avoir de rhum');     //impossible d'avoir du rhum
      end
   else
     begin
        if ((getGold()>=5000) and (getBois()>=6) and (getOutils()>=6)) then    //si toutes les conditions sont réunies...
           begin
                setGold(getGold-5000);
                setBois(getBois-6);
                setOutils(getOutils-6);
                setDistillerie(getDistillerie+1);
                deplacerCurseurXY(85,11);
                writeln('+1 Distillerie');                                   //une distillerie est construite
                deplacerCurseurXY(85,12);
                writeln('Chaque distillerie produit 1 rhum par tour ');
                deplacerCurseurXY(85,13);
                writeln('Le rhum peut être vendu très cher aux marchands !');
           end
       else
         begin
            deplacerCurseurXY(85,11);
            writeln('Vous n''avez pas assez de ressources ');               //message d'erreur
         end;
     end;
end;



procedure cMine();                 //Construire une mine
begin
   if ((getCitoyens()>0) and (getGold()>=200) and (getBois()>=3) and (getOutils()>=4)) then         //si toutes les conditions sont réunies..
       begin
            setGold(getGold-200);
            setBois(getBois-3);
            setOutils(getOutils-4);
            setMine(getMine+1);
            deplacerCurseurXY(85,11);
            writeln('+1 Mine');                                        //une mine est construite
            deplacerCurseurXY(85,12);
            writeln('Chaque mine produit 10 charbons par tour');
       end
   else
       begin
         deplacerCurseurXY(85,11);
         writeln('Vous n''avez pas assez de ressources ');                //message d'erreur
       end;
end;



procedure cFonderie();                 //Construire une fonderie
begin
   if ((getMine()>0) and (getGold()>=200) and (getBois()>=3) and (getOutils()>=5)) then             //si toutes les conditions sont réunies..
       begin
            setGold(getGold-200);
            setBois(getBois-3);
            setOutils(getOutils-5);
            setFonderie(getFonderie+1);
            deplacerCurseurXY(85,11);
            writeln('+1 Fonderie');                                         //une fonderie est construite
            deplacerCurseurXY(85,12);
            writeln('Chaque fonderie transforme 5 charbons en fer par tour (si c''est possible)');
       end
   else
       begin
         deplacerCurseurXY(85,11);
         writeln('Vous n''avez pas assez de ressources ');                   //message d'erreur
       end;
    end;



procedure cOutilleur();                 //Construire un outilleur
begin
   if ((getFonderie()>0) and (getGold()>=300) and (getBois()>=5) and (getOutils()>=6)) then            //si toutes les conditions sont réunies..
       begin
            setGold(getGold-300);
            setBois(getBois-5);
            setOutils(getOutils-6);
            setOutilleur(getOutilleur+1);
            deplacerCurseurXY(85,11);
            writeln('+1 Outilleur');                                        //un outilleur est construit
            deplacerCurseurXY(85,12);
            writeln('Chaque outilleur transforme 3 fers en outils par tour (si c''est possible)');
       end
   else
       begin
         deplacerCurseurXY(85,11);
         writeln('Vous n''avez pas assez de ressources ');                 //message d'erreur
       end;
end;


end.


