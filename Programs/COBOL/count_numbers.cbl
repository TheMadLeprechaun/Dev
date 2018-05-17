      ******************************************************************
      * Author: Jordan Hill
      * Date: 05/16/2018
      * Purpose: Counts numbers.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COUNT_NUMBERS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WS-NUMBER PIC 9(10).
       01 WS-COUNTER PIC 9(10) VALUE 0.

       PROCEDURE DIVISION.

       PERFORM GET-INPUT WITH TEST AFTER UNTIL WS-NUMBER>0 OR
       WS-NUMBER<0.

       PERFORM COUNT-NUMBERS UNTIL WS-COUNTER=WS-NUMBER.

       GOBACK.

       GET-INPUT.

           DISPLAY "Enter a number greater than zero: "
           ACCEPT WS-NUMBER.

       COUNT-NUMBERS.

           ADD 1 TO WS-COUNTER.
           DISPLAY WS-COUNTER.

       END PROGRAM COUNT_NUMBERS.
