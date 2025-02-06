       IDENTIFICATION DIVISION.
       PROGRAM-ID. STACK-EXAMPLE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 STACK OCCURS 10 TIMES PIC 9(4).
       01 TOP PIC 9(4) VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM PUSH 1
           PERFORM PUSH 2
           PERFORM POP
           DISPLAY "Popped: " STACK(TOP)
           STOP RUN.

       PUSH.
           ADD 1 TO TOP
           MOVE FUNCTION NUMVAL(WS-NUM) TO STACK(TOP).

       POP.
           IF TOP = 0
               DISPLAY "Stack is empty"
           ELSE
               MOVE STACK(TOP) TO WS-NUM
               SUBTRACT 1 FROM TOP.