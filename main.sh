val="loss:0.8331219113671239, accuracy:0.5507559180259705, binary_crossentropy:0.6981863975524902, f1_m:0.41142141819000244, precision_m:0.6341901421546936, recall_m:0.32579943537712097"

#######################################################

val_2="loss: 0.8026 - accuracy: 0.5985 - binary_crossentropy: 0.6629 - f1_m: 0.5935 - precision_m: 0.5993 - recall_m: 0.5943"

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