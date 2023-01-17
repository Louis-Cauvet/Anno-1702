unit uniteBonheur;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,unitvariable, uniteTextes, GestionEcran;

//Acheter du poisson
procedure aPoisson();

//Acheter du bois
procedure aBois();

//Acheter un outil
procedure aOutil();

//Acheter une laine
procedure aLaine();

//Acheter un tissu
procedure aTissu();

//Vendre un poisson
procedure vPoisson();

//Vendre du bois
procedure vBois();

//Vendre un outil
procedure vOutil();

//Vendre une laine
procedure vLaine();

//Vendre un tissu
procedure vTissu();


//Vendre un rhum
procedure vRhum();


//S'effectue lors de chaque changement de tour
procedure tva();

//Affiche le niveau de bonheur des populations
procedure bonheur();

implementation

var
  pois,boi,ou,lai,tis,arg,rum: Integer;


procedure aPoisson();                 //Acheter du poisson
begin
   if (getGold()>=10) then
     begin
        arg:=getGold-10;
        setGold(arg);
        pois:=getPoissons+1;
        setPoissons(pois);
        deplacerCurseurXY(135,17);
        writeln('+1 poisson')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte84();
     end;
end;

procedure aBois();                 //Acheter du bois
begin
   if (getGold()>=10) then
     begin
       arg:=getGold-10;
       setGold(arg);
       boi:=getBois+1;
       setBois(boi);
       deplacerCurseurXY(135,17);
       writeln('+1 bois')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte84();
     end;
end;

procedure aOutil();                 //Acheter un outil
begin
   if (getGold>=25) then
     begin
       arg:=getGold-25;
       setGold(arg);
       ou:=getOutils+1;
       setOutils(ou);
       deplacerCurseurXY(135,17);
       writeln('+1 outil')
     end
   else
     begin
      deplacerCurseurXY(135,17);
      afficherTexte84();
     end;
end;

procedure aLaine();                 //Acheter une laine
begin
   if (getGold>=20) then
     begin
        arg:=getGold-20;
        setGold(arg);
        lai:=getLaine+1;
        setLaine(lai);
        deplacerCurseurXY(135,17);
        writeln('+1 laine')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte84();
     end;
end;

procedure aTissu();                 //Acheter un tissu
begin
   if (getGold>=20) then
     begin
        arg:=getGold-20;
        setGold(arg);
        tis:=getTissu+1;
        setTissu(tis);
        deplacerCurseurXY(135,17);
        writeln('+1 tissu')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte84();
     end;
end;

procedure vPoisson();               //Vendre un poisson
begin
   if (getPoissons>=1) then
     begin
         pois:=getPoissons-1;
         setPoissons(pois);
         arg:=getGold+8;
         setGold(arg);
         deplacerCurseurXY(135,17);
         writeln('-1 poisson')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte85();
     end;
end;

procedure vBois();                  //Vendre du bois
begin
   if (getBois>=1) then
     begin
        boi:=getBois-1;
        setBois(boi);
        arg:=getGold+8;
        setGold(arg);
        deplacerCurseurXY(135,17);
        writeln('-1 bois')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte85();
     end;
end;

procedure vOutil();               //Vendre un outil
begin
   if (getOutils>=1) then
     begin
       ou:=getOutils-1;
       setOutils(ou);
       arg:=getGold+20;
       setGold(arg);
       deplacerCurseurXY(135,17);
       writeln('-1 outil')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte85();
     end;
end;


procedure vLaine();               //Vendre une laine
begin
   if (getLaine>=1) then
     begin
       lai:=getLaine-1;
       setLaine(lai);
       arg:=getGold+15;
       setGold(arg);
       deplacerCurseurXY(135,17);
       writeln('-1 laine')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte85();
     end;
end;

procedure vTissu();               //Vendre un tissu
begin
   if (getTissu>=1) then
     begin
        tis:=getTissu-1;
        setTissu(tis);
        arg:=getGold+15;
        setGold(arg);
        deplacerCurseurXY(135,17);
        writeln('-1 tissu')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte85();
     end;
end;

procedure vRhum();               //Vendre un tissu
begin
   if (getRhum>=1) then
     begin
        rum:=getRhum-1;
        setRhum(rum);
        arg:=getGold+2000;
        setGold(arg);
        deplacerCurseurXY(135,17);
        writeln('-1 rhum')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte85();
     end;
end;


