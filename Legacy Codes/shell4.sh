clear
z=0
menu=0
 
input(){
            let z=$z+1
            echo -n "Masukkan Nama Mahasiswa    : "
            read nama[$z]
            echo -n "Masukkan NPM Mahasiswa    : "
            read npm[$z]
            echo -n "Hobi Mahasiswa                : "
            read hobi[$z]
}
 
view(){
            for((a=1;a<=z;a++))
            do
                        echo "- - -$a- - -"
                        echo "Nama Mahasiswa : ${nama[$a]}"
                        echo "NPM Mahasiswa  : ${npm[$a]}"
                        echo "Hobi Mahasiswa   : ${hobi[$a]}"
            done
}
search(){
            echo -n "Masukkan NPM Mahasiswa : "
            read cari
            a=0
            b=0
            while [ $a -le $z ] && [ $b == 0 ]
            do
                        let a=$a+1
                        if [ "${npm[a]}" == $cari ]
                        then
                                    b=1
                        fi
            done
}
update(){
                search
        if [ $a -le $z ]
        then
                        echo "Nama Mahasiswa : ${nama[$a]}"
                        echo "NPM Mahasiswa  : ${npm[$a]}"
                        echo "Hobi Mahasiswa : ${hobi[$a]}"

                        echo "- - --- - -"
            echo -n "Masukkan Nama Mahasiswa   : "
            read nama[$z]
            echo -n "Masukkan NPM Mahasiswa     : "
            read npm[$z]
            echo -n "Hobi Mahasiswa                         : "
            read hobi[$z]

                else
                        echo "Data Tidak Ada"
        fi
}

while [ $menu != 4 ]
do
            echo "1.Input		3.Update"
            echo "2.View		4.Exit"
            echo -n " : "
            read menu
            if [ $menu -eq 1 ]
            then
                        input  
           elif [ $menu -eq 2 ]
           then
                        if [ $z -lt 1 ]
                        then
                                    echo "kosong "
                        else
                                    view
                        fi
            elif [ $menu -eq 3 ]
        then
                        update          
            
            elif [ $menu -eq 4 ]
            then
                        echo "Terimakasih Telah Menggunakan Program Sayaa:)"          
            else
                        echo "Salah "
            fi
            echo ""
done
