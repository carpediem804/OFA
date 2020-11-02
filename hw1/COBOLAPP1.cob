       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOLAPP1.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT HW1 ASSIGN TO COBDD
           ORGANIZATION IS SEQUENTIAL
           ACCESS IS SEQUENTIAL.

       DATA DIVISION.
         FILE SECTION.
         FD HW1.
         01 HW1-FILE.
             05 HW1-ID   PIC 9(7).
             05 HW1-NAME PIC X(25).
             05 HW1-TEAM PIC X(20).

       WORKING-STORAGE SECTION.
       01 WS-HW1.
           05 WS-HW1-ID   PIC 9(7).
           05 WS-HW1-NAME PIC X(25).
           05 WS-HW1-TEAM PIC X(20).


       PROCEDURE DIVISION.
           OPEN OUTPUT HW1.
              MOVE 0000000 TO HW1-ID.
              MOVE 'NAME' TO HW1-NAME.
              MOVE 'TEAM NAME' TO HW1-TEAM.
           WRITE HW1-FILE
           END-WRITE.
           CLOSE HW1.
           OPEN I-O HW1.
           READ HW1
           END-READ.
              MOVE 2020315 TO HW1-ID.
              MOVE 'JO UNHEE' TO HW1-NAME.
              MOVE 'MW3-4' TO HW1-TEAM.
           REWRITE HW1-FILE
           END-REWRITE.
           CLOSE HW1.
        STOP RUN.

