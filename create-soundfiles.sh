#!/bin/bash

generate () {
    aws polly synthesize-speech \
        --engine neural \
        --output-format mp3 \
        --voice-id Brian \
        --text-type ssml \
        --text "<speak><amazon:effect name=\"drc\"><prosody rate=\"110%\">$1</prosody></amazon:effect></speak>" \
        "soundfiles/mp3/$2"
}

mkdir -p soundfiles/mp3
mkdir -p soundfiles/advert

# generate "Oh, eine neue Karte! Verwende die Lautstärke Tasten um einen Ordner für die Karte auszuwählen. Drücke die Pause Taste um die Auswahl zu speichern." 0300_new_tag.mp3
generate "Great, a new card! Use the volume buttons to select a folder to link the card with and confirm with the pause button." 0300_new_tag.mp3

# generate "OK, ich habe die Karte mit dem Ordner verknüpft. Wähle nun mit den Lautstärke Tasten den Wiedergabemodus aus." 0310.mp3
generate "OK, I've linked that folder with the card. Now select the playback mode with the volume buttons." 0310.mp3

# generate "Hörspielmodus: Eine zufällige Datei aus dem Ordner wiedergeben." 0311_mode_random_episode.mp3
generate "Radio mode. Play one random track from the folder." 0311_mode_random_episode.mp3

# generate "Albummodus: Den kompletten Ordner wiedergeben." 0312_mode_album.mp3
generate "Album mode. Play the complete folder." 0312_mode_album.mp3

# generate "Party Modus: Ordner zufällig wiedergeben." 0313_mode_party.mp3
generate "Party mode. Play the complete folder in random order." 0313_mode_party.mp3

# generate "Einzel Modus: Eine bestimmte Datei im Ordner wiedergeben." 0314_mode_single_track.mp3
generate "Single mode. Play one specific track from the folder." 0314_mode_single_track.mp3

# generate "Hörbuch Modus: Einen Ordner wiedergeben und den Fortschritt speichern." 0315_mode_audio_book.mp3
generate "Audiobook mode. Play the complete folder and save progress." 0315_mode_audio_book.mp3

# generate "Admin Funktionen." 0316_admin.mp3
generate "Admin functions." 0316_admin.mp3

# generate "OK, wähle nun bitte die Datei mit den Lautstärke Tasten aus. " 0320_select_file.mp3
generate "OK, now select the track with the volume buttons." 0320_select_file.mp3

# generate "Soll ich vor einer Datei jeweils die Nummer ansagen? Du kannst jederzeit durch einen langen Druck auf die Pause Taste die aktuelle Nummer abfragen." 0330.mp3
generate "Should I announce the track numbers before playing?" 0330.mp3

# generate "Nein, Nummer nicht ansagen." 0331.mp3
generate "No, don't announce the track numbers." 0331.mp3

# generate "Ja, Nummer ansagen." 0332.mp3
generate "Yes, announce the track numbers." 0332.mp3

# generate "OK. Ich habe die Karte konfiguriert." 0400_ok.mp3
generate "OK, I've configured the card." 0400_ok.mp3

# generate "Oh weh! Das hat leider nicht geklappt!." 0401_error.mp3
generate "Oopsy daisy! Unfortunately that didn't work." 0401_error.mp3

# generate "Bitte lege die zu löschende Karte auf! Zum Abbrechen einfach eine der Lautstärke Tasten drücken!" 0800_reset_tag.mp3
generate "Place the card to be deleted on the box. To cancel, press one of the volume buttons." 0800_reset_tag.mp3

# generate "OK, du kannst den Tag nun wieder neu konfigurieren." 0801_reset_tag_ok.mp3
generate "OK, now you can configure the card again." 0801_reset_tag_ok.mp3

# generate "OK, ich habe den Vorgang abgebrochen." 0802_reset_aborted.mp3
generate "OK, cancelled." 0802_reset_aborted.mp3

# generate "Reset wurde durchgeführt!" 0999_reset_ok.mp3
generate "Reset completed." 0999_reset_ok.mp3

# require 'humanize'
# File.open('numbers', 'w') do |f|
#   (1..250).each do |n|
#     fn = sprintf('%04d', n) + '.mp3'
#     f.puts "generate \"#{n.humanize}\" #{fn}"
#     f.puts "cp soundfiles/mp3/#{fn} soundfiles/advert"
#     f.puts
#   end
# end

