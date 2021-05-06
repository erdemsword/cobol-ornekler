       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARRAY.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-START PIC 9(2).
       01 WS-END PIC 9(2).
       01 WS-TARGET PIC 9(2).
       01 WS-NUMBER PIC 9(2).
       01 WS-PERFORM PIC 9(2).
       PROCEDURE DIVISION.
           DISPLAY "Baslangic sayisi gir = "
           ACCEPT WS-START
           DISPLAY "Bitis sayisi gir = "
           ACCEPT WS-END
           DISPLAY "Hedef sayiyi gir = "
           ACCEPT WS-TARGET

           IF WS-START IS GREATER WS-END THEN
               DISPLAY 
               "Baslangic sayisi bitis sayisindan buyuk olmamali"
               STOP RUN
           ELSE
           IF WS-TARGET IS GREATER WS-END OR NOT GREATER WS-START THEN
               DISPLAY 
               "Hedef sayi baslangic sayi ila bitis sayi arasnda olmali"
               STOP RUN
           END-IF.
           
           DISPLAY "-----------------------"
           COMPUTE WS-PERFORM = WS-END - WS-START
           PERFORM WS-PERFORM TIMES
               COMPUTE WS-START = (WS-START) + 1
               IF WS-START EQUAL TO WS-TARGET THEN
                   DISPLAY WS-START " - hedef sayi"
               ELSE
                   DISPLAY WS-START
               END-IF

           END-PERFORM.
       STOP RUN.
