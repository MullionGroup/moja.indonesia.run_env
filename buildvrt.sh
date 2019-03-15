find -name '*_12.grd' > forestStemCM_12.txt
gdalbuildvrt -input_file_list forestStemCM_12.txt forestStemCM_12.vrt
rm forestStemCM_12.txt