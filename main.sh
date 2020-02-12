val="loss:0.8371266806357365, accuracy:0.5291576385498047, binary_crossentropy:0.6839219927787781, f1_m:0.35199156403541565, precision_m:0.6274197697639465, recall_m:0.2713549733161926"

#######################################################

val_2="loss: 0.8451 - accuracy: 0.5281 - binary_crossentropy: 0.6901 - f1_m: 0.5061 - precision_m: 0.5420 - recall_m: 0.4760"

#######################################################

val_test="loss: 0.83,
accuracy: 0.58,
binary_crossentropy: 0.68,
f1_m: 0.59,
precision_m: 0.57,
recall_m: 0.63"


#######################################################
rm -f res.txt

echo -n $val | cut -d "," -f 1 | cut -d ":" -f 2 > res.txt


echo -n $val | cut -d "," -f 2 | cut -d ":" -f 2 >> res.txt


echo -n $val | cut -d "," -f 4 | cut -d ":" -f 2 >> res.txt


echo -n $val | cut -d "," -f 5 | cut -d ":" -f 2 >> res.txt

echo -n $val | cut -d "," -f 6 | cut -d ":" -f 2 >> res.txt


#######################################################
rm -f res_2.txt

echo -n $val_2 | sed 's/ //g' | cut -d "-" -f 1 | cut -d ":" -f 2 > res_2.txt


echo -n $val_2 | sed 's/ //g' | cut -d "-" -f 2 | cut -d ":" -f 2 >> res_2.txt


echo -n $val_2 | sed 's/ //g' | cut -d "-" -f 4 | cut -d ":" -f 2 >> res_2.txt


echo -n $val_2 | sed 's/ //g' | cut -d "-" -f 5 | cut -d ":" -f 2 >> res_2.txt

echo -n $val_2 | sed 's/ //g' | cut -d "-" -f 6 | cut -d ":" -f 2 >> res_2.txt

#######################################################
rm -f res_test.txt

echo -n $val_test | sed 's/ //g' | cut -d "," -f 1 | cut -d ":" -f 2 > res_test.txt


echo -n $val_test | sed 's/ //g' | cut -d "," -f 2 | cut -d ":" -f 2 >> res_test.txt


echo -n $val_test | sed 's/ //g' | cut -d "," -f 4 | cut -d ":" -f 2 >> res_test.txt


echo -n $val_test | sed 's/ //g' | cut -d "," -f 5 | cut -d ":" -f 2 >> res_test.txt

echo -n $val_test | sed 's/ //g' | cut -d "," -f 6 | cut -d ":" -f 2 >> res_test.txt