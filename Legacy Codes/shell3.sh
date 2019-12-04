
clear
#!/bin/bash

declare -a matriks_satu
declare -a matriks_dua
declare -a matriks_tiga
echo "Program Matriks 2 Dimensi"
select pilihan in "1.Input Matriks" "2.Lihat Matriks" "3.Hasil Perkalian" "4.Exit"
do
case $pilihan in
    "1.Input Matriks")
    clear
    echo "Masukkan Nilai Pada Matriks Satu :"
    for((i=0; i<=3; i++)) do
        echo "Matriks ke-"$(($i +1))
        read matriks
        
        matriks_satu[$i]=$matriks
    done

    echo " "
    echo "Masukkan Nilai Pada Matriks Dua :"
    for((i=0; i<=3; i++)) do
        echo "Matriks ke- "$(($i + 1))
        read matriks
    
        matriks_dua[$i]=$matriks
    done
;;

    "2.Lihat Matriks")
    clear
    echo "Nilai pada matriks satu"
    for ((i=0; i<4; i++)) do
        echo -n "${matriks_satu[$i]} "

        if [ $i == 1 ]
        then
        echo " "
        fi
    done

        echo ""
        echo ""
    
    echo "Nilai pada matriks dua"
    for ((i=0; i<4; i++)) do
        echo -n "${matriks_dua[$i]} "

        if [ $i == 1 ]
        then
        echo ""
        fi
    done
    read
;;

    "3.Hasil Perkalian")
    clear
    for ((i=0; i<2; i++)) do
        for ((j=0; j<2; j++)) do
            let matriks_tiga[$i]+=matriks_satu[$j]*matriks_dua[$i+$j*2]
        done
    done

    for ((i=0; i<2; i++)) do
        for ((j=0; j<2; j++)) do
            let matriks_tiga[$i+2]+=matriks_satu[$j+2]*matriks_dua[$i+$j*2]
        done    
    done
    
    echo "Hasil perkalian"
    for ((i=0; i<4; i++)) do
        echo -n "${matriks_tiga[$i]} "
        if [ $i == 1 ]
        then
            echo ""
        fi
    done
    unset matriks_tiga
    read
;;

    "4.Exit")
    break
;;

*)echo "Tidak Ada Dalam Daftar"
;;
esac
done
