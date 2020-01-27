############################
# Author: Mr.Tr3v!0n       #
# Team: Black Coder Crush  #
# Tools: Jadwal Pelajaran  #
# Thanks to: A-Gmvt        #
# date: 17-jan-2020        #
############################

b="\033[34;1m"
 p="\033[39;1m"
  k="\033[33;1m"
   m="\033[31;1m"
    h="\033[32;1m"
     c="\033[35;1m"
      pu="\033[36;1m"
       x="\033[30;1m"
        o="\033[0m"
        JAM=`date +%H`
          MENIT=`date +%M`
            DETIK=`date +%S`
             TANGGAL=`date +%d`
           BULAN=`date +%m`
        TAHUN=`date +%Y`

        
function check(){
	if [ -z $(command -v bash) ];then
		clear
		echo -e "${p}[${k}?${p}]${m}bash belum di install"
		echo -e "${p}[${h}•${p}]${h}pkg install bash"
		echo -e "${p}[${m}!${p}]${m}Silahkan Install Dulu !!"
	fi
}

function load(){
	printf "${p}[${h}•${p}]${pu}Proses Save Data${h}"
	sleep 1
	printf "."
	sleep 1
	printf "."
	sleep 1
	printf "."
	sleep 1
	printf ".\n"
	sleep 1
}

function banner(){
	clear
	echo -e "\t${p}________________________________"
	echo -e "\t${p}      Author: Mr.Tr3v!0n ${m}v.1.0${p}"
	echo -e "\t    Team: Black Coder Crush"
	echo -e "\t  ${m}[ ${pu}Create Jadwal Pelajaran ${m}]"
	echo -e "\t${p}________________________________\n"
}
banner

get=$(date +%A)
if [[ $get =~ "Friday" ]];then
	jum=$(echo -e "${h}•")
elif [[ $get =~ "Monday" ]];then
	sen=$(echo -e "$h•")
elif [[ $get =~ "Tuesday" ]];then
	sel=$(echo -e "$h•")
elif [[ $get =~ "Wednesday" ]];then
	rab=$(echo -e "$h•")
elif [[ $get =~ "Thursday" ]];then
	kam=$(echo -e "$h•")
elif [[ $get =~ "Saturday" ]];then
	sab=$(echo -e "$h•")
elif [[ $get =~ "Sunday" ]];then
	ming=$(echo -e "\t")
fi

function about(){
echo -e "
        ${h}[ ${p}BIG FAMILY BlACK CODER CRUSH ${h}]${p}
        
        [${h}+${p}] - 4K17
 	[${h}+${p}] - Dfv47
	[${h}+${p}] - Mr.Tr3v!0n
	[${h}+${p}] - Holilul Anw
	[${h}+${p}] - R.I.P XerXez7
	[${h}+${p}] - Mr.Đ'HACK
	[${h}+${p}] - Tampansky ID
	[${h}+${p}] - Mr. Karwek
	[${h}+${p}] - Zhu Bai Lee
	[${h}+${p}] - BL4CK DR460N
	[${h}+${p}] - Mr. XsZ
	[${h}+${p}] - EvCf1703
	[${h}+${p}] - z34
	[${h}+${p}] - Phantomblizt
	[${h}+${p}] - Tn. Crash
	[${h}+${p}] - CapthaCode404_
	[${h}+${p}] - Gboy
	[${h}+${p}] - Mie Gelas
"
echo -e "\t${p}________________________________\n"
printf "\t${p}[${h}•${p}]Kembali ${k}[${h}Y${p}/${m}T${k}]${m}: ${h}" back
read back;
if [[ $back =~ "Y" ]] || [[ $back =~ "y" ]];then
bash jadwal.sh

elif [[ $back =~ "T" ]] || [[ $back =~ "t" ]];then
exit 1
fi
}

