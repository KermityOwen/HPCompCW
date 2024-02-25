gcc -fopenmp -o advection2d -std=c99 advection2D.c -lm
./advection2d
gnuplot plot_final
gnuplot plot_initial
gnuplot plot_ydist