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

//Vendre du rhum
procedure vRhum();

//Affiche le niveau de bonheur des populations
procedure bonheur();

//S'effectue lors de chaque changement de tour
procedure tva(f:Integer);

implementation


procedure aPoisson();                     //Acheter du poisson
begin
   if(getStock()>getPoissons) then            //si il reste de la place dans le stock...
       if (getGold()>=10) then                //si toutes les conditions sont réunies...
         begin
            setGold(getGold-10);
            setPoissons(getPoissons+1);
            deplacerCurseurXY(135,17);
            writeln('+1 poisson')            //achat d'un poisson
         end

       else                                  //sinon...
         begin
           deplacerCurseurXY(135,17);
           afficherTexte152();              //message d'erreur
         end
   else
     begin
       deplacerCurseurXY(135,18);
       afficherTexte155();                   //message d'erreur
     end;

end;

procedure aBois();                 //Acheter du bois
begin
   if(getStock()>getBois) then                //si il reste de la place dans le stock...
       if (getGold()>=10) then                //si toutes les conditions sont réunies...
         begin
           setGold(getGold-10);
           setBois(getBois+1);
           deplacerCurseurXY(135,17);
           writeln('+1 bois')                 //achat d'un bois
         end

       else                                   //sinon...
         begin
           deplacerCurseurXY(135,17);
           afficherTexte152();                //message d'erreur
         end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte155();                     //message d'erreur
     end;
end;

procedure aOutil();                 //Acheter un outil
begin
   if(getStock()>getOutils) then                //si il reste de la place dans le stock...
       if (getGold>=25) then                    //si toutes les conditions sont réunies...
         begin
           setGold(getGold-25);
           setOutils(getOutils+1);
           deplacerCurseurXY(135,17);
           writeln('+1 outil')                  //achat d'un outil
         end

       else                                     //sinon...
         begin
          deplacerCurseurXY(135,17);
          afficherTexte152();                    //message d'erreur
         end
   else
     begin
       deplacerCurseurXY(135,17);
       afficherTexte155();                       //message d'erreur
     end;
end;

procedure aLaine();                 //Acheter une laine
begin
  if(getStock()>getLaine) then                //si il reste de la place dans le stock...
       if (getGold>=20) then                  //si toutes les conditions sont réunies...
         begin
            setGold(getGold-20);
            setLaine(getLaine+1);
            deplacerCurseurXY(135,17);
            writeln('+1 laine')              //achat d'une laine
         end

       else                                  //sinon...
         begin
           deplacerCurseurXY(135,17);
           afficherTexte152();               //message d'erreur
         end
  else
    begin
      deplacerCurseurXY(135,17);
      afficherTexte155();                    //message d'erreur
    end;
end;

procedure aPomme();                 //Acheter une pomme
begin
  if(getStock()>getPomme) then             //si il reste de la place dans le stock...
       if (getGold>=20) then               //si toutes les conditions sont réunies...
         begin
            setGold(getGold-20);
            setPomme(getPomme+1);
            deplacerCurseurXY(135,17);
            writeln('+1 pomme')            //achat d'une pomme
         end

       else                                //sinon...
         begin
           deplacerCurseurXY(135,17);
           afficherTexte152();              //message d'erreur
         end
  else
    begin
      deplacerCurseurXY(135,17);
      afficherTexte155();                   //message d'erreur
    end;
end;

procedure vPoisson();               //Vendre un poisson
begin
   if (getPoissons>=1) then             //si toutes les conditions sont réunies...
     begin
         setPoissons(getPoissons-1);
         setGold(getGold+8);
         deplacerCurseurXY(135,17);
         writeln('-1 poisson')         //vente d'un poisson
     end

   else                                //sinon...
     begin
       deplacerCurseurXY(135,17);
       afficherTexte153();             //message d'erreur
     end;
end;

procedure vBois();                  //Vendre du bois
begin
   if (getBois>=1) then                 //si toutes les conditions sont réunies...
     begin
        setBois(getBois-1);
        setGold(getGold+8);
        deplacerCurseurXY(135,17);
        writeln('-1 bois')             //vente d'un bois
     end

   else                                //sinon...
     begin
       deplacerCurseurXY(135,17);
       afficherTexte153();             //message d'erreur
     end;
end;

procedure vOutil();               //Vendre un outil
begin
   if (getOutils>=1) then            //si toutes les conditions sont réunies...
     begin
       setOutils(getOutils-1);
       setGold(getGold+20);
       deplacerCurseurXY(135,17);
       writeln('-1 outil')           //vente d'un outil
     end

   else                              //sinon...
     begin
       deplacerCurseurXY(135,17);
       afficherTexte153();           //message d'erreur
     end;
end;


procedure vLaine();               //Vendre une laine
begin
   if (getLaine>=1) then             //si toutes les conditions sont réunies...
     begin
       setLaine(getLaine-1);
       setGold(getGold+15);
       deplacerCurseurXY(135,17);
       writeln('-1 laine')            //vente d'une laine
     end

   else                               //sinon...
     begin
       deplacerCurseurXY(135,17);
       afficherTexte153();             //message d'erreur
     end;
end;

procedure vPomme();               //Vendre une pomme
begin
   if (getTissu>=1) then             //si toutes les conditions sont réunies...
     begin
        setTissu(getTissu-1);
        setGold(getGold+3);
        deplacerCurseurXY(135,17);
        writeln('-1 pomme')          //vente d'une pomme
     end

   else                              //sinon...
     begin
       deplacerCurseurXY(135,17);
       afficherTexte153();           //message d'erreur
     end;