generate "one" 0001.mp3
cp soundfiles/mp3/0001.mp3 soundfiles/advert

generate "two" 0002.mp3
cp soundfiles/mp3/0002.mp3 soundfiles/advert

generate "three" 0003.mp3
cp soundfiles/mp3/0003.mp3 soundfiles/advert

generate "four" 0004.mp3
cp soundfiles/mp3/0004.mp3 soundfiles/advert

generate "five" 0005.mp3
cp soundfiles/mp3/0005.mp3 soundfiles/advert

generate "six" 0006.mp3
cp soundfiles/mp3/0006.mp3 soundfiles/advert

generate "seven" 0007.mp3
cp soundfiles/mp3/0007.mp3 soundfiles/advert

generate "eight" 0008.mp3
cp soundfiles/mp3/0008.mp3 soundfiles/advert

generate "nine" 0009.mp3
cp soundfiles/mp3/0009.mp3 soundfiles/advert

generate "ten" 0010.mp3
cp soundfiles/mp3/0010.mp3 soundfiles/advert

generate "eleven" 0011.mp3
cp soundfiles/mp3/0011.mp3 soundfiles/advert

generate "twelve" 0012.mp3
cp soundfiles/mp3/0012.mp3 soundfiles/advert

generate "thirteen" 0013.mp3
cp soundfiles/mp3/0013.mp3 soundfiles/advert

generate "fourteen" 0014.mp3
cp soundfiles/mp3/0014.mp3 soundfiles/advert

generate "fifteen" 0015.mp3
cp soundfiles/mp3/0015.mp3 soundfiles/advert

generate "sixteen" 0016.mp3
cp soundfiles/mp3/0016.mp3 soundfiles/advert

generate "seventeen" 0017.mp3
cp soundfiles/mp3/0017.mp3 soundfiles/advert

generate "eighteen" 0018.mp3
cp soundfiles/mp3/0018.mp3 soundfiles/advert

generate "nineteen" 0019.mp3
cp soundfiles/mp3/0019.mp3 soundfiles/advert

generate "twenty" 0020.mp3
cp soundfiles/mp3/0020.mp3 soundfiles/advert

generate "twenty-one" 0021.mp3
cp soundfiles/mp3/0021.mp3 soundfiles/advert

generate "twenty-two" 0022.mp3
cp soundfiles/mp3/0022.mp3 soundfiles/advert

generate "twenty-three" 0023.mp3
cp soundfiles/mp3/0023.mp3 soundfiles/advert

generate "twenty-four" 0024.mp3
cp soundfiles/mp3/0024.mp3 soundfiles/advert

generate "twenty-five" 0025.mp3
cp soundfiles/mp3/0025.mp3 soundfiles/advert

generate "twenty-six" 0026.mp3
cp soundfiles/mp3/0026.mp3 soundfiles/advert

generate "twenty-seven" 0027.mp3
cp soundfiles/mp3/0027.mp3 soundfiles/advert

generate "twenty-eight" 0028.mp3
cp soundfiles/mp3/0028.mp3 soundfiles/advert

generate "twenty-nine" 0029.mp3
cp soundfiles/mp3/0029.mp3 soundfiles/advert

generate "thirty" 0030.mp3
cp soundfiles/mp3/0030.mp3 soundfiles/advert

generate "thirty-one" 0031.mp3
cp soundfiles/mp3/0031.mp3 soundfiles/advert

generate "thirty-two" 0032.mp3
cp soundfiles/mp3/0032.mp3 soundfiles/advert

generate "thirty-three" 0033.mp3
cp soundfiles/mp3/0033.mp3 soundfiles/advert

generate "thirty-four" 0034.mp3
cp soundfiles/mp3/0034.mp3 soundfiles/advert

generate "thirty-five" 0035.mp3
cp soundfiles/mp3/0035.mp3 soundfiles/advert

generate "thirty-six" 0036.mp3
cp soundfiles/mp3/0036.mp3 soundfiles/advert

generate "thirty-seven" 0037.mp3
cp soundfiles/mp3/0037.mp3 soundfiles/advert

generate "thirty-eight" 0038.mp3
cp soundfiles/mp3/0038.mp3 soundfiles/advert