function daftar(){
senin(){
	printf "\n${m}   [ ${p}HARI SENIN ${m}]\n"
    printf "${pu}Jumlah Pelajaran Kamu${k}?\n${p}[${k}?${p}]Jumlahnya${m}: ${h}";
    read juml
    if [[ $juml =~ [0-9] ]];then
    echo -e " "
    
    else 
    echo -e "${p}[${m}!${p}]${m}Harap Di Isi Angka!!"
    exit 1
    fi
    declare -a jadwal

    for (( juml_loop = 1; juml_loop <= $juml; juml_loop++ )); do
        printf "${p}[${h}•${p}]Mapel Ke ${h}$juml_loop${m}: ${k}"; read mapel
        jadwal+=(${mapel})
    done

    for (( tabel = 0; tabel < $juml; tabel++ )); do
        printf "${jadwal[$tabel]}\n"
    done > .sen
}
senin
selasa(){
	printf "\n${m}   [ ${p}HARI SELASA ${m}]\n"
    printf "${pu}Jumlah Pelajaran Kamu${k}?\n${p}[${k}?${p}]Jumlahnya${m}: ${h}";
    read juml
    if [[ $juml =~ [0-9] ]];then
    echo -e " "
    
    else 
    echo -e "${p}[${m}!${p}]${m}Harap Di Isi Angka!!"
    exit 1
    fi
    declare -a jadwal
    
    for (( juml_loop = 1; juml_loop <= $juml; juml_loop++ )); do
        printf "${p}[${h}•${p}]Mapel Ke ${h}$juml_loop${m}: ${k}"; read mapel
        jadwal+=(${mapel})
    done
    
    for (( tabel = 0; tabel < $juml; tabel++ )); do
        printf "${jadwal[$tabel]}\n"
    done > .sel
}
selasa
rabu(){
	printf "\n${m}    [ ${p}HARI RABU ${m}]\n"
    printf "${pu}Jumlah Pelajaran Kamu${k}?\n${p}[${k}?${p}]Jumlahnya${m}: ${h}";
    read juml
    if [[ $juml =~ [0-9] ]];then
    echo -e " "
    
    else 
    echo -e "${p}[${m}!${p}]${m}Harap Di Isi Angka!!"
    exit 1
    fi
    declare -a jadwal
    
    for (( juml_loop = 1; juml_loop <= $juml; juml_loop++ )); do
        printf "${p}[${h}•${p}]Mapel Ke ${h}$juml_loop${m}: ${k}"; read mapel
        jadwal+=(${mapel})
    done
    
    for (( tabel = 0; tabel < $juml; tabel++ )); do
        printf "${jadwal[$tabel]}\n"
    done > .rab
}
rabu
kamis(){
	printf "\n${m}   [ ${p}HARI KAMIS ${m}]\n"
    printf "${pu}Jumlah Pelajaran Kamu${k}?\n${p}[${k}?${p}]Jumlahnya${m}: ${h}";
    read juml
    if [[ $juml =~ [0-9] ]];then
    echo -e " "
    
    else 
    echo -e "${p}[${m}!${p}]${m}Harap Di Isi Angka!!"
    exit 1
    fi
    declare -a jadwal
    
    for (( juml_loop = 1; juml_loop <= $juml; juml_loop++ )); do
        printf "${p}[${h}•${p}]Mapel Ke ${h}$juml_loop${m}: ${k}"; read mapel
        jadwal+=(${mapel})
    done
    
    for (( tabel = 0; tabel < $juml; tabel++ )); do
        printf "${jadwal[$tabel]}\n"
    done > .kam
}
kamis
jumat(){
	printf "\n${m}   [ ${p}HARI JUM'AT ${m}]\n"
    printf "${pu}Jumlah Pelajaran Kamu${k}?\n${p}[${k}?${p}]Jumlahnya${m}: ${h}";
    read juml
    if [[ $juml =~ [0-9] ]];then
    echo -e " "
    
    else 
    echo -e "${p}[${m}!${p}]${m}Harap Di Isi Angka!!"
    exit 1
    fi
    declare -a jadwal
    
    for (( juml_loop = 1; juml_loop <= $juml; juml_loop++ )); do
        printf "${p}[${h}•${p}]Mapel Ke ${h}$juml_loop${m}: ${k}"; read mapel
        jadwal+=(${mapel})
    done
    
    for (( tabel = 0; tabel < $juml; tabel++ )); do
        printf "${jadwal[$tabel]}\n"
    done > .jum
}
jumat
sabtu(){
	printf "\n${p}[${k}?${p}]Sabtu Kamu Libur ${k}[${h}Y${p}/${m}T${k}]${p}: ${h}" lib
	read lib;
	if [[ $lib =~ "T" ]] || [[ $lib =~ "t" ]];then
	printf "\n${m}   [ ${p}HARI SABTU ${m}]\n"
    printf "${pu}Jumlah Pelajaran Kamu${k}?\n${p}[${k}?${p}]Jumlahnya${m}: ${h}";
    read juml
    if [[ $juml =~ [0-9] ]];then
    echo -e " "
    
    else 
    echo -e "${p}[${m}!${p}]${m}Harap Di Isi Angka!!"
    exit 1
    fi
    declare -a jadwal
    
    for (( juml_loop = 1; juml_loop <= $juml; juml_loop++ )); do
        printf "${p}[${h}•${p}]Mapel Ke ${h}$juml_loop${m}: ${k}"; read mapel
        jadwal+=(${mapel})
    done
    
    for (( tabel = 0; tabel < $juml; tabel++ )); do
        printf "${jadwal[$tabel]}\n"
    done > .sab
    
    elif [[ $lib =~ "y" ]] || [[ $lib =~ "Y" ]];then
    load
    clear
    echo -e "\n${p}[${pu}√${p}]${h}Semua Data Berhasil Di Save"
    echo -e "${p}[${h}•${p}]Silahkan Nomor 2 Untuk Melihat Nya"
    echo -e "${p} *_* Jangan Lupa Share Tools Ini Ya\n\n"
    sleep 3
    bash jadwal.sh
    fi
    load
    clear
    echo -e "\n${p}[${pu}√${p}]${h}Semua Data Berhasil Di Save"
    echo -e "${p}[${h}•${p}]Silahkan Pilih Nomor 2 Untuk Melihat Nya"
    echo -e "${p} *_* Jangan Lupa Share Tools Ini Ya\n\n"
    sleep 3
    bash jadwal.sh
}
sabtu
}

