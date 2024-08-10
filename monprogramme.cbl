       IDENTIFICATION DIVISION.
       PROGRAM-ID. myprog.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 a PIC 9.
       77 b PIC 9.

       SCREEN SECTION.
       01 pla-titre.
           05 LINE 8 COL 8 VALUE 'Entrer la valeur de a : '.
           05 PIC 9(1) TO a REQUIRED.
           05 LINE 10 COL 8 VALUE 'Entrer la valeur de b : '.
           05 PIC 9(1) TO b REQUIRED.

       PROCEDURE DIVISION.
           DISPLAY pla-titre.
           ACCEPT pla-titre.

           STOP RUN.