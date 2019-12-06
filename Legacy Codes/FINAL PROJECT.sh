clear
z=0
menu=0

input(){
	  
	    let z=$z+1
	    echo "	**Price List Paket Belajar BimBel Pasti Juara**	"
	    echo "==================================================================="
	    echo "===Paket UNAS SD			  ==			==="
	    echo "===1.Paket Cerdas Cermat(Seminggu 2x)	  ==	Rp 100000	==="
	    echo "===2.Paket Pasti Juara(Seminggu 3x)	  ==	Rp 140000	==="
	    echo "===Paket UNAS SMP			  ==			==="
	    echo "===1.Paket Top Cer(Seminggu 3x)		  ==	Rp 120000	==="
	    echo "===2.Paket Best Of The Best(Seminggu 4x)  ==	Rp 150000	==="
	    echo "===Paket UNAS SMA			  ==			==="
	    echo "===1.Paket Pasti Lulus(Seminggu 3x)	  ==	Rp 130000	==="
	    echo "===2.Paket Lancar UNAS(Seminggu 4x)	  ==	Rp 165000	==="
	    echo "===Paket SBMPTN/Kedinasan		  ==			==="
	    echo "===1.Paket SBMPTN(Sebulan 20x)		  ==	Rp 500000	==="
	    echo "===2.Paket Kedinasan(Sebulan 20x)  	  ==	Rp 550000	==="
	    echo "===Paket TOEFL				  ==			==="
	    echo "===1.TOEFL >500				  ==	Rp 1000000	==="
	    echo "==================================================================="
	    echo -n "Masukkan Tanggal Pendaftaran		: "
            read tanggal[$z]
	    echo -n "Masukkan Nama Wali Murid		: "
            read wali[$z]
            echo -n "Masukkan Nama Tentor			: "
            read tentor[$z]
            echo -n "Masukkan No Reg				: "
            read noreg[$z]
            echo -n "Masukkan Nama Anak Didik		: "
            read nama[$z]
            echo -n "Masukkan Jangka Waktu Bimbel(Bulan)	: "
            read waktu[$z]
	    echo -n "Masukkan Nama Paket			: "
            read paket[$z]
	    echo -n "Masukkan Harga				: "
            read harga[$z]
           
}


informasianakdidik(){
	    echo "==========================================================="
	    echo "#    	  **Daftar Anak Didik Bimbel Pasti Juara**  	    #"
	    echo "==========================================================="
		for((a=1;a<=z;a++))
			do
				echo "- - -Anak Didik $a- - -"
				echo "Tanggal Pendaftaran	: ${tanggal[$a]}"
				echo "Nama Wali Murid		: ${wali[$a]}"
				echo "Nama Tentor		: ${tentor[$a]}"
				echo "No Reg			: ${noreg[$a]}"
				echo "Nama Anak Didik		: ${nama[$a]}"
				echo "Jangka Waktu Bimbel	: ${waktu[$a]}"
				echo "Nama Paket		: ${paket[$a]}"
		done

}

totalbimbel(){
	    echo "==========================================================="
	    echo "#		**Total Pembayaran Paket Belajar**	    #"
	    echo "==========================================================="
		for((a=1;a<=z;a++))
                	do
				echo "- - -Pelanggan $a- - -"
				echo "No Reg		: ${noreg[$a]}"
				echo "Nama Anak Didik	: ${nama[$a]}"
				echo "Jangka Waktu	: ${waktu[$a]}"
				echo "Nama Paket	: ${paket[$a]}"
				echo "Harga		: ${harga[$a]}"
				echo "*) Diskon 15%"
				echo "==========================================================="
				let totalsblmdisc[$z]=${waktu[$z]}*${harga[$z]}
				echo "===	Total Sebelum Disc		: Rp ${totalsblmdisc[$z]}	==="
				let totalstlhdisc[$z]=${totalsblmdisc[$z]}*15/100
				let totalsemua[$z]=${totalsblmdisc[$z]}-${totalstlhdisc[$z]}
				echo "===	Total Yang Harus Anda Bayar 	: Rp ${totalsemua[$z]}	==="
				echo "==========================================================="
				done
}

search(){
	    echo -n "Masukkan No Reg     : "
            read cari
            a=0
            b=0
            while [ $a -le $z ] && [ $b == 0 ]
		do
                        let a=$a+1
                        if [ "${noreg[a]}" == $cari ]
                        then
				b=1
                        fi
            done
}

updatedata(){
	    search
	    if [ $a -le $z ]
            	then
                        echo "- - -Data Anak Didik $a- - -"
			echo "Tanggal Pendaftaran	: ${tanggal[$a]}"
                        echo "Nama Wali Murid		: ${wali[$a]}"
                        echo "Nama Tentor		: ${tentor[$a]}"
                        echo "No Reg			: ${noreg[$a]}"
                        echo "Nama Anak Didik		: ${nama[$a]}"
                        echo "Jangka Waktu		: ${waktu[$a]}"
                        echo "Nama Paket		: ${paket[$a]}"
			echo "Harga			: ${harga[$a]}"
                        echo "- - --- - -"
			echo -n "Masukkan Tanggal Pendaftaran	: "
            		read tanggal[$z]
	    		echo -n "Masukkan Nama Wali Murid	: "
            		read wali[$z]
            		echo -n "Masukkan Nama Tentor		: "
            		read tentor[$z]
                        echo -n "Masukkan No Reg			: "
            		read noreg[$z]
            		echo -n "Masukkan Nama Anak Didik	: "
            		read nama[$z]
            		echo -n "Masukkan Jangka Waktu		: "
            		read waktu[$z]
	    		echo -n "Masukkan Nama Paket		: "
            		read paket[$z]
	    		echo -n "Masukkan Harga			: "
            		read harga[$z]
			echo "==========================================================="
			let totalsblmdisc[$z]=${waktu[$z]}*${harga[$z]}
			echo "===	Total Sebelum Disc		: Rp ${totalsblmdisc[$z]}	==="
			let totalstlhdisc[$z]=${totalsblmdisc[$z]}*15/100
			let totalsemua[$z]=${totalsblmdisc[$z]}-${totalstlhdisc[$z]}
			echo "===	Total Yang Harus Anda Bayar 	: Rp ${totalsemua[$z]}	==="
			echo "==========================================================="
            else
                        echo "Data Tidak Ada"
            fi
           
}