function jadwal(){
echo -e "		  ${m}[ ${p}HARI INI ${m}] 
		  
            ${p}[${h}01${p}]$sen Senin${o}   ${p}[${h}04${p}]$kam Kamis${o}
            ${p}[${h}02${p}]$sel Selasa${o}  ${p}[${h}05${p}]$jum Jum'at${o}
            ${p}[${h}03${p}]$rab Rabu${o}    ${p}[${h}06${p}]$sab Sabtu${o}
"
	echo -e "\t${p}________________________________"
	
if [[ $sen =~ "$sen" ]];then
echo -e "\t         ${m}[ ${p}$TANGGAL-$BULAN-$TAHUN ${m}]\n"
touch .sen
baris=$( cat s.en | awk {'print "\t     \033[32;1m• \033[39;1m"$1'} )
echo -e "$baris"

elif [[ $sel =~ "$sel" ]];then
touch .sel
echo -e "\t         ${m}[ ${p}$TANGGAL-$BULAN-$TAHUN ${m}]\n"
baris=$( cat .sel | awk {'print "\t     \033[32;1m• \033[39;1m"$1'} )
echo -e "$baris"

elif [[ $rab =~ "$rab" ]];then
touch .rab
echo -e "\t         ${m}[ ${p}$TANGGAL-$BULAN-$TAHUN ${m}]\n"
baris=$( cat .rab | awk {'print "\t     \033[32;1m• \033[39;1m"$1'} )
echo -e "$baris"

elif [[ $kam =~ "$kam" ]];then
touch .kam
echo -e "\t         ${m}[ ${p}$TANGGAL-$BULAN-$TAHUN ${m}]\n"
baris=$( cat .kam | awk {'print "\t     \033[32;1m• \033[39;1m"$1'} )
echo -e "$baris"

elif [[ $jum =~ "$jum" ]];then
touch .jum
echo -e "\t         ${m}[ ${p}$TANGGAL-$BULAN-$TAHUN ${m}]\n"
baris=$( cat .jum | awk {'print "\t     \033[32;1m• \033[39;1m"$1'} )
echo -e "$baris"

elif [[ $ming =~ "$ming" ]];then
echo -e "\t         ${m}[ ${p}$TANGGAL-$BULAN-$TAHUN ${m}]"
echo -e "\n\t${m}     [ ${k}HARI  MINGGU LIBUR ${m}]"

elif [[ $sab =~ "$sab" ]];then
touch .sab
getok=$(cat .sab | wc -l)
if [[ $getok =~ "0" ]];then
echo -e "\t         ${m}[ ${p}$TANGGAL-$BULAN-$TAHUN ${m}]"
echo -e "\n\t${m}         [ ${p}HARI LIBUR ${m}]"

else
echo -e "\t         ${m}[ ${p}$TANGGAL-$BULAN-$TAHUN ${m}]\n"
baris=$( cat .sab | awk {'print "\t     \033[32;1m• \033[39;1m"$1'} )
echo -e "$baris"
fi
fi
echo -e "\t${p}________________________________\n"
}