end;

procedure vRhum();               //Vendre du rhum
begin
   if (getRhum>=1) then              //si toutes les conditions sont réunies...
     begin
        setRhum(getRhum-1);
        setGold(getGold+2000);
        deplacerCurseurXY(135,17);
        writeln('-1 rhum')            //vente d'un rhum
     end

   else                               //sinon...
     begin
       deplacerCurseurXY(135,17);
       afficherTexte153();             //message d'erreur
     end;
end;

procedure bonheur();                       //affiche le niveau de bonheur des populations

begin
  if (getHabitants>0) then                         //si il y a des colons sur l'île...
     begin
       if(getPoissons()>getHabitants()) then
         begin
           deplacerCurseurXY(25,11);
           afficherTexte64();                       //colons très contents
         end;

       if(getPoissons()=getHabitants()) then
         begin
           deplacerCurseurXY(25,11);
           afficherTexte65();                      //colons satisfaits
         end;

       if(getPoissons()<getHabitants()) then
         begin
           deplacerCurseurXY(25,11);
           afficherTexte66();                     //colons mécontents
           deplacerCurseurXY(110,11);
           afficherTexte67();
         end;
     end

  else                                            //sinon...
     begin
       deplacerCurseurXY(25,11);
       afficherTexte68();                         //message d'erreur
     end;


   if (getCitoyens()>0) then                      //si il y a des citoyens sur l'île...
     begin
       if (getPoissons()>getCitoyens()) and (getTissu()>2*getCitoyens()) and  (getPomme()>getCitoyens()) then
         begin
           deplacerCurseurXY(25,12);
            afficherTexte69();                   //citoyens très contents
         end;

       if (getPoissons()=getCitoyens()) and (getTissu()=2*getCitoyens()) and  (getPomme()=getCitoyens()) then
         begin
           deplacerCurseurXY(25,12);
            afficherTexte70();                  //citoyens satisfaits
         end;

       if(getPoissons()<getCitoyens()) then
         begin
          deplacerCurseurXY(25,12);
          afficherTexte71();                    //citoyens mécontents
          deplacerCurseurXY(110,12);
          afficherTexte72();
         end

       else
         begin
           if(getTissu()<getCitoyens()) then
             begin
               deplacerCurseurXY(25,12);
               afficherTexte73();               //citoyens mécontents
             end

           else
             begin
               if(getPomme()<getCitoyens()) then
                 begin
                   deplacerCurseurXY(25,12);
                   afficherTexte71();            //citoyens mécontents
                   deplacerCurseurXY(110,12);
                   afficherTexte74();
                 end;
             end;
         end;

     end

   else                                         //sinon...
     begin
       deplacerCurseurXY(25,12);
       afficherTexte75();                       //message d'erreur
     end;

   readln();

end;


procedure tva(f : Integer);                              //S'effectue lors de chaque changement de tour

begin
  if (getPoissons()>getHabitants()) then                   //consommations en poissons des colons
         setPoissons(getPoissons()- getHabitants())
  else
     begin
     setHabitants(getPoissons());                          //déficit en poissons
     setPoissons(0);
     end;

  if ((getPoissons()>getCitoyens()) and (getTissu()>2*getCitoyens()) and (getPomme()>getCitoyens())) then           //consommations des colons
	begin
	 setPoissons(getPoissons()- getCitoyens());
	 setTissu(getTissu()- 2*getCitoyens());
         setPomme(getPomme()-getCitoyens());
	end
  else
      begin
	    if (getPoissons()<getCitoyens()) then                //déficit en poissons
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
                     if (getTissu()<2*getCitoyens()) then           //déficit en tissu
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
                         if (getPomme()<getCitoyens()) then           //déficit en pommes
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


  if (getBucherons()>0) then                                        //production de ressources des cabanes de bûcherons
     if(getScierie()>0)then                                         //production de ressources des scieries
          setBois(getBois()+(3*getBucherons()+(5*getScierie())))
     else
        setBois(getBois()+ 3*getBucherons());
  if (getBois()>getStock()) then
     setBois(getStock());


  if (getPecheurs()>0) then                                         //production de ressources des cabanes de pêcheurs
    setPoissons(getPoissons()+ 3*getPecheurs());
  if (getPoissons()>getStock()) then
     setPoissons(getStock());


  if (getBergerie()>0) then                                         //production de ressources des bergeries
    setLaine(getLaine()+ 3*getBergerie());
  if (getLaine()>getStock()) then
     setLaine(getStock());


  if (getTisserands()>0) and (getLaine()>3*getTisserands())then         //production de ressources des tisserands
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


  if (getVerger()>0) then                                               //production de ressources des vergers
    begin
      setPomme(getPomme()+ 20*getVerger());
    end;
  if (getPomme()>getStock()) then
     setPomme(getStock());


  if ((getDistillerie()>0) and (f>0)) then                              //production de ressources des distilleries
    begin
      setRhum(getRhum()+ 1*getDistillerie());
    end;
   if (getRhum()>getStock()) then
     setRhum(getStock());

  if (getMine()>0) then                                                 //production de ressources des mines
    begin
      setCharbon(getCharbon()+ 10*getMine());
    end;
   if (getCharbon()>getStock()) then
     setCharbon(getStock());

  if (getFonderie()>0) then                                            //production de ressources des fonderies
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
    begin                                                              //production de ressources des outilleurs
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


  setTour(getTour()+1);                                                  //passage au tour suivant
      end;

end.

