       IDENTIFICATION DIVISION.
       PROGRAM-ID. lost.
           DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WS-MAX-NBR           PIC 9(03) VALUE 0.    
       77  WS-I     PIC 9(03) VALUE 1.
       77  WS-B        PIC 9(05) VALUE 0
       77  WS-O              PIC 9(05) VALUE 1.
       77  WS-N                           PIC 9(05).

       PROCEDURE DIVISION.
      *    Demande du nombre de valeurs que l'on veut afficher
           DISPLAY "Entrez le nombre de termes attendu : ".
           ACCEPT WS-MAX-NBR.

           IF F < 1 THEN
           DISPLAY "Valeur invalide. Le nombre doit être >= 1."
           ELSE
               DISPLAY "<inserer le nom de la suite> :"
               DISPLAY B

               IF WS-MAX-NBR >= 1
                   DISPLAY O      
                   PERFORM UNTIL I > (WS-MAX-NBR - 2)
                   COMPUTE N = B + O   
                   DISPLAY N
                   MOVE O TO B  
                   MOVE N TO O  
                   ADD 1 TO I
                   END-PERFORM
               END-IF       
           END-IF.

           STOP RUN.