generate "thirty-nine" 0039.mp3
cp soundfiles/mp3/0039.mp3 soundfiles/advert

generate "forty" 0040.mp3
cp soundfiles/mp3/0040.mp3 soundfiles/advert

generate "forty-one" 0041.mp3
cp soundfiles/mp3/0041.mp3 soundfiles/advert

generate "forty-two" 0042.mp3
cp soundfiles/mp3/0042.mp3 soundfiles/advert

generate "forty-three" 0043.mp3
cp soundfiles/mp3/0043.mp3 soundfiles/advert

generate "forty-four" 0044.mp3
cp soundfiles/mp3/0044.mp3 soundfiles/advert

generate "forty-five" 0045.mp3
cp soundfiles/mp3/0045.mp3 soundfiles/advert

generate "forty-six" 0046.mp3
cp soundfiles/mp3/0046.mp3 soundfiles/advert

generate "forty-seven" 0047.mp3
cp soundfiles/mp3/0047.mp3 soundfiles/advert

generate "forty-eight" 0048.mp3
cp soundfiles/mp3/0048.mp3 soundfiles/advert

generate "forty-nine" 0049.mp3
cp soundfiles/mp3/0049.mp3 soundfiles/advert

generate "fifty" 0050.mp3
cp soundfiles/mp3/0050.mp3 soundfiles/advert

generate "fifty-one" 0051.mp3
cp soundfiles/mp3/0051.mp3 soundfiles/advert

generate "fifty-two" 0052.mp3
cp soundfiles/mp3/0052.mp3 soundfiles/advert

generate "fifty-three" 0053.mp3
cp soundfiles/mp3/0053.mp3 soundfiles/advert

generate "fifty-four" 0054.mp3
cp soundfiles/mp3/0054.mp3 soundfiles/advert

generate "fifty-five" 0055.mp3
cp soundfiles/mp3/0055.mp3 soundfiles/advert

generate "fifty-six" 0056.mp3
cp soundfiles/mp3/0056.mp3 soundfiles/advert

generate "fifty-seven" 0057.mp3
cp soundfiles/mp3/0057.mp3 soundfiles/advert

generate "fifty-eight" 0058.mp3
cp soundfiles/mp3/0058.mp3 soundfiles/advert

generate "fifty-nine" 0059.mp3
cp soundfiles/mp3/0059.mp3 soundfiles/advert

generate "sixty" 0060.mp3
cp soundfiles/mp3/0060.mp3 soundfiles/advert

generate "sixty-one" 0061.mp3
cp soundfiles/mp3/0061.mp3 soundfiles/advert

generate "sixty-two" 0062.mp3
cp soundfiles/mp3/0062.mp3 soundfiles/advert

generate "sixty-three" 0063.mp3
cp soundfiles/mp3/0063.mp3 soundfiles/advert

generate "sixty-four" 0064.mp3
cp soundfiles/mp3/0064.mp3 soundfiles/advert

generate "sixty-five" 0065.mp3
cp soundfiles/mp3/0065.mp3 soundfiles/advert

generate "sixty-six" 0066.mp3
cp soundfiles/mp3/0066.mp3 soundfiles/advert

generate "sixty-seven" 0067.mp3
cp soundfiles/mp3/0067.mp3 soundfiles/advert

generate "sixty-eight" 0068.mp3
cp soundfiles/mp3/0068.mp3 soundfiles/advert

generate "sixty-nine" 0069.mp3
cp soundfiles/mp3/0069.mp3 soundfiles/advert

generate "seventy" 0070.mp3
cp soundfiles/mp3/0070.mp3 soundfiles/advert

generate "seventy-one" 0071.mp3
cp soundfiles/mp3/0071.mp3 soundfiles/advert

generate "seventy-two" 0072.mp3
cp soundfiles/mp3/0072.mp3 soundfiles/advert

generate "seventy-three" 0073.mp3
cp soundfiles/mp3/0073.mp3 soundfiles/advert

generate "seventy-four" 0074.mp3
cp soundfiles/mp3/0074.mp3 soundfiles/advert

generate "seventy-five" 0075.mp3
cp soundfiles/mp3/0075.mp3 soundfiles/advert

generate "seventy-six" 0076.mp3
cp soundfiles/mp3/0076.mp3 soundfiles/advert

