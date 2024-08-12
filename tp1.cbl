*exercice 1, aller de 1 a 100 en demandant un chiffre a l'utilisateur,
*celui-ci doit trouver le chiffre prit au hasard par l'ordi.

DATA DIVISION.
WORKING-STORAGE SECTION.

77 seed PIC 9(8) VALUE 0.
77 nbAleatoire PIC 999 VALUE 0.
77 nbEntree PIC 999 VALUE 0.

SCREEN SECTION.

1 pla-titre.
    2 BLANK SCREEN.
    2 LINE 2 COL 15 VALUE 'Jeu du plus et du moins !'.

1 pla-plus.
    2 LINE 4 COL 5 VALUE 'C''est plus !'.

1 pla-moins.
    2 LINE 4 COL 5 VALUE 'C''est moins'.

1 pla-trouve.
    2 LINE 4 COL 5 VALUE 'Bravo ! Vous avez trouve !'.

1 pls-nb.
    2 LINE 6 COL 5 VALUE 'Veuillez entrer un nombre : '.
    2 PIC zzz TO nbEntree.

PROCEDURE DIVISION.

INITIALIZE nbEntree.
MOVE FUNCTION CURRENT-DATE(9:8) TO seed.

DISPLAY pla-titre.

COMPUTE nbAleatoire = (seed * 12345678 MOD 100) + 1.

PERFORM UNTIL nbEntree = nbAleatoire
    DISPLAY pls-nb
    ACCEPT nbEntree

    IF nbEntree > nbAleatoire THEN
        DISPLAY pla-moins
    ELSE
        DISPLAY pla-plus
    END-IF
END-PERFORM.

DISPLAY pla-trouve.

STOP RUN.

