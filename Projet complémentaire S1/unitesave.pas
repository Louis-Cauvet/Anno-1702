unit uniteSave;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, unitvariable, unitRecord;

//sauvegarder une partie
procedure sauvegarde(p:Personnage);
//charger une partie sauvegardée
procedure lecture(var p:Personnage);

implementation

procedure sauvegarde(p:Personnage);                    //sauvegarder une partie

var
   fichier: TextFile;

begin
 AssignFile(fichier,'Save.txt');
 Rewrite(fichier);
 writeln(fichier,getNom(p));
 writeln(fichier,getGold());
 writeln(fichier,getBois());
 writeln(fichier,getPoissons());
 writeln(fichier,getLaine());
 writeln(fichier,getOutils());
 writeln(fichier,getTissu());
 writeln(fichier,getPomme());
 writeln(fichier,getRhum());
 writeln(fichier,getCharbon());
 writeln(fichier,getFer());
 writeln(fichier,getStock());
 writeln(fichier,getFertilite());
 writeln(fichier,getHabitants());
 writeln(fichier,getCitoyens());
 writeln(fichier,getSoldat());
 writeln(fichier,getMaisons());
 writeln(fichier,getMaisons_Citoyens());
 writeln(fichier,getCaverne());
 writeln(fichier,getCentre());
 writeln(fichier,getChapelle());
 writeln(fichier,getBucherons());
 writeln(fichier,getPecheurs());
 writeln(fichier,getBergerie());
 writeln(fichier,getTisserands());
 writeln(fichier,getEntrepot());
 writeln(fichier,getMine());
 writeln(fichier,getFonderie());
 writeln(fichier,getOutilleur());
 writeln(fichier,getScierie());
 writeln(fichier,getVerger());
 writeln(fichier,getDistillerie());
 writeln(fichier,getTour());
 writeln(fichier,getPilleur());

 closeFile(fichier);
end;


procedure lecture(var p:Personnage);               //charger une partie sauvegardée

var
   fichier: TextFile;
   n:String;
   g:integer;
begin
  AssignFile(fichier,'Save.txt');
  reset(fichier);

  readln(fichier,n);
  p:=nouveauPersonnage(n);
  readln(fichier,g);
  setGold(g);
  readln(fichier,g);
  setBois(g);
  readln(fichier,g);
  setPoissons(g);
  readln(fichier,g);
  setLaine(g);
  readln(fichier,g);
  setOutils(g);
  readln(fichier,g);
  setTissu(g);
  readln(fichier,g);
  setPomme(g);
  readln(fichier,g);
  setRhum(g);
  readln(fichier,g);
  setCharbon(g);
  readln(fichier,g);
  setFer(g);
  readln(fichier,g);
  setStock(g);
  readln(fichier,g);
  setFertilite(g);
  readln(fichier,g);
  setHabitants(g);
  readln(fichier,g);
  setCitoyens(g);
  readln(fichier,g);
  setSoldat(g);
  readln(fichier,g);
  setMaisons(g);
  readln(fichier,g);
  setMaisons_Citoyens(g);
  readln(fichier,g);
  setCaverne(g);
  readln(fichier,g);
  setCentre(g);
  readln(fichier,g);
  setChapelle(g);
  readln(fichier,g);
  setBucherons(g);
  readln(fichier,g);
  setPecheurs(g);
  readln(fichier,g);
  setBergerie(g);
  readln(fichier,g);
  setTisserands(g);
  readln(fichier,g);
  setEntrepot(g);
  readln(fichier,g);
  setMine(g);
  readln(fichier,g);
  setFonderie(g);
  readln(fichier,g);
  setOutilleur(g);
  readln(fichier,g);
  setScierie(g);
  readln(fichier,g);
  setVerger(g);
  readln(fichier,g);
  setDistillerie(g);
  readln(fichier,g);
  setTour(g);
  readln(fichier,g);
  setPilleur(g);

  closeFile(fichier);
end;

end.