generate "seventy-seven" 0077.mp3
cp soundfiles/mp3/0077.mp3 soundfiles/advert

generate "seventy-eight" 0078.mp3
cp soundfiles/mp3/0078.mp3 soundfiles/advert

generate "seventy-nine" 0079.mp3
cp soundfiles/mp3/0079.mp3 soundfiles/advert

generate "eighty" 0080.mp3
cp soundfiles/mp3/0080.mp3 soundfiles/advert

generate "eighty-one" 0081.mp3
cp soundfiles/mp3/0081.mp3 soundfiles/advert

generate "eighty-two" 0082.mp3
cp soundfiles/mp3/0082.mp3 soundfiles/advert

generate "eighty-three" 0083.mp3
cp soundfiles/mp3/0083.mp3 soundfiles/advert

generate "eighty-four" 0084.mp3
cp soundfiles/mp3/0084.mp3 soundfiles/advert

generate "eighty-five" 0085.mp3
cp soundfiles/mp3/0085.mp3 soundfiles/advert

generate "eighty-six" 0086.mp3
cp soundfiles/mp3/0086.mp3 soundfiles/advert

generate "eighty-seven" 0087.mp3
cp soundfiles/mp3/0087.mp3 soundfiles/advert

generate "eighty-eight" 0088.mp3
cp soundfiles/mp3/0088.mp3 soundfiles/advert

generate "eighty-nine" 0089.mp3
cp soundfiles/mp3/0089.mp3 soundfiles/advert

generate "ninety" 0090.mp3
cp soundfiles/mp3/0090.mp3 soundfiles/advert

generate "ninety-one" 0091.mp3
cp soundfiles/mp3/0091.mp3 soundfiles/advert

generate "ninety-two" 0092.mp3
cp soundfiles/mp3/0092.mp3 soundfiles/advert

generate "ninety-three" 0093.mp3
cp soundfiles/mp3/0093.mp3 soundfiles/advert

generate "ninety-four" 0094.mp3
cp soundfiles/mp3/0094.mp3 soundfiles/advert

generate "ninety-five" 0095.mp3
cp soundfiles/mp3/0095.mp3 soundfiles/advert

generate "ninety-six" 0096.mp3
cp soundfiles/mp3/0096.mp3 soundfiles/advert

generate "ninety-seven" 0097.mp3
cp soundfiles/mp3/0097.mp3 soundfiles/advert

generate "ninety-eight" 0098.mp3
cp soundfiles/mp3/0098.mp3 soundfiles/advert

generate "ninety-nine" 0099.mp3
cp soundfiles/mp3/0099.mp3 soundfiles/advert

generate "one hundred" 0100.mp3
cp soundfiles/mp3/0100.mp3 soundfiles/advert

generate "one hundred and one" 0101.mp3
cp soundfiles/mp3/0101.mp3 soundfiles/advert

generate "one hundred and two" 0102.mp3
cp soundfiles/mp3/0102.mp3 soundfiles/advert

generate "one hundred and three" 0103.mp3
cp soundfiles/mp3/0103.mp3 soundfiles/advert

generate "one hundred and four" 0104.mp3
cp soundfiles/mp3/0104.mp3 soundfiles/advert

generate "one hundred and five" 0105.mp3
cp soundfiles/mp3/0105.mp3 soundfiles/advert

generate "one hundred and six" 0106.mp3
cp soundfiles/mp3/0106.mp3 soundfiles/advert

generate "one hundred and seven" 0107.mp3
cp soundfiles/mp3/0107.mp3 soundfiles/advert

generate "one hundred and eight" 0108.mp3
cp soundfiles/mp3/0108.mp3 soundfiles/advert

generate "one hundred and nine" 0109.mp3
cp soundfiles/mp3/0109.mp3 soundfiles/advert

generate "one hundred and ten" 0110.mp3
cp soundfiles/mp3/0110.mp3 soundfiles/advert

generate "one hundred and eleven" 0111.mp3
cp soundfiles/mp3/0111.mp3 soundfiles/advert

generate "one hundred and twelve" 0112.mp3
cp soundfiles/mp3/0112.mp3 soundfiles/advert

generate "one hundred and thirteen" 0113.mp3
cp soundfiles/mp3/0113.mp3 soundfiles/advert

