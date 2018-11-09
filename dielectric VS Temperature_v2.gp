#set terminal postscript enhanced color font 'Helvetica,10'

###set 
#set output 'Dielectric constant VS T.ps'
set style func linespoints

#defien parameters and f(x) to calculate Cp
A = 0.009875 # cm2
d = 240 # um
 
f(c)= c*d*0.000001/(A*0.0001*8.845*10**-12)

### define axises and range 
set title 'Dielectric constant VS Temperature'
set xlabel '{/Helvetica-Italic T} (K)' font "Times-Roman,16"  ##Italic formatting
set ylabel '{/Symbol-Italic e}{_r}' font "Times-Roman,16" ##upper and lower label using ^,_
set xrange [200:300]
set yrange [0:30000]

###set line style
# lt -1 means line
# lt 0 means dote

set style line 1 lt -1 lc rgb "red" lw 3
set style line 2 lt -1 lc rgb "orange" lw 3
set style line 3 lt -1 lc rgb "blue" lw 3
set style line 4 lt -1 lc rgb "dark-green" lw 3
set style line 5 lt -1 lc rgb "0x5F9EA0" lw 3
set style line 6 lt -1 lc rgb "0x8B4513" lw 3
set style line 7 lt -1 lc rgb "black" lw 3

###set tics
set ytics auto
set xtics 20

set key bottom right vertical 
set key font "Times,10"

###final plot
plot 'cooling-2K min-200-300K.tab' using 9:(f($1)) title '10{^2} Hz' w l ls 1,\
'cooling-2K min-200-300K.tab' using 9:(f($2)) title '10{^3} Hz' w l ls 2,\
'cooling-2K min-200-300K.tab' using 9:(f($3)) title '10{^4} Hz' with line ls 3,\
'cooling-2K min-200-300K.tab' using 9:(f($4)) title '10{^5} Hz' with line ls 4,\
