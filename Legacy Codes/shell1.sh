echo "Masukkan Detik\n"
read sec

let jam=$sec/3600
let sec=$sec-$(expr 3600*$jam)
let menit=$sec/60
let sec=$sec-$(expr 60*menit)

if [ $jam != 0 ]
then
jams="$jam jam"
else
jams=" "
fi

if [ $menit != 0 ]
then
menits="$menit menit"
else
menits=" "
fi

if [ $sec != 0 ]
then
secs="$sec sec"
else
secs=" "
fi


echo "$jams $menits $secs"
