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

      *Variable Declarations
       01 WS-NUMBER PIC 9(10).
       01 WS-COUNTER PIC 9(10) VALUE 0.

       PROCEDURE DIVISION.

      *Run the 'GET-INPUT' paragraph until WS-NUMBER is greater than 0
       PERFORM GET-INPUT WITH TEST AFTER UNTIL WS-NUMBER>0.

      *Run the 'COUNT-NUMBERS' paragraph until WS-COUNTER is equal to WS-NUMBER
       PERFORM COUNT-NUMBERS UNTIL WS-COUNTER=WS-NUMBER.

       GOBACK.

      *Get input from the user and store in WS-NUMBER
       GET-INPUT.

           DISPLAY "Enter a number greater than zero: "
           ACCEPT WS-NUMBER.

      *Add 1 to WS-COUNTER amd display the results
       COUNT-NUMBERS.

           ADD 1 TO WS-COUNTER.
           DISPLAY WS-COUNTER.

       END PROGRAM COUNT_NUMBERS.
