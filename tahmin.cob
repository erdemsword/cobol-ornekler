       IDENTIFICATION DIVISION.
       PROGRAM-ID. tahmin.
       AUTHOR. Erdem.
       DATE-WRITTEN. 12 Nisan.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 tahmin_min PIC 9(1) VALUE 1.
       01 tahmin_max PIC 9(1) VALUE 9.
       01 tahmin_sayi PIC 9(1) VALUE 4.
       01 tahmin_kalan PIC 9(1) VALUE 3.
       01 tahmin_sayi_input PIC 9(1).
       PROCEDURE DIVISION.

           FIRST-CODE.
           PERFORM SECOND-CODE UNTIL tahmin_kalan < 1
               DISPLAY tahmin_kalan
               STOP RUN.
        

           SECOND-CODE.
           DISPLAY "--------------------".
           DISPLAY "Sayi tahmin et 1-9 : ".
           DISPLAY "--------------------".
           ACCEPT tahmin_sayi_input.

           IF tahmin_sayi NOT EQUAL TO tahmin_sayi_input THEN
               COMPUTE tahmin_kalan = tahmin_kalan - 1
               DISPLAY "--------------------"
               DISPLAY "Yanlis sayi tahmin ettiniz "
               DISPLAY "Kalan hak : " tahmin_kalan
               IF tahmin_kalan < 1 THEN
                   DISPLAY "--------------------"
                   DISPLAY "Tahmin hakkiniz kalmadi program sonlaniyor"
               END-IF
           ELSE
               DISPLAY "--------------------"
               DISPLAY "Dogru sayiyi tahmin ettiniz"
               DISPLAY "--------------------"
               STOP RUN
           END-IF.
