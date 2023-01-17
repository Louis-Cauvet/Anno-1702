unit unitRecord;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;

type Personnage = record
  nom : String;

end;

//Fonction créant un nouveau personnage dont le nom est donné en paramètres
function nouveauPersonnage(SonNom : String) : Personnage;

//renvoie le nom du personnage
function getNom(p:Personnage):string;

procedure setNom(var p:Personnage;name:string);

implementation

//Fonction créant un nouveau personnage dont le nom est donné en paramètres
function nouveauPersonnage(SonNom : String) : Personnage;
var
  p:Personnage;

begin
  p.nom := SonNom;
  nouveauPersonnage:=p;
end;

function getNom(p:Personnage):string;
begin
  getNom:=p.nom;
end;

procedure setNom(var p:Personnage;name:string);
begin
  p.nom:=name;
end;

end.


