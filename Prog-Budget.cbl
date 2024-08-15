       IDENTIFICATION DIVISION.
       PROGRAM-ID. Calcul_Budget_Complet.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 gains PIC 9(5) VALUE ZEROS.
       77 pertes PIC 9(5) VALUE ZEROS.
       77 total PIC S9(6) SIGN LEADING SEPARATE.

       SCREEN SECTION.
       1 plg-titre.
           2 BLANK SCREEN.
           2 LINE 2 COL 15 VALUE 'Calcul du Budget :'.

       1 plg-gains.
           2 LINE 4 COL 3 VALUE 'Quel est le montant de vos gains ?'.
           2 PIC 9(5) TO gains REQUIRED.

       1 plg-pertes.
           2 LINE 6 COL 3 VALUE 'Quel est le montant de vos pertes ?'.
           2 PIC 9(5) TO pertes REQUIRED.

       1 plg-resultat.
           2 LINE 8 COL 8 VALUE 'Votre budget total est :'.
           2 LINE 8 COL 30 PIC S9(6) FROM total.

       PROCEDURE DIVISION.
           DISPLAY plg-titre.
           
           DISPLAY plg-gains.
           ACCEPT plg-gains.

           DISPLAY plg-pertes.
           ACCEPT plg-pertes.

           COMPUTE total = gains - pertes.

           DISPLAY plg-resultat.

       STOP RUN.
