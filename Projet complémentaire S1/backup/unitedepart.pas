unit uniteDepart;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,GestionEcran, uniteCreerEcran, uniteTextes, unitRecord, unitvariable, uniteSave;

procedure debut();

implementation

procedure debut();                        // lance le jeu

var
  rep: Integer;
  rep2: String;
  p:Personnage;

begin

  EcranAccueil();                         //dessine l'ecran de démarrage

  readln(rep);
  case(rep)of
    1: begin
         deplacerCurseurXY(130,53);
         afficherTexteCharge();           //demande à l'utilisateur s'il veut charger une partie sauvegardée
         readln(rep2);
         if (rep2='o') then
            begin
            lecture(p);
            Ecran3(p);                    // dessine l'ecran de menu
            end
         else
         Ecran1(p);                       // dessine l'ecran de choix du nom
       end;

    2: begin
         effacerEcran;                    //quitte le jeu
       end;

    end;

end;

end.

