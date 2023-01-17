unit unitvariable;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;
//Initialise les variables pour le niveau Très facile
procedure initialisation1();

//Initialise les variables pour le niveau Facile
procedure initialisation2();

//Initialise les variables pour le niveau Moyen
procedure initialisation3();

//Initialise les variables pour le niveau Difficile
procedure initialisation4();

//renvoie la valeur de la variable Or
function getGold() : Integer;

//modifie la valeur de la variable Or
procedure setGold(valeur : integer);

//renvoie la valeur de la variable Bois
function getBois() : Integer;

//modifie la valeur de la variable Bois
procedure setBois(valeur : integer);

//renvoie la valeur de la variable Poissons
function getPoissons() : Integer;

//modifie la valeur de la variable Poissons
procedure setPoissons(valeur : integer);

//renvoie la valeur de la variable Laine
function getLaine() : Integer;

//modifie la valeur de la variable Laine
procedure setLaine(valeur : integer);

//renvoie la valeur de la variable Outils
function getOutils() : Integer;

//modifie la valeur de la variable Outils
procedure setOutils(valeur : integer);

//renvoie la valeur de la variable Tissu
function getTissu() : Integer;

//modifie la valeur de la variable Tissu
procedure setTissu(valeur : integer);

//renvoie la valeur de la variable Pomme
function getPomme() : Integer;

//modifie la valeur de la variable Pomme
procedure setPomme(valeur : integer);

//renvoie la valeur de la variable Rhum
function getRhum() : Integer;

//modifie la valeur de la variable Rhum
procedure setRhum(valeur : integer);

//renvoie la valeur de la variable Charbon
function getCharbon() : Integer;

//modifie la valeur de la variable Charbon
procedure setCharbon(valeur : integer);

//renvoie la valeur de la variable Fer
function getFer() : Integer;

//modifie la valeur de la variable Fer
procedure setFer(valeur : integer);

//renvoie la valeur de la variable Stock
function getStock() : Integer;

//modifie la valeur de la variable Stock
procedure setStock(valeur : integer);


//renvoie la valeur de la variable fertilité
function getFertilite() : Integer;

//modifie la valeur de la variable fertilité
procedure setFertilite(valeur : integer);


//renvoie la valeur de la variable Habitants
function getHabitants() : Integer;

//modifie la valeur de la variable Habitants
procedure setHabitants(valeur : integer);

//renvoie la valeur de la variable Citoyens
function getCitoyens() : Integer;

//modifie la valeur de la variable Citoyens
procedure setCitoyens(valeur : integer);

//renvoie la valeur de la variable soldat
function getSoldat() : Integer;

//modifie la valeur de la variable Soldat
procedure setSoldat(valeur :integer);


//renvoie la valeur de la variable Maisons
function getMaisons() : Integer;

//modifie la valeur de la variable Maisons
procedure setMaisons(valeur : integer);

//renvoie la valeur de la variable Maisons_Citoyens
function getMaisons_Citoyens() : Integer;

//modifie la valeur de la variable Maisons_Citoyens
procedure setMaisons_Citoyens(valeur : integer);

//renvoie la valeur de la variable Caverne
function getCaverne() : Integer;

//modifie la valeur de la variable Caverne
procedure setCaverne(valeur :integer);


//renvoie la valeur de la variable Centre_ville
function getCentre() : Integer;

//modifie la valeur de la variable Centre_ville
procedure setCentre(valeur : integer);

//renvoie la valeur de la variable Chapelle
function getChapelle() : Integer;

//modifie la valeur de la variable Chapelle
procedure setChapelle(valeur : integer);

//renvoie la valeur de la variable Cab_bucherons
function getBucherons() : Integer;

//modifie la valeur de la variable Cab_bucherons
procedure setBucherons(valeur : integer);

//renvoie la valeur de la variable Cab_pecheurs
function getPecheurs() : Integer;

//modifie la valeur de la variable Cab_pecheurs
procedure setPecheurs(valeur : integer);

//renvoie la valeur de la variable Bergeries
function getBergerie() : Integer;

//modifie la valeur de la variable Bergeries
procedure setBergerie(valeur : integer);

