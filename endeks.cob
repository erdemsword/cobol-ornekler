       IDENTIFICATION DIVISION.
       
       PROGRAM-ID. endeks.
       ENVIRONMENT DIVISION.   
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 AD PIC X(025).
       01 SOYAD PIC X(015).
       01 YAS PIC 9(03).
       01 CINSIYET PIC X(05).
       01 BOY PIC 999v9.
       01 KILO PIC 99v9.
       01 ENDEKS PIC 99v9.
       PROCEDURE DIVISION.
           DISPLAY "Ad giriniz : ".
           ACCEPT AD.
           DISPLAY "Soyad giriniz : ".
           ACCEPT SOYAD.
           DISPLAY "Yas giriniz : ".
           ACCEPT YAS.
           DISPLAY "Cinsiyet giriniz : ".
           ACCEPT CINSIYET.
           DISPLAY "Boyunuzu giriniz : ".
           ACCEPT BOY.
           DISPLAY "Kilonuzu giriniz : ".
           ACCEPT KILO.
           
           MOVE FUNCTION UPPER-CASE (AD) TO AD
           MOVE FUNCTION UPPER-CASE (SOYAD) TO SOYAD
           MOVE FUNCTION UPPER-CASE (CINSIYET) TO CINSIYET
           DISPLAY " "
           DISPLAY "Ad : " AD
           DISPLAY "------".
           DISPLAY "Soyad : " SOYAD
           DISPLAY "------".
           DISPLAY "Yas : " YAS
           DISPLAY "------".
           DISPLAY "Cinsiyet : " CINSIYET
           DISPLAY "------".
           DISPLAY "Boy : " BOY
           DISPLAY "------".
           DISPLAY "Kilo : " KILO
           
           COMPUTE BOY = BOY / 100.
           COMPUTE ENDEKS = KILO / ( BOY * BOY ).
           DISPLAY "------".
           DISPLAY "Kilo endeksi : " ENDEKS
           DISPLAY "------".
           IF ENDEKS < 18.5 THEN
               DISPLAY "ENDEKS SONUC = ZAYIF"
           ELSE IF ENDEKS < 25 THEN
               DISPLAY "ENDEKS SONUC = NORMAL"
           ELSE 
               DISPLAY "ENDEKS SONUC = OBEZ"
           END-IF.

       STOP RUN.