delete(){
	    search
	    if [ $a -gt $z ]
            	then
                        echo "Data Tidak Ada"
            else
                        while [ $a -lt $z ]
                        	do
                                    let b=$a+1
				    tanggal[$a]=${tanggal[$b]}
				    wali[$a]=${wali[$b]}
				    tentor[$a]=${tentor[$b]}
                                    noreg[$a]=${noreg[$b]}
                                    nama[$a]=${nama[$b]}
				    waktu[$a]=${waktu[$b]}
                                    paket[$a]=${paket[$b]}
				    harga[$a]=${harga[$b]}
                                    totalsblmdisc[$a]=${totalsblmdisc[$b]}
                                    totalstlhmdisc[$a]=${totalstlhdisc[$b]}
                                    let a=$a+1
                        done
                        let z=$z-1
                        echo "Data Anak Didik $cari Berhasil Dihapus"
            fi
}

cetak(){
	    search
            if [ $a -le $z ]
            	then
			echo "Tanggal Transaksi	: ${tanggal[$a]}"
                        echo "Nama Wali Murid		: ${wali[$a]}"
                        echo "Nama Tentor		: ${tentor[$a]}"
                        echo "No Reg			: ${noreg[$a]}"
                        echo "Nama Anak Didik		: ${nama[$a]}"
                        echo "Jangka Waktu		: ${waktu[$a]}"
                        echo "Nama Paket		: ${paket[$a]}"
			echo "Harga			: ${harga[$a]}"
			echo "==========================================================="
			let totalsblmdisc[$z]=${waktu[$z]}*${harga[$z]}
			echo "===	Total Sebelum Disc		: Rp ${totalsblmdisc[$z]}	==="
			let totalstlhdisc[$z]=${totalsblmdisc[$z]}*15/100
			let totalsemua[$z]=${totalsblmdisc[$z]}-${totalstlhdisc[$z]}
			echo "===	Total Yang Harus Anda Bayar 	: Rp ${totalsemua[$z]}	==="
			echo "==========================================================="
            else
                        echo "Data Tidak Ada!!"
            fi
}

folder(){
	echo "Buatlah folder"
	echo "Masukkan nama folder yang ingin dibuat : "
	read folder
	mkdir $folder
	echo "Folder anda telah berhasil dibuat"
	ls -l
}

manipulasi(){
	echo "Program ini namanya fp.sh"
	echo "Ketikkan nama program yang ingin kamu ubah"
	read ubah

	echo "---penjelasan---"
	echo "*hak akses untuk owner, group, dan other"
	echo "*r = 4 (read-mengizinkan membaca berkas)"
	echo "*w = 2 (write0-mengizinkan mengedit berkas)"
	echo "*x = 1 (excutable-mengizinkan mengeksekusi berkas binary)"
	echo "masukkan angkanya : "
	read angka

	echo -e "\nOke anda memilih $ubah"
	sudo chmod $angka $ubah
	echo -e "\nManipulasi berkas sudah selesai"
	ls -l
	read
}

clear
while [ $menu != 9 ]
do
	    echo "======================================="
	    echo "#	**Bimbel Pasti Juara**		#"
	    echo "======================================="
	    echo ""
            echo "1.Input Data Anak Didik"
            echo "2.Lihat Daftar Anak Didik"
	    echo "3.Informasi Tagihan"
            echo "4.Update Data Anak Didik"
	    echo "5.Search"
	    echo "6.Delete Data Anak Didik"
	    echo "7.Buat Folder"
	    echo "8.Manipulasi Hak Akses Berkas"
	    echo "9.Exit"
            echo -n "Masukkan Pilihan Anda : "
            read menu
            if [ $menu -eq 1 ]
            	then
		clear
                        input
		read  
		clear
            elif [ $menu -eq 2 ]
            	then
		clear
			if [ $z -lt 1 ]
				then
                                    echo "kosong "
                	else
                                    informasianakdidik
                	fi
		read
		clear
	    elif [ $menu -eq 3 ]
	    	then
		clear
			totalbimbel
		read
		clear
            elif [ $menu -eq 4 ]
            	then
		clear
                        updatedata
		read
		clear
            elif [ $menu -eq 5 ]
            	then
		clear
                        cetak
		read
		clear
            elif [ $menu -eq 6 ]
            	then
		clear
                        delete
		read
		clear
            elif [ $menu -eq 7 ]
            	then
		clear
                        folder
		read
		clear
            elif [ $menu -eq 8 ]
            	then
		clear
                        manipulasi
		read
		clear
            elif [ $menu -eq 9 ]
            	then
		clear
                        echo "	**Terimakasih Telah Menggunakan Layanan Kami :)**	"          
            else
                        echo "Menu Yang Anda Inputkan Salah!"
            fi
            echo ""
done