//renvoie la valeur de la variable Tisserands
function getTisserands() : Integer;

//modifie la valeur de la variable Tisserands
procedure setTisserands(valeur : integer);

//renvoie la valveur de la variable Entrepot
function getEntrepot() : Integer;

//modifie la valveur de la variable Entrepot
procedure setEntrepot(valeur : integer);



//renvoie la valeur de la variable Mine
function getMine() : Integer;

//modifie la valeur de la variable Mine
procedure setMine(valeur : integer);

//renvoie la valeur de la variable Fonderie
function getFonderie() : Integer;

//modifie la valeur de la variable Fonderie
procedure setFonderie(valeur : integer);

//renvoie la valeur de la variable Outilleur
function getOutilleur() : Integer;

//modifie la valeur de la variable Outilleur
procedure setOutilleur(valeur : integer);

//renvoie la valeur de la variable Verger
function getVerger() : Integer;

//modifie la valeur de la variable Verger
procedure setVerger(valeur : integer);

//renvoie la valeur de la variable Distillerie
function getDistillerie() : Integer;

//modifie la valeur de la variable Distillerie
procedure setDistillerie(valeur : integer);

//renvoie la valeur de la variable Scierie
function getScierie() : Integer;

//modifie la valeur de la variable Scierie
procedure setScierie(valeur : integer);


//renvoie la valeur de la variable Tour
function getTour() : Integer;

//modifie la valeur de la variable Tour
procedure setTour(valeur : integer);


//renvoie la valeur de la variable SoldatCombat
function getSoldatCombat() : Integer;

//modifie la valeur de la variable SoldatCombat
procedure setSoldatCombat(valeur :integer);

//renvoie la valeur de la variable SoldatVeut
function getSoldatVeut() : Integer;

//modifie la valeur de la variable SoldatVeut
procedure setSoldatVeut(valeur :integer);

//renvoie la valeur de la variable Pilleur
function getPilleur() : Integer;

//modifie la valeur de la variable Pilleur
procedure setPilleur(valeur :integer);

//procedure sauvegarde();


implementation

var
   gold : integer;
   bois : integer;
   poissons: integer;
   laine: integer;
   outils: integer;
   tissu: integer;
   pomme: integer;
   rhum: integer;
   charbon: integer;
   fer: integer;
   stock:integer;

   fertil: Integer;

   habitants: integer;
   citoyens: integer;
   soldat:integer;

   maisons: integer;
   maisons_citoyens : integer;
   caverne: integer;
   centre_ville: integer;
   chapelle: integer;
   cab_bucherons: integer;
   cab_pecheurs: integer;
   bergeries: integer;
   tisserands: integer;
   entrepot: integer;

   mine: integer;
   fonderie: integer;
   outilleur: integer;
   scierie: integer;
   verger: integer;
   distillerie: integer;

   tour: integer;

   soldatC: integer;
   soldatV: integer;
   pilleur: integer;



procedure initialisation1();
begin
  gold := 15000;
  bois :=50;
  poissons:=50;
  outils:=50;
  laine:=50;
  tissu:=30;
  pomme:=30;
  rhum:=0;
  charbon:=0;
  fer:=0;
  stock:=50;

  randomize;
  fertil:= random(2);

  habitants:=0;
  citoyens:=0;
  soldat:=0;

  maisons:=0;
  maisons_citoyens:=0;
  caverne:=0;
  centre_ville:=0;
  chapelle:=0;
  cab_bucherons:=0;
  cab_pecheurs:=0;
  bergeries:=0;
  tisserands:=0;
  entrepot:=0;

  mine:=0;
  fonderie:=0;
  outilleur:=0;
  scierie:=0;
  verger:=0;
  distillerie:=0;

  tour:=1;

  soldatC:=0;
  soldatV:=0;
  pilleur:=3;
end;