function menu(){
echo -e "\n\t${p}[${h}01${p}] Buat Jadwal Pelajaran"
echo -e "\t${p}[${h}02${p}] Tampilkan Jadwal Nya"
echo -e "\t${p}[${h}03${p}] Edit Jadwal"
echo -e "\t${p}[${h}04${p}] ${h}About"
echo -e "\t${p}[${h}00${p}] ${m}Exit\n"
echo -e "\t${p}________________________________\n"
printf "\t${p}[${h}•${p}]PILIH${m}: ${h}"
read rus;

if [[ $rus =~ "01" ]] || [[ $rus =~ "1" ]];then
clear
banner
daftar

elif [[ $rus =~ "02" ]] || [[ $rus =~ "2" ]];then
clear
banner
jadwal
printf "\n\t${p}[${h}•${p}]Kembali ${k}[${h}Y${p}/${m}T${k}]${m}: ${h}" back
read back;
if [[ $back =~ "Y" ]] || [[ $back =~ "y" ]];then
bash jadwal.sh

elif [[ $back =~ "T" ]] || [[ $back =~ "t" ]];then
exit 1

else 
printf "\n${h}              ~ ~  ┌${p1}∩${h}┐${k}(${m}◣${p1}_${m}◢${k})${h}┌${p1}∩${h}┐  ~ ~\n"
printf "              ${p}[${m}!${p}]${m} pilihan salah ${p}[${m}!${p}]${k}\n"
sleep 1
bash jadwal.sh
fi

elif [[ $rus =~ "03" ]] || [[ $rus =~ "3" ]];then
clear
banner
daftar

elif [[ $rus =~ "04" ]] || [[ $rus =~ "4" ]];then
banner
about

elif [[ $rus =~ "00" ]] || [[ $rus =~ "0" ]];then
printf "\n${h}              ~ ~  ┌${p1}∩${h}┐${k}(${m}◣${p1}_${m}◢${k})${h}┌${p1}∩${h}┐  ~ ~\n"
printf "              ${p}[${h}•${p}]${p} Thanks You *_* ${p}[${h}•${p}]${k}\n"
sleep 1
exit 1

else 
printf "\n${h}              ~ ~  ┌${p1}∩${h}┐${k}(${m}◣${p1}_${m}◢${k})${h}┌${p1}∩${h}┐  ~ ~\n"
printf "              ${p}[${m}!${p}]${m} pilihan salah ${p}[${m}!${p}]${k}\n"
sleep 1
bash jadwal.sh
fi
}
menu