generate "one hundred and fourteen" 0114.mp3
cp soundfiles/mp3/0114.mp3 soundfiles/advert

generate "one hundred and fifteen" 0115.mp3
cp soundfiles/mp3/0115.mp3 soundfiles/advert

generate "one hundred and sixteen" 0116.mp3
cp soundfiles/mp3/0116.mp3 soundfiles/advert

generate "one hundred and seventeen" 0117.mp3
cp soundfiles/mp3/0117.mp3 soundfiles/advert

generate "one hundred and eighteen" 0118.mp3
cp soundfiles/mp3/0118.mp3 soundfiles/advert

generate "one hundred and nineteen" 0119.mp3
cp soundfiles/mp3/0119.mp3 soundfiles/advert

generate "one hundred and twenty" 0120.mp3
cp soundfiles/mp3/0120.mp3 soundfiles/advert

generate "one hundred and twenty-one" 0121.mp3
cp soundfiles/mp3/0121.mp3 soundfiles/advert

generate "one hundred and twenty-two" 0122.mp3
cp soundfiles/mp3/0122.mp3 soundfiles/advert

generate "one hundred and twenty-three" 0123.mp3
cp soundfiles/mp3/0123.mp3 soundfiles/advert

generate "one hundred and twenty-four" 0124.mp3
cp soundfiles/mp3/0124.mp3 soundfiles/advert

generate "one hundred and twenty-five" 0125.mp3
cp soundfiles/mp3/0125.mp3 soundfiles/advert

generate "one hundred and twenty-six" 0126.mp3
cp soundfiles/mp3/0126.mp3 soundfiles/advert

generate "one hundred and twenty-seven" 0127.mp3
cp soundfiles/mp3/0127.mp3 soundfiles/advert

generate "one hundred and twenty-eight" 0128.mp3
cp soundfiles/mp3/0128.mp3 soundfiles/advert

generate "one hundred and twenty-nine" 0129.mp3
cp soundfiles/mp3/0129.mp3 soundfiles/advert

generate "one hundred and thirty" 0130.mp3
cp soundfiles/mp3/0130.mp3 soundfiles/advert

generate "one hundred and thirty-one" 0131.mp3
cp soundfiles/mp3/0131.mp3 soundfiles/advert

generate "one hundred and thirty-two" 0132.mp3
cp soundfiles/mp3/0132.mp3 soundfiles/advert

generate "one hundred and thirty-three" 0133.mp3
cp soundfiles/mp3/0133.mp3 soundfiles/advert

generate "one hundred and thirty-four" 0134.mp3
cp soundfiles/mp3/0134.mp3 soundfiles/advert

generate "one hundred and thirty-five" 0135.mp3
cp soundfiles/mp3/0135.mp3 soundfiles/advert

generate "one hundred and thirty-six" 0136.mp3
cp soundfiles/mp3/0136.mp3 soundfiles/advert

generate "one hundred and thirty-seven" 0137.mp3
cp soundfiles/mp3/0137.mp3 soundfiles/advert

generate "one hundred and thirty-eight" 0138.mp3
cp soundfiles/mp3/0138.mp3 soundfiles/advert

generate "one hundred and thirty-nine" 0139.mp3
cp soundfiles/mp3/0139.mp3 soundfiles/advert

generate "one hundred and forty" 0140.mp3
cp soundfiles/mp3/0140.mp3 soundfiles/advert

generate "one hundred and forty-one" 0141.mp3
cp soundfiles/mp3/0141.mp3 soundfiles/advert

generate "one hundred and forty-two" 0142.mp3
cp soundfiles/mp3/0142.mp3 soundfiles/advert

generate "one hundred and forty-three" 0143.mp3
cp soundfiles/mp3/0143.mp3 soundfiles/advert

generate "one hundred and forty-four" 0144.mp3
cp soundfiles/mp3/0144.mp3 soundfiles/advert

generate "one hundred and forty-five" 0145.mp3
cp soundfiles/mp3/0145.mp3 soundfiles/advert

generate "one hundred and forty-six" 0146.mp3
cp soundfiles/mp3/0146.mp3 soundfiles/advert

generate "one hundred and forty-seven" 0147.mp3
cp soundfiles/mp3/0147.mp3 soundfiles/advert

