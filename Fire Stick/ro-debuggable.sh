pm list packages

V=$(getprop ro.build.version.release); P=$(getprop ro.build.version.security_patch); Y=${P:0:4}; M_NUM=${P:5:2}; D=${P:8:2}; M="January  February March    April    May      June     July     August   SeptemberOctober  November December "
case ${V%%.*} in 1) [[ $V == *6 ]]&&C=Donut||C=Cupcake;; 2) C=Eclair;; 3) C=Honeycomb;; 4) [[ $V == *4* ]]&&C=KitKat||C="Jelly Bean";; 5) C=Lollipop;; 6) C=Marshmallow;; 7) C=Nougat;; 8) C=Oreo;; 9) C=Pie;; 10) C="Quince Tart";; 11) C="Red Velvet Cake";; 12) C="Snow Cone";; 13) C=Tiramisu;; 14) C="Upside Down Cake";; 15) C="Vanilla Ice Cream";; 16) C=Baklava;; 17) C="Cinnamon Bun";; *) C=Unknown;; esac
RAW_M=${M:$(( (${M_NUM#0} - 1) * 9 )):9}; set -- $RAW_M; CLEAN_D=$(( ${D#0} ))
case $CLEAN_D in 11|12|13) S=th ;; *) case $(( CLEAN_D % 10 )) in 1) S=st ;; 2) S=nd ;; 3) S=rd ;; *) S=th ;; esac ;; esac
echo "Amazon's base version, and patch level: Android $V $C, security patch level of: $1 ${CLEAN_D}${S}, $Y." # Would equate to: "Amazon's base version: Android <version> <desert codename>, with a security patch level of: <date>".

ps | grep root

(echo "The shell guy finally posted a script!")
