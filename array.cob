       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARRAY.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-BEGIN PIC 9(2).
       01 WS-END PIC 9(2).
       01 WS-TARGET PIC 9(2).
       01 WS-NUMBER PIC 9(2).
       PROCEDURE DIVISION.
           DISPLAY "Baslangic sayisi gir = "
           ACCEPT WS-BEGIN
           DISPLAY "Bitis sayisi gir = "
           ACCEPT WS-END
           DISPLAY "Hedef sayiyi gir = "
           ACCEPT WS-TARGET

           IF WS-BEGIN IS GREATER WS-END THEN
               DISPLAY 
               "Baslangic sayisi bitis sayisindan buyuk olmamali"
               STOP RUN
           END-IF.
           IF WS-TARGET IS GREATER WS-END OR NOT GREATER WS-BEGIN THEN
               DISPLAY 
               "Hedef sayi baslangic sayi ila bitis sayi arasnda olmali"
               STOP RUN
           END-IF.
           DISPLAY "-----------------------"
           PERFORM WS-END TIMES
               COMPUTE WS-NUMBER = WS-NUMBER + 1
               IF WS-NUMBER EQUAL TO WS-TARGET THEN
                   DISPLAY WS-NUMBER " - hedef sayi"
               ELSE
                   DISPLAY WS-NUMBER
               END-IF

           END-PERFORM.
       STOP RUN.