generate "one hundred and forty-eight" 0148.mp3
cp soundfiles/mp3/0148.mp3 soundfiles/advert

generate "one hundred and forty-nine" 0149.mp3
cp soundfiles/mp3/0149.mp3 soundfiles/advert

generate "one hundred and fifty" 0150.mp3
cp soundfiles/mp3/0150.mp3 soundfiles/advert

generate "one hundred and fifty-one" 0151.mp3
cp soundfiles/mp3/0151.mp3 soundfiles/advert

generate "one hundred and fifty-two" 0152.mp3
cp soundfiles/mp3/0152.mp3 soundfiles/advert

generate "one hundred and fifty-three" 0153.mp3
cp soundfiles/mp3/0153.mp3 soundfiles/advert

generate "one hundred and fifty-four" 0154.mp3
cp soundfiles/mp3/0154.mp3 soundfiles/advert

generate "one hundred and fifty-five" 0155.mp3
cp soundfiles/mp3/0155.mp3 soundfiles/advert

generate "one hundred and fifty-six" 0156.mp3
cp soundfiles/mp3/0156.mp3 soundfiles/advert

generate "one hundred and fifty-seven" 0157.mp3
cp soundfiles/mp3/0157.mp3 soundfiles/advert

generate "one hundred and fifty-eight" 0158.mp3
cp soundfiles/mp3/0158.mp3 soundfiles/advert

generate "one hundred and fifty-nine" 0159.mp3
cp soundfiles/mp3/0159.mp3 soundfiles/advert

generate "one hundred and sixty" 0160.mp3
cp soundfiles/mp3/0160.mp3 soundfiles/advert

generate "one hundred and sixty-one" 0161.mp3
cp soundfiles/mp3/0161.mp3 soundfiles/advert

generate "one hundred and sixty-two" 0162.mp3
cp soundfiles/mp3/0162.mp3 soundfiles/advert

generate "one hundred and sixty-three" 0163.mp3
cp soundfiles/mp3/0163.mp3 soundfiles/advert

generate "one hundred and sixty-four" 0164.mp3
cp soundfiles/mp3/0164.mp3 soundfiles/advert

generate "one hundred and sixty-five" 0165.mp3
cp soundfiles/mp3/0165.mp3 soundfiles/advert

generate "one hundred and sixty-six" 0166.mp3
cp soundfiles/mp3/0166.mp3 soundfiles/advert

generate "one hundred and sixty-seven" 0167.mp3
cp soundfiles/mp3/0167.mp3 soundfiles/advert

generate "one hundred and sixty-eight" 0168.mp3
cp soundfiles/mp3/0168.mp3 soundfiles/advert

generate "one hundred and sixty-nine" 0169.mp3
cp soundfiles/mp3/0169.mp3 soundfiles/advert

generate "one hundred and seventy" 0170.mp3
cp soundfiles/mp3/0170.mp3 soundfiles/advert

generate "one hundred and seventy-one" 0171.mp3
cp soundfiles/mp3/0171.mp3 soundfiles/advert

generate "one hundred and seventy-two" 0172.mp3
cp soundfiles/mp3/0172.mp3 soundfiles/advert

generate "one hundred and seventy-three" 0173.mp3
cp soundfiles/mp3/0173.mp3 soundfiles/advert

generate "one hundred and seventy-four" 0174.mp3
cp soundfiles/mp3/0174.mp3 soundfiles/advert

generate "one hundred and seventy-five" 0175.mp3
cp soundfiles/mp3/0175.mp3 soundfiles/advert

generate "one hundred and seventy-six" 0176.mp3
cp soundfiles/mp3/0176.mp3 soundfiles/advert

generate "one hundred and seventy-seven" 0177.mp3
cp soundfiles/mp3/0177.mp3 soundfiles/advert

generate "one hundred and seventy-eight" 0178.mp3
cp soundfiles/mp3/0178.mp3 soundfiles/advert

generate "one hundred and seventy-nine" 0179.mp3
cp soundfiles/mp3/0179.mp3 soundfiles/advert

generate "one hundred and eighty" 0180.mp3
cp soundfiles/mp3/0180.mp3 soundfiles/advert

generate "one hundred and eighty-one" 0181.mp3
cp soundfiles/mp3/0181.mp3 soundfiles/advert

