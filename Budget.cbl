       IDENTIFICATION DIVISION.
       PROGRAM-ID. Mon_Budget_Pertes.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 gains PIC 9(5).
       77 pertes PIC 9(5).
       77 total PIC 9(6).

       SCREEN SECTION.
       1 plg-titre.
           2 BLANK SCREEN.
           2 LINE 2 COL 15 VALUE 'Mon Budget :'.

       1 plg-pertes.
           2 LINE 4 COL 3 VALUE 'Quel est le montant de votre dépense ?'.
           2 PIC 9(5) TO pertes REQUIRED.

       1 plg-resultat.
           2 LINE 6 COL 8 VALUE 'Vous avez dépensé :'.
           2 LINE 6 COL 30 PIC 9(5) FROM pertes.

       PROCEDURE DIVISION.
           DISPLAY plg-titre.
           DISPLAY plg-pertes.
           ACCEPT plg-pertes.
           DISPLAY plg-resultat.

       STOP RUN.



      
      .       IDENTIFICATION DIVISION.
       PROGRAM-ID. Mon_Budget_Gains.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 gains PIC 9(5).
       77 total PIC 9(6).

       SCREEN SECTION.
       1 plg-titre.
           2 BLANK SCREEN.
           2 LINE 2 COL 15 VALUE 'Mon Budget :'.

       1 plg-gains.
           2 LINE 4 COL 3 VALUE 'Quel est le montant de vos gains ?'.
           2 PIC 9(5) TO gains REQUIRED.

       1 plg-resultat.
           2 LINE 6 COL 8 VALUE 'Vous avez gagné :'.
           2 LINE 6 COL 30 PIC 9(5) FROM gains.

       PROCEDURE DIVISION.
           DISPLAY plg-titre.
           DISPLAY plg-gains.
           ACCEPT plg-gains.
           DISPLAY plg-resultat.

       STOP RUN.