procedure initialisation2();
begin
  gold := 10000;
  bois :=40;
  poissons:=40;
  outils:=40;
  laine:=40;
  tissu:=25;
  pomme:=15;
  rhum:=0;
  charbon:=0;
  fer:=0;
  stock:=40;

  randomize;
  fertil:= random(2);

  habitants:=0;
  citoyens:=0;
  soldat:=0;

  maisons:=0;
  maisons_citoyens:=0;
  caverne:=0;
  centre_ville:=0;
  chapelle:=0;
  cab_bucherons:=0;
  cab_pecheurs:=0;
  bergeries:=0;
  tisserands:=0;
  entrepot:=0;

  mine:=0;
  fonderie:=0;
  outilleur:=0;
  scierie:=0;
  verger:=0;
  distillerie:=0;

  tour:=1;

  soldatC:=0;
  soldatV:=0;
  pilleur:=6;
end;

procedure initialisation3();
begin
  gold := 7500;
  bois :=30;
  poissons:=25;
  outils:=30;
  laine:=25;
  tissu:=15;
  pomme:=10;
  rhum:=0;
  charbon:=0;
  fer:=0;
  stock:=30;

  randomize;
  fertil:= random(2);

  habitants:=0;
  citoyens:=0;
  soldat:=0;

  maisons:=0;
  maisons_citoyens:=0;
  caverne:=0;
  centre_ville:=0;
  chapelle:=0;
  cab_bucherons:=0;
  cab_pecheurs:=0;
  bergeries:=0;
  tisserands:=0;
  entrepot:=0;

  mine:=0;
  fonderie:=0;
  outilleur:=0;
  scierie:=0;
  verger:=0;
  distillerie:=0;

  tour:=1;

  soldatC:=0;
  soldatV:=0;
  pilleur:=10;
end;

procedure initialisation4();
begin
  gold := 5000;
  bois :=20;
  poissons:=15;
  outils:=20;
  laine:=15;
  tissu:=10;
  pomme:=5;
  rhum:=0;
  charbon:=0;
  fer:=0;
  stock:=20;

  randomize;
  fertil:= random(2);

  habitants:=0;
  citoyens:=0;
  soldat:=0;

  maisons:=0;
  maisons_citoyens:=0;
  caverne:=0;
  centre_ville:=0;
  chapelle:=0;
  cab_bucherons:=0;
  cab_pecheurs:=0;
  bergeries:=0;
  tisserands:=0;
  entrepot:=0;

  mine:=0;
  fonderie:=0;
  outilleur:=0;
  scierie:=0;
  verger:=0;
  distillerie:=0;

  tour:=1;

  soldatC:=0;
  soldatV:=0;
  pilleur:=15;
end;

function getGold() : Integer;
begin
     getGold := gold;
end;

procedure setGold(valeur : integer);
begin
     gold := valeur;
end;

function getBois() : Integer;
begin
     getBois := bois;
end;

procedure setBois(valeur : integer);
begin
     bois := valeur;
end;

function getPoissons() : Integer;
begin
     getPoissons := poissons;
end;

procedure setPoissons(valeur : integer);
begin
     poissons := valeur;
end;

function getOutils() : Integer;
begin
     getOutils := outils;
end;

procedure setOutils(valeur : integer);
begin
     outils := valeur;
end;

function getLaine() : Integer;
begin
     getLaine := laine;
end;

procedure setLaine(valeur : integer);
begin
     laine := valeur;
end;

function getTissu() : Integer;
begin
     getTissu := tissu;
end;

procedure setTissu(valeur : integer);
begin
     tissu := valeur;
end;


function getPomme() : Integer;
begin
     getPomme := pomme;
end;

procedure setPomme(valeur : integer);
begin
     pomme := valeur;
end;

function getRhum() : Integer;
begin
     getRhum := rhum;
end;

procedure setRhum(valeur : integer);
begin
     rhum := valeur;
end;

function getCharbon() : Integer;
begin
     getCharbon := charbon;
end;

procedure setCharbon(valeur : integer);
begin
     charbon := valeur;
end;

function getFer() : Integer;
begin
     getFer := fer;
end;

procedure setFer(valeur : integer);
begin
     fer := valeur;
end;

function getStock() : Integer;
begin
     getStock:= stock;
end;

procedure setStock(valeur : integer);
begin
     stock := valeur;
end;