generate "one hundred and eighty-two" 0182.mp3
cp soundfiles/mp3/0182.mp3 soundfiles/advert

generate "one hundred and eighty-three" 0183.mp3
cp soundfiles/mp3/0183.mp3 soundfiles/advert

generate "one hundred and eighty-four" 0184.mp3
cp soundfiles/mp3/0184.mp3 soundfiles/advert

generate "one hundred and eighty-five" 0185.mp3
cp soundfiles/mp3/0185.mp3 soundfiles/advert

generate "one hundred and eighty-six" 0186.mp3
cp soundfiles/mp3/0186.mp3 soundfiles/advert

generate "one hundred and eighty-seven" 0187.mp3
cp soundfiles/mp3/0187.mp3 soundfiles/advert

generate "one hundred and eighty-eight" 0188.mp3
cp soundfiles/mp3/0188.mp3 soundfiles/advert

generate "one hundred and eighty-nine" 0189.mp3
cp soundfiles/mp3/0189.mp3 soundfiles/advert

generate "one hundred and ninety" 0190.mp3
cp soundfiles/mp3/0190.mp3 soundfiles/advert

generate "one hundred and ninety-one" 0191.mp3
cp soundfiles/mp3/0191.mp3 soundfiles/advert

generate "one hundred and ninety-two" 0192.mp3
cp soundfiles/mp3/0192.mp3 soundfiles/advert

generate "one hundred and ninety-three" 0193.mp3
cp soundfiles/mp3/0193.mp3 soundfiles/advert

generate "one hundred and ninety-four" 0194.mp3
cp soundfiles/mp3/0194.mp3 soundfiles/advert

generate "one hundred and ninety-five" 0195.mp3
cp soundfiles/mp3/0195.mp3 soundfiles/advert

generate "one hundred and ninety-six" 0196.mp3
cp soundfiles/mp3/0196.mp3 soundfiles/advert

generate "one hundred and ninety-seven" 0197.mp3
cp soundfiles/mp3/0197.mp3 soundfiles/advert

generate "one hundred and ninety-eight" 0198.mp3
cp soundfiles/mp3/0198.mp3 soundfiles/advert

generate "one hundred and ninety-nine" 0199.mp3
cp soundfiles/mp3/0199.mp3 soundfiles/advert

generate "two hundred" 0200.mp3
cp soundfiles/mp3/0200.mp3 soundfiles/advert

generate "two hundred and one" 0201.mp3
cp soundfiles/mp3/0201.mp3 soundfiles/advert

generate "two hundred and two" 0202.mp3
cp soundfiles/mp3/0202.mp3 soundfiles/advert

generate "two hundred and three" 0203.mp3
cp soundfiles/mp3/0203.mp3 soundfiles/advert

generate "two hundred and four" 0204.mp3
cp soundfiles/mp3/0204.mp3 soundfiles/advert

generate "two hundred and five" 0205.mp3
cp soundfiles/mp3/0205.mp3 soundfiles/advert

generate "two hundred and six" 0206.mp3
cp soundfiles/mp3/0206.mp3 soundfiles/advert

generate "two hundred and seven" 0207.mp3
cp soundfiles/mp3/0207.mp3 soundfiles/advert

generate "two hundred and eight" 0208.mp3
cp soundfiles/mp3/0208.mp3 soundfiles/advert

generate "two hundred and nine" 0209.mp3
cp soundfiles/mp3/0209.mp3 soundfiles/advert

generate "two hundred and ten" 0210.mp3
cp soundfiles/mp3/0210.mp3 soundfiles/advert

generate "two hundred and eleven" 0211.mp3
cp soundfiles/mp3/0211.mp3 soundfiles/advert

generate "two hundred and twelve" 0212.mp3
cp soundfiles/mp3/0212.mp3 soundfiles/advert

generate "two hundred and thirteen" 0213.mp3
cp soundfiles/mp3/0213.mp3 soundfiles/advert

generate "two hundred and fourteen" 0214.mp3
cp soundfiles/mp3/0214.mp3 soundfiles/advert

generate "two hundred and fifteen" 0215.mp3
cp soundfiles/mp3/0215.mp3 soundfiles/advert

generate "two hundred and sixteen" 0216.mp3
cp soundfiles/mp3/0216.mp3 soundfiles/advert

