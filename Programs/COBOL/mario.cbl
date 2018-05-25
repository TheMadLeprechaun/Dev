      ******************************************************************
      * Author: Jordan Hill
      * Date: 2018-05-25
      * Purpose: Port mario program writen in C to COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MARIO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 HEIGHT PIC 9(2).
       01 COUNTER1 PIC 9(2).
       01 COUNTER2 PIC 9(2).

      *This is the hex constant for a carriage return
       78 CR VALUE X"0D".

       PROCEDURE DIVISION.

      *Loop for user input less than 24 and greater than 0
       PERFORM WITH TEST AFTER UNTIL HEIGHT > 0 AND HEIGHT < 24
           DISPLAY "Enter a number greater than 0 and less than 24"
           ACCEPT HEIGHT
       END-PERFORM.

       PERFORM VARYING COUNTER1 FROM 0 BY 1 UNTIL COUNTER1 = HEIGHT

           PERFORM VARYING COUNTER2 FROM 0 BY 1 UNTIL COUNTER2 > HEIGHT

               IF COUNTER1 + COUNTER2 >= HEIGHT - 1 THEN
      *            Display with no new line
                   DISPLAY "#" WITH NO ADVANCING
               ELSE
      *            Display with no new line
                   DISPLAY " " WITH NO ADVANCING
               END-IF

           END-PERFORM

      *    Carriage return for new line
           DISPLAY CR

       END-PERFORM.

       END PROGRAM MARIO.
