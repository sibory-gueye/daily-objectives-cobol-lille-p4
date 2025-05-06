       IDENTIFICATION DIVISION.
       PROGRAM-ID. lost.
           DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 F           PIC 9(03) VALUE 0.    
       77 I     PIC 9(03) VALUE 1.
       77 B        PIC a9(05) VALUE 0
       77 O              PIC 9(05) VAL 1
       77 N                           PIC 9(05).

       PROCEDURE DIVISION.
           DISPLAY "Entrez le nombre de termes attendu : ".
           ACCEPT F

       IF F < 1 THEN
       DISPLAY "Valeur invalide. Le nombre doit être >= 1."
           ELSE
               DISPLAY "<inserer le nom de la suite> :"
               DISPLAY B

       IF F > 1
        DISPLAY O      PERFORM UNTIL I > (F - 2)
       COMPUTE N = B + O   DISPLAY N
       MOVE O TO B  MOVE N TO O  ADD 1 TO I
       END-IF       END-IF.

           STOP RUN.