generate "two hundred and seventeen" 0217.mp3
cp soundfiles/mp3/0217.mp3 soundfiles/advert

generate "two hundred and eighteen" 0218.mp3
cp soundfiles/mp3/0218.mp3 soundfiles/advert

generate "two hundred and nineteen" 0219.mp3
cp soundfiles/mp3/0219.mp3 soundfiles/advert

generate "two hundred and twenty" 0220.mp3
cp soundfiles/mp3/0220.mp3 soundfiles/advert

generate "two hundred and twenty-one" 0221.mp3
cp soundfiles/mp3/0221.mp3 soundfiles/advert

generate "two hundred and twenty-two" 0222.mp3
cp soundfiles/mp3/0222.mp3 soundfiles/advert

generate "two hundred and twenty-three" 0223.mp3
cp soundfiles/mp3/0223.mp3 soundfiles/advert

generate "two hundred and twenty-four" 0224.mp3
cp soundfiles/mp3/0224.mp3 soundfiles/advert

generate "two hundred and twenty-five" 0225.mp3
cp soundfiles/mp3/0225.mp3 soundfiles/advert

generate "two hundred and twenty-six" 0226.mp3
cp soundfiles/mp3/0226.mp3 soundfiles/advert

generate "two hundred and twenty-seven" 0227.mp3
cp soundfiles/mp3/0227.mp3 soundfiles/advert

generate "two hundred and twenty-eight" 0228.mp3
cp soundfiles/mp3/0228.mp3 soundfiles/advert

generate "two hundred and twenty-nine" 0229.mp3
cp soundfiles/mp3/0229.mp3 soundfiles/advert

generate "two hundred and thirty" 0230.mp3
cp soundfiles/mp3/0230.mp3 soundfiles/advert

generate "two hundred and thirty-one" 0231.mp3
cp soundfiles/mp3/0231.mp3 soundfiles/advert

generate "two hundred and thirty-two" 0232.mp3
cp soundfiles/mp3/0232.mp3 soundfiles/advert

generate "two hundred and thirty-three" 0233.mp3
cp soundfiles/mp3/0233.mp3 soundfiles/advert

generate "two hundred and thirty-four" 0234.mp3
cp soundfiles/mp3/0234.mp3 soundfiles/advert

generate "two hundred and thirty-five" 0235.mp3
cp soundfiles/mp3/0235.mp3 soundfiles/advert

generate "two hundred and thirty-six" 0236.mp3
cp soundfiles/mp3/0236.mp3 soundfiles/advert

generate "two hundred and thirty-seven" 0237.mp3
cp soundfiles/mp3/0237.mp3 soundfiles/advert

generate "two hundred and thirty-eight" 0238.mp3
cp soundfiles/mp3/0238.mp3 soundfiles/advert

generate "two hundred and thirty-nine" 0239.mp3
cp soundfiles/mp3/0239.mp3 soundfiles/advert

generate "two hundred and forty" 0240.mp3
cp soundfiles/mp3/0240.mp3 soundfiles/advert

generate "two hundred and forty-one" 0241.mp3
cp soundfiles/mp3/0241.mp3 soundfiles/advert

generate "two hundred and forty-two" 0242.mp3
cp soundfiles/mp3/0242.mp3 soundfiles/advert

generate "two hundred and forty-three" 0243.mp3
cp soundfiles/mp3/0243.mp3 soundfiles/advert

generate "two hundred and forty-four" 0244.mp3
cp soundfiles/mp3/0244.mp3 soundfiles/advert

generate "two hundred and forty-five" 0245.mp3
cp soundfiles/mp3/0245.mp3 soundfiles/advert

generate "two hundred and forty-six" 0246.mp3
cp soundfiles/mp3/0246.mp3 soundfiles/advert

generate "two hundred and forty-seven" 0247.mp3
cp soundfiles/mp3/0247.mp3 soundfiles/advert

generate "two hundred and forty-eight" 0248.mp3
cp soundfiles/mp3/0248.mp3 soundfiles/advert

generate "two hundred and forty-nine" 0249.mp3
cp soundfiles/mp3/0249.mp3 soundfiles/advert

generate "two hundred and fifty" 0250.mp3
cp soundfiles/mp3/0250.mp3 soundfiles/advert