procedure tva();
begin
   {
   if (getCitoyens()>0) then
     begin
       if (getPoissons()>getCitoyens()) and (getTissu()>2*getCitoyens()) and  (getPomme()>getCitoyens()) then
       begin
           deplacerCurseurXY(200,170);
           writeln('Les citoyens sont tres contents');
           end;
       if (getPoissons()=getCitoyens()) and (getTissu()=2*getCitoyens()) and  (getPomme()=getCitoyens()) then
          begin
           deplacerCurseurXY(201,171);
           writeln('Les citoyens sont satisfaits');
           end;
       if (getPoissons()<getCitoyens()) and (getTissu()<2*getCitoyens()) and  (getPomme()=getCitoyens()) then
          begin
           deplacerCurseurXY(201,171);
           writeln('Les citoyens sont satisfaits');
           end;
       if (getPoissons()<getCitoyens()) and (getTissu()=2*getCitoyens()) and  (getPomme()<getCitoyens()) then
          begin
           deplacerCurseurXY(201,171);
           writeln('Les citoyens sont satisfaits');
           end;
       if (getPoissons()=getCitoyens()) and (getTissu()<2*getCitoyens()) and  (getPomme()<getCitoyens()) then
          begin
           deplacerCurseurXY(201,171);
           writeln('Les citoyens sont satisfaits');
           end;
       if (getPoissons()=getCitoyens()) and (getTissu()=2*getCitoyens()) and  (getPomme()<getCitoyens()) then
          begin
           deplacerCurseurXY(201,171);
           writeln('Les citoyens sont satisfaits');
           end;
       if (getPoissons()=getCitoyens()) and (getTissu()<2*getCitoyens()) and  (getPomme()=getCitoyens()) then
          begin
           deplacerCurseurXY(201,171);
           writeln('Les citoyens sont satisfaits');
           end;
       if (getPoissons()<getCitoyens()) and (getTissu()=2*getCitoyens()) and  (getPomme()=getCitoyens()) then
          begin
           deplacerCurseurXY(201,171);
           writeln('Les citoyens sont satisfaits');
           end;
       if(getPoissons()<getCitoyens()) then
         begin
          deplacerCurseurXY(201,171);
          writeln('Les citoyens sont mecontent.',getCitoyens()-getPoissons(), ' citoyens sont mort. Manque de poissons');
         end;
        if(getTissu()<getCitoyens()) then
         begin
          deplacerCurseurXY(201,171);
          writeln('Les citoyens sont mecontent.',getCitoyens()-getTissu(), ' citoyens sont mort. Manque de tissu');
        end;
         if(getPomme()<getCitoyens()) then
          begin
           deplacerCurseurXY(201,171);
            writeln('Les citoyens sont mecontent.',getCitoyens()-getPomme(), ' citoyens sont mort. Manque de pomme');
         end;
       end; }
  if (getPoissons()>getHabitants()) then
         setPoissons(getPoissons()- getHabitants())
  else
     begin
     setHabitants(getPoissons());
     setPoissons(0);
     end;

  if ((getPoissons()>getCitoyens()) and (getTissu()>2*getCitoyens()) and (getPomme()>getCitoyens())) then
	begin
	 setPoissons(getPoissons()- getCitoyens());
	 setTissu(getTissu()- 2*getCitoyens());
         setPomme(getPomme()-getCitoyens());
	end
  else
      begin
	    if (getPoissons()<getCitoyens()) then
 	        begin
 	         setCitoyens(getPoissons());
 	         setPoissons(0);
 	         setTissu(getTissu()-2*getCitoyens());
                 if (getTissu()<0) then
                     setTissu(0);
                 setPomme(getPomme()- getCitoyens());
                 if (getPomme()<0) then
                     setPomme(0);
 	        end

            else
                begin
                     if (getTissu()<2*getCitoyens()) then
 	                  begin
 	                       setCitoyens(getTissu());
 	                       setTissu(0);
 	                       setPoissons(getPoissons()- getCitoyens());
                               if (getPoissons()<0) then
                                   setPoissons(0);
                               setPomme(getPomme()- getCitoyens());
                               if (getPomme()<0) then
                                   setPomme(0);
 	                  end

                     else
                         if (getPomme()<getCitoyens()) then
 	                      begin
 	                           setCitoyens(getPomme());
 	                           setPomme(0);
 	                           setPoissons(getPoissons()- getCitoyens());
                                   if (getPoissons()<0) then
                                        setPoissons(0);
                                        setTissu(getTissu()-2*getCitoyens());
                                   if (getTissu()<0) then
                                        setTissu(0);
 	                      end

            end
      end;


  if (getBucherons()>0) then
     if(getScierie()>0)then
        setBois(getBois()+(3*getBucherons()+(5*getScierie())))
     else
        setBois(getBois()+ 3*getBucherons());

  if (getPecheurs()>0) then
    setPoissons(getPoissons()+ 3*getPecheurs());

  if (getBergerie()>0) then
    setLaine(getLaine()+ 3*getBergerie());

  if (getTisserands()>0) and (getLaine()>3*getTisserands())then
    begin
      setTissu(getTissu()+ 3*getTisserands());
      setLaine(getLaine()- 3*getTisserands());
    end
  else
    if (getTisserands()>0) then
      begin
        setTissu(getTissu()+ getLaine());
        setLaine(0);
      end;

  if (getVerger()>0) then
    begin
      setPomme(getPomme()+ 20*getVerger());
    end;

  if (getDistillerie()>0) then
    begin
      setRhum(getRhum()+ 1*getDistillerie());
    end;

  if (getMine()>0) then
    begin
      setCharbon(getCharbon()+ 10*getMine());
    end;

  if (getFonderie()>0) then
    begin
      if (getCharbon()>(5*getFonderie())) then
        begin
             setFer(getFer()+ 5*getFonderie());
             setCharbon(getCharbon()- 5*getFonderie());
        end
      else
          begin
           setFer(getFer()+getCharbon());
           setCharbon(0);
          end;
    end;

  if (getOutilleur()>0) then
    begin
      if (getFer()>(3*getOutilleur())) then
        begin
             setOutils(getOutils()+ 3*getOutilleur());
             setFer(getFer()- 3*getOutilleur());
        end
      else
          begin
               setOutils(getOutils()+getFer());
               setFer(0);
          end;
    end;

  setTour(getTour()+1);

  end;

