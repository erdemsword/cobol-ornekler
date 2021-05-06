       IDENTIFICATION DIVISION.
       PROGRAM-ID. OY.
       AUTHOR. Erdem.
       DATE-WRITTEN. 7 Mayis.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 oy_kimlik_no PIC 9(11).
       01 oy_dogum_yili PIC 9(4).
       01 oy_telefon_no PIC 9(10).
       01 oy_sms_kod PIC 9(4).
       01 oy_input PIC X(30).

       01 vatandas_bilgileri.
           02 vatandas_ad_soyad PIC X(50) VALUE "Erdem KILIC".
           02 vatandas_kimlik_no PIC 9(11) VALUE 21521454122.
           02 vatandas_dogum_yili PIC 9(4) VALUE 1997.
           02 vatandas_telefon_no PIC 9(10) VALUE 5241451245.
           02 vatandas_son_sms_kod PIC 9(4) VALUE 1111.
       PROCEDURE DIVISION.
       DISPLAY "--------------------------------".
       DISPLAY "Oy verme ekranina hosgeldiniz...".
       DISPLAY "--------------------------------".
       
       DISPLAY "Kimlik numaranizi giriniz : ".
       ACCEPT oy_kimlik_no.
       IF oy_kimlik_no = vatandas_kimlik_no THEN
           DISPLAY "Merhaba " vatandas_ad_soyad
       ELSE
           DISPLAY "Kimlik numarasi eslesemedi ana menuye donuluyor"
           STOP RUN
       END-IF.
       DISPLAY "Dogum yilinizi giriniz : ".
       ACCEPT oy_dogum_yili.
       IF oy_dogum_yili = vatandas_dogum_yili THEN
           DISPLAY "Dogum yili eslesti"
       ELSE
           DISPLAY "Dogum yili eslesemedi ana menuye donuluyor"
           STOP RUN
       END-IF.
       DISPLAY "Cep telefon numaranizi giriniz (basinda 0 olmadan): ".
       ACCEPT oy_telefon_no.
       IF oy_telefon_no = vatandas_telefon_no THEN
           DISPLAY "Cep telefonuna kod gonderildi"
       ELSE
           DISPLAY "Telefon numarasi eslesemedi ana menuye donuluyor"
           STOP RUN
       END-IF.
       DISPLAY "Cep telefonunuza gelen sms kodunu giriniz : ".
       ACCEPT oy_sms_kod.
       IF oy_sms_kod = vatandas_son_sms_kod THEN
           DISPLAY "SMS kodu eslesti"
       ELSE
           DISPLAY "SMS kodu eslesemedi ana menuye donuluyor"
           STOP RUN
       END-IF.
       DISPLAY " "
       DISPLAY " "
       DISPLAY "-------------------------------"
       DISPLAY "Parti 1'e oy vermek icin 1 yaz."
       DISPLAY "Parti 2'e oy vermek icin 2 yaz."
       DISPLAY "Parti 3'e oy vermek icin 3 yaz."
       DISPLAY "-------------------------------"
       ACCEPT oy_input.
       IF oy_input = "1" THEN
           DISPLAY "Parti 1'e oy verme basarili"
       ELSE IF oy_input = "2" THEN
           DISPLAY "Parti 2'e oy verme basarili"
       ELSE IF oy_input = "3" THEN
           DISPLAY "Parti 3'e oy verme basarili"
       ELSE
           DISPLAY "Oy verme basarisiz"
       STOP RUN.
       
