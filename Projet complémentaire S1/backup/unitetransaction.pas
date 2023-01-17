unit uniteTransaction;

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

//Acheter une pomme
procedure aPomme();

//Vendre un poisson
procedure vPoisson();

//Vendre du bois
procedure vBois();

//Vendre un outil
procedure vOutil();

//Vendre une laine
procedure vLaine();

//Vendre une pomme
procedure vPomme();

//Vendre un rhum
procedure vRhum();

//Affiche le niveau de bonheur des populations
procedure bonheur();

//S'effectue lors de chaque changement de tour
procedure tva(f:Integer);

implementation


procedure aPoisson();                 //Acheter du poisson
begin
   if(getStock()>getPoissons) then
       if (getGold()>=10) then
         begin
            setGold(getGold-10);
            setPoissons(getPoissons+1);
            deplacerCurseurXY(135,17);
            writeln('+1 poisson')
         end
       else
         begin
           deplacerCurseurXY(135,17);
           afficherTexte152();
         end
   else
     begin
       deplacerCurseurXY(135,18);
       afficherTexte155();
     end;

end;

procedure aBois();                 //Acheter du bois
begin
   if(getStock()>getBois) then
       if (getGold()>=10) then
         begin
           setGold(getGold-10);
           setBois(getBois+1);
           deplacerCurseurXY(135,17);
           writeln('+1 bois')
         end
       else
         begin
           deplacerCurseurXY(135,17);
           afficherTexte152();
         end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte155();
     end;
end;

procedure aOutil();                 //Acheter un outil
begin
   if(getStock()>getOutils) then
       if (getGold>=25) then
         begin
           setGold(getGold-25);
           setOutils(getOutils+1);
           deplacerCurseurXY(135,17);
           writeln('+1 outil')
         end
       else
         begin
          deplacerCurseurXY(135,17);
          afficherTexte152();
         end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte155();
     end;
end;

procedure aLaine();                 //Acheter une laine
begin
  if(getStock()>getLaine) then
       if (getGold>=20) then
         begin
            setGold(getGold-20);
            setLaine(getLaine+1);
            deplacerCurseurXY(135,17);
            writeln('+1 laine')
         end
       else
         begin
           deplacerCurseurXY(135,17);
           afficherTexte152();
         end
  else
    begin
      deplacerCurseurXY(135,17);
      afficherTexte155();
    end;
end;

procedure aPomme();                 //Acheter une pomme
begin
  if(getStock()>getPomme) then
       if (getGold>=20) then
         begin
            setGold(getGold-20);
            setPomme(getPomme+1);
            deplacerCurseurXY(135,17);
            writeln('+1 pomme')
         end
       else
         begin
           deplacerCurseurXY(135,17);
           afficherTexte152();
         end
  else
    begin
      deplacerCurseurXY(135,17);
      afficherTexte155();
    end;
end;

procedure vPoisson();               //Vendre un poisson
begin
   if (getPoissons>=1) then
     begin
         setPoissons(getPoissons-1);
         setGold(getGold+8);
         deplacerCurseurXY(135,17);
         writeln('-1 poisson')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte153();
     end;
end;

procedure vBois();                  //Vendre du bois
begin
   if (getBois>=1) then
     begin
        setBois(getBois-1);
        setGold(getGold+8);
        deplacerCurseurXY(135,17);
        writeln('-1 bois')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte153();
     end;
end;

procedure vOutil();               //Vendre un outil
begin
   if (getOutils>=1) then
     begin
       setOutils(getOutils-1);
       setGold(getGold+20);
       deplacerCurseurXY(135,17);
       writeln('-1 outil')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte153();
     end;
end;


procedure vLaine();               //Vendre une laine
begin
   if (getLaine>=1) then
     begin
       setLaine(getLaine-1);
       setGold(getGold+15);
       deplacerCurseurXY(135,17);
       writeln('-1 laine')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte153();
     end;
end;

procedure vPomme();               //Vendre une pomme
begin
   if (getTissu>=1) then
     begin
        setTissu(getTissu-1);
        setGold(getGold+3);
        deplacerCurseurXY(135,17);
        writeln('-1 pomme')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte153();
     end;
end;

procedure vRhum();               //Vendre du rhum
begin
   if (getRhum>=1) then
     begin
        setRhum(getRhum-1);
        setGold(getGold+2000);
        deplacerCurseurXY(135,17);
        writeln('-1 rhum')
     end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte153();
     end;
end;

procedure bonheur();

begin
  if (getHabitants>0) then
     begin
       if(getPoissons()>getHabitants()) then
         begin
           deplacerCurseurXY(25,11);
           afficherTexte64();
         end;

       if(getPoissons()=getHabitants()) then
         begin
           deplacerCurseurXY(25,11);
           afficherTexte65();
         end;

       if(getPoissons()<getHabitants()) then
         begin
           deplacerCurseurXY(25,11);
           afficherTexte66();
           deplacerCurseurXY(110,11);
           afficherTexte67();
         end;
     end

  else
     begin
       deplacerCurseurXY(25,11);
       afficherTexte68();
     end;


   if (getCitoyens()>0) then
     begin
       if (getPoissons()>getCitoyens()) and (getTissu()>2*getCitoyens()) and  (getPomme()>getCitoyens()) then
         begin
           deplacerCurseurXY(25,12);
            afficherTexte69();
         end;

       if (getPoissons()=getCitoyens()) and (getTissu()=2*getCitoyens()) and  (getPomme()=getCitoyens()) then
         begin
           deplacerCurseurXY(25,12);
            afficherTexte70();
         end;

       if(getPoissons()<getCitoyens()) then
         begin
          deplacerCurseurXY(25,12);
          afficherTexte71();
          deplacerCurseurXY(110,12);
          afficherTexte72();
         end

       else
         begin
           if(getTissu()<getCitoyens()) then
             begin
               deplacerCurseurXY(25,12);
               afficherTexte73();
             end

           else
             begin
               if(getPomme()<getCitoyens()) then
                 begin
                   deplacerCurseurXY(25,12);
                   afficherTexte71();
                   deplacerCurseurXY(110,12);
                   afficherTexte74();
                 end;
             end;
         end;

     end

   else
     begin
       deplacerCurseurXY(25,12);
       afficherTexte75();
     end;

   readln();

end;


procedure tva(f : Integer);
begin
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
  if (getBois()>getStock()) then
     setBois(getStock());


  if (getPecheurs()>0) then
    setPoissons(getPoissons()+ 3*getPecheurs());
  if (getPoissons()>getStock()) then
     setPoissons(getStock());


  if (getBergerie()>0) then
    setLaine(getLaine()+ 3*getBergerie());
  if (getLaine()>getStock()) then
     setLaine(getStock());


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
  if (getTissu()>getStock()) then
     setTissu(getStock());


  if (getVerger()>0) then
    begin
      setPomme(getPomme()+ 20*getVerger());
    end;
  if (getPomme()>getStock()) then
     setPomme(getStock());


  if ((getDistillerie()>0) and (f>0)) then
    begin
      setRhum(getRhum()+ 1*getDistillerie());
    end;
   if (getRhum()>getStock()) then
     setRhum(getStock());

  if (getMine()>0) then
    begin
      setCharbon(getCharbon()+ 10*getMine());
    end;
   if (getCharbon()>getStock()) then
     setCharbon(getStock());

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
   if (getFer()>getStock()) then
     setFer(getStock());

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
   if (getOutils()>getStock()) then
     setOutils(getStock());


  setTour(getTour()+1);
      end;

end.

