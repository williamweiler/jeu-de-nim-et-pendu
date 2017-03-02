


program pendu;

uses crt;

{
// Fonction lettre inclus qui pemet de voir si la lettre est dans un mot choisi.
    Fonction lettre_inclus(c:CAR;ch:CHAINE): booleen
    VAR
        res:Booleen
        i:ENTIER
    DEBUT
        res<- faux
        i <- 1
            TANTQUE (res=faux) ET (i<=longueur(ch)) FAIRE
                SI ch[i]= c ALORS
                    res <- vrai
                FINSI
                i <- i +1
            FINTANTQUE
            lettre_inclus
    FIN
// Fonction changement qui permet de chaner les lettres par d'autres
    Fonction changement(c:CAR;ch1,ch2:CHAINE):CHAINE
    VAR
        chres:CHAINE
        i:ENTIER
    DEBUT
        chres <- ch2
            POUR i DE 1 A longueur(ch1) FAIRE
                SI ch1[i] = c ALORS
                    chres[i]=c
                FINSI
            FINPOUR
        changement <- chres
    FIN
// programme principal
VAR
    test,devinette,indice:CHAINE
    i,vie,rep:ENTIER
    lettre:CAR
DEBUT
    REPETER // sert a rejouer
    vie <- 6
    ECRIRE "Jeu du Pendu"
    ECRIRE "Joueur 1."
    ECRIRE "Veuillez entrer un mot a deviner pour le Joueur 2."
    LIRE devinette
    ECRIRE "Donnez un indice pour le Joueur 2 ."
    LIRE indice
    test <- devinette
        POUR i DE 1 A longueur(devinette) FAIRE
            test[i] <- "_"
        FINPOUR
        REPETER
            ECRIRE test
            ECRIRE "Joueur 2."
            ECRIRE "Entrez une lettre."
            LIRE lettre
                SI lettre_inclus(lettre,devinette) ALORS
                    test <- changement(lettre,devinette,test)
                SINON
                    vie <- vie - 1
                FINSI
                ECRIRE (test)
                ECRIRE "Il vous reste "&vie&" essai(s).Appuyez sur ENTREE pour continuer."
            SI vie = 5 ALORS
                ECRIRE"|______"
            FINSI
            SI vie = 4 ALORS
                ECRIRE"|      "
                ECRIRE"|      "
                ECRIRE"|      "
                ECRIRE"|      "
                ECRIRE"|______"
            SI vie = 3 ALORS
                ECRIRE "Voici un indice : "&indice
                ECRIRE"_____  "
                ECRIRE"|   |  "
                ECRIRE"|      "
                ECRIRE"|      "
                ECRIRE"|      "
                ECRIRE"|______"
            FINSI
            SI vie = 2 ALORS
                ECRIRE"_____  "
                ECRIRE"|   |  "
                ECRIRE"|  _o_ "
                ECRIRE"|      "
                ECRIRE"|      "
                ECRIRE"|______"
            FINSI
            SI vie = 1 ALORS
                ECRIRE"_____  "
                ECRIRE"|   |  "
                ECRIRE"|  _o_ "
                ECRIRE"|   |  "
                ECRIRE"|      "
                ECRIRE"|______"
            FINSI
        JUSQUA (vie = 0 ) OU (test = devinette)
            SI vie = 0 ALORS
                ECRIRE "Game Over. Le mot était : "&devinette
                ECRIRE"_____  "
                ECRIRE"|   |  "
                ECRIRE"|  _o_ "
                ECRIRE"|   |  "
                ECRIRE"|  / \ "
                ECRIRE"|______"
            SINON
                ECRIRE "Victoire ! Vous avez trouver le mot !"
            FINSI
        ECRIRE "Voulez vous recommencer ? taper 1 pour oui et 0 pour non."
        LIRE rep
    JUSQUA rep = 0
FIN

}

Function lettre_inc(c:char;ch:string):boolean;


var
        res:boolean;
        i:integer;


BEGIN
    res:=false;
    i:=1;
        while (res=false) AND (i<=length(ch)) do
            BEGIN
                IF ch [i]= c THEN

                    BEGIN
                        res:=TRUE;
                    END;

                i:=i+1;

            END;

        lettre_inc:=res;

END;


function changement(c:CHAR; ch1,ch2:STRING):STRING;

var

        chres:string;

        i:integer;
begin

    chres:= ch2;

        for i:=1 to  length(ch1) do

            BEGIN

                if ch1[i]= c then

                    BEGIN

                        chres[i]:=c;
                    END;
            END;
    changement := chres
end;

VAR
    test,devinette,indice:STRING;
    i,vie,rep:INTEGER;
    lettre:CHAR;
BEGIN
    REPEAT // sert a rejouer
        clrscr;
        vie:=6;
        writeln('Jeu du Pendu');
        writeln('Joueur 1.');
        writeln('Veuillez entrer un mot a deviner pour le Joueur 2.');
        readln(devinette);
        writeln('Donnez un indice pour le Joueur 2 .');
        readln(indice);
        test:=devinette;
            FOR i:=1 TO length(devinette) DO
                begin
                    test[i]:='_'
                end;
        clrscr;
            REPEAT
                begin
                    clrscr;
                    writeln( test);
                    writeln('Joueur 2.');
                    writeln('Entrez une lettre.');
                    readln(lettre);
                        IF lettre_inc(lettre,devinette) THEN
                            begin
                                test:= changement(lettre,devinette,test);
                            end
                        ELSE
                            begin
                                vie:=vie -1;
                            end;
                        writeln(test);
                        writeln('Il vous reste ',vie,' essai(s).Appuyez sur ENTREE pour continuer.');
                    IF vie = 5 THEN
                        begin
                            writeln('|______');
                            readln;
                        end;
                    IF vie = 4 THEN
                        begin
                            writeln('|');
                            writeln('|');
                            writeln('|');
                            writeln('|');
                            writeln('|');
                            writeln('|______');
                            readln;
                        end;
                    IF vie = 3 THEN
                        begin
                            writeln('Voici un indice : ',indice);
                            writeln('_____  ');
                            writeln('|   |  ');
                            writeln('|      ');
                            writeln('|      ');
                            writeln('|      ');
                            writeln('|______');
                            readln;
                        end;
                    IF vie = 2 THEN
                        begin
                            writeln('_____');
                            writeln('|   |  ');
                            writeln('|  _o_ ');
                            writeln('|      ');
                            writeln('|      ');
                            writeln('|______');
                            readln;
                        end;
                    IF vie = 1 THEN
                        begin
                            writeln('_____');
                            writeln('|   |  ');
                            writeln('|  _o_ ');
                            writeln('|   |  ');
                            writeln('|      ');
                            writeln('|______');
                            readln;
                        end;
                    readln;
                end;
            UNTIL (vie=0) OR (test = devinette);
                IF vie=0 THEN
                    begin
                        writeln('Game Over. Le mot était :',devinette);
                        writeln('_____');
                        writeln('|   |  ');
                        writeln('|  _o_ ');
                        writeln('|   |  ');
                        writeln('|  / \ ');
                        writeln('|______');
                    end
                ELSE
                    begin
                        writeln('Victoire ! Vous avez trouver le mot !');
                    end;
        readln;
        writeln('Voulez vous recommencer ? taper 1 pour "oui" et 0 pour "non".');
        readln(rep);
    UNTIL rep=0
END.
