pm list packages

V=$(getprop ro.build.version.release)
case ${V%%.*} in 1) [[ $V == *6 ]]&&C=Donut||C=Cupcake;; 2) C=Eclair;; 3) C=Honeycomb;; 4) [[ $V == *4* ]]&&C=KitKat||C="Jelly Bean";; 5) C=Lollipop;; 6) C=Marshmallow;; 7) C=Nougat;; 8) C=Oreo;; 9) C=Pie;; 10) C="Quince Tart";; 11) C="Red Velvet Cake";; 12) C="Snow Cone";; 13) C=Tiramisu;; 14) C="Upside Down Cake";; 15) C="Vanilla Ice Cream";; 16) C=Baklava;; 17) C="Cinnamon Bun";; *) C=Unknown;; esac
echo "Amazon's base version: Android $V $C." # Would equate to: "Amazon's base version: Android <version> <desert codename>.

ps | grep root

(echo "The shell guy finally posted a script!")