function getFertilite() : Integer;
begin
     getFertilite:= fertil;
end;

procedure setFertilite(valeur : integer);
begin
     fertil := valeur;
end;

function getHabitants() : Integer;
begin
     getHabitants:= habitants;
end;

procedure setHabitants(valeur : integer);
begin
     habitants := valeur;
end;


function getCitoyens() : Integer;
begin
     getCitoyens:= citoyens;
end;

procedure setCitoyens(valeur : integer);
begin
     citoyens := valeur;
end;

function getSoldat() : Integer;
begin
     getSoldat:= soldat;
end;

procedure setSoldat(valeur :integer);
begin
     soldat:=valeur;
end;


function getMaisons() : Integer;
begin
     getMaisons:= maisons;
end;

procedure setMaisons(valeur : integer);
begin
     maisons := valeur;
end;


function getMaisons_Citoyens() : Integer;
begin
     getMaisons_Citoyens:= maisons_citoyens;
end;

procedure setMaisons_Citoyens(valeur : integer);
begin
     maisons_citoyens := valeur;
end;

function getCaverne() : Integer;
begin
     getCaverne:= caverne;
end;

procedure setCaverne(valeur :integer);
begin
     caverne:=valeur;
end;


function getCentre() : Integer;
begin
     getCentre:= centre_ville;
end;

procedure setCentre(valeur : integer);
begin
     centre_ville := valeur;
end;

function getChapelle() : Integer;
begin
     getChapelle:= chapelle;
end;

procedure setChapelle(valeur : integer);
begin
     Chapelle := valeur;
end;

function getBucherons() : Integer;
begin
     getBucherons:= cab_bucherons;
end;

procedure setBucherons(valeur : integer);
begin
     cab_bucherons := valeur;
end;

function getPecheurs() : Integer;
begin
     getPecheurs:= cab_pecheurs;
end;

procedure setPecheurs(valeur : integer);
begin
     cab_pecheurs := valeur;
end;

function getBergerie() : Integer;
begin
     getBergerie:= bergeries;
end;

procedure setBergerie(valeur : integer);
begin
     bergeries := valeur;
end;

function getTisserands() : Integer;
begin
     getTisserands:= tisserands;
end;

procedure setTisserands(valeur : integer);
begin
     tisserands := valeur;
end;

function getEntrepot() : Integer;
begin
     getEntrepot:= entrepot;
end;

procedure setEntrepot(valeur : integer);
begin
     entrepot := valeur;
end;



function getScierie() : Integer;
begin
     getScierie:= scierie;
end;

procedure setScierie(valeur : integer);
begin
     scierie := valeur;
end;

function getVerger() : Integer;
begin
     getVerger:= verger;
end;

procedure setVerger(valeur : integer);
begin
     verger := valeur;
end;

function getDistillerie() : Integer;
begin
     getDistillerie:= distillerie;
end;

procedure setDistillerie(valeur : integer);
begin
     distillerie := valeur;
end;

function getMine() : Integer;
begin
     getMine:= mine;
end;

procedure setMine(valeur : integer);
begin
     mine := valeur;
end;

function getFonderie() : Integer;
begin
     getFonderie:= fonderie;
end;

procedure setFonderie(valeur : integer);
begin
     fonderie := valeur;
end;

function getOutilleur() : Integer;
begin
     getOutilleur:= outilleur;
end;

procedure setOutilleur(valeur : integer);
begin
     outilleur := valeur;
end;




function getTour() : Integer;
begin
     getTour:= tour;
end;

procedure setTour(valeur : integer);
begin
     tour := valeur;
end;



function getSoldatCombat() : Integer;
begin
     getSoldatCombat:= soldatC;
end;

procedure setSoldatCombat(valeur :integer);
begin
     soldatC:=valeur;
end;

function getSoldatVeut() : Integer;
begin
     getSoldatVeut:= soldatV;
end;

procedure setSoldatVeut(valeur :integer);
begin
     soldatV:=valeur;
end;

function getPilleur() : Integer;
begin
     getPilleur:= pilleur;
end;

procedure setPilleur(valeur :integer);
begin
     pilleur:=valeur;
end;

end.