procedure bonheur();

begin
  if (getHabitants>0) then
     begin
       if(getPoissons()>getHabitants()) then
         begin
           deplacerCurseurXY(25,11);
           writeln('Les colons sont très contents, leurs besoins ont tous été satisfaits.');
         end;

       if(getPoissons()=getHabitants()) then
         begin
           deplacerCurseurXY(25,11);
           writeln('Les colons sont satisfaits, mais il va falloir se réapprovisionner en ressources !');
         end;

       if(getPoissons()<getHabitants()) then
         begin
           deplacerCurseurXY(25,11);
           writeln('Les colons sont mécontents car certains de leurs besoins n'' ont pas été comblés : ',  getHabitants()-getPoissons(), ' colons sont morts par manque de poissons');
         end;
     end

  else
     begin
       deplacerCurseurXY(25,11);
       writeln('Il n''y a pas encore de colons sur votre île');
     end;


   if (getCitoyens()>0) then
     begin
       if (getPoissons()>getCitoyens()) and (getTissu()>2*getCitoyens()) and  (getPomme()>getCitoyens()) then
         begin
           deplacerCurseurXY(25,12);
           writeln('Les citoyens sont très contents, leurs besoins ont tous été satisfaits.');
         end;

       if (getPoissons()=getCitoyens()) and (getTissu()=2*getCitoyens()) and  (getPomme()=getCitoyens()) then
         begin
           deplacerCurseurXY(25,12);
           writeln('Les citoyens sont satisfaits, mais il va falloir se réapprovisionner en ressources !');
         end;

       if(getPoissons()<getCitoyens()) then
         begin
       deplacerCurseurXY(25,12);
       writeln('Les citoyens sont mecontents car certains de leurs besoins n''ont pas été comblés : ',getCitoyens()-getPoissons(), ' citoyens sont morts par manque de poissons');
         end

       else
       begin
        if(getTissu()<getCitoyens()) then
         begin
          deplacerCurseurXY(25,12);
          writeln('Les citoyens sont mecontents car certains de leurs besoins n''ont pas été comblés : il n''y a plus de tissu !');
         end

         else
          begin
           if(getPomme()<getCitoyens()) then
            begin
             deplacerCurseurXY(25,12);
              writeln('Les citoyens sont mecontents car certains de leurs besoins n''ont pas été comblés : ',getCitoyens()-getPomme(), ' citoyens sont morts par manque de pommes');
            end;
          end;
       end;

     end

   else
     begin
       deplacerCurseurXY(25,12);
       writeln('Il n''y a pas encore de citoyens sur votre île');
     end;

   readln();

end;

end.

