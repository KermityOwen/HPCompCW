# High-Performance Computing


## README
The final program is "advection2D.c". However all the previous iterations for tasks 2.1 - 2.3 are also included in the folder "./prev_tasks/". All the plots for submission are in the "./submit_plots/" directory. The reasons for certain loops not being able to be parrallelise are in the source code itself in the form of comments.

GITHUB LINK: https://github.com/KermityOwen/HPCompCW

---
## Requirements
- A C compiler (duh)
- Gnuplot


---
## Instructions
Contains instructions for Mac and Linux. I don't know how to use C on windows so no instructions for that. Mac instructions are complicated because the packaged clang from xcode doesn't allow for OpenMP which means we need to make workarounds.

### --- Manual Setup ---
*FOR LINUX:*
- Open terminal and CD to the "`HPCompCW`" directory
- Compile the program with "`gcc -fopenmp -o advection2d -std=c99 advection2D.c -lm ./advection2d`"
- Run the program with "`./advection2d`"
- Then generate plot using "`gnuplot {PLOT_FILE_HERE.dat}`"

*FOR MAC:*
- Install llvm through homebrew using "`brew install llvm`"
- Add the following lines to your ".zshrc" or ".bashrc" or any read command of preferred shell:
    - `export PATH=/opt/homebrew/opt/llvm/bin:$PATH`
    - `export LDFLAGS=-L/opt/homebrew/opt/llvm/lib`
    - `export CPPFLAGS=-I/opt/homebrew/opt/llvm/include`
    - `export OMP_NUM_THREADS=4` !! REPLACE 4 WITH THE NUMBER OF THREADS TO USE !!

    - **OPTIONAL:** `alias llvm=/opt/homebrew/opt/llvm/bin/clang`
- Open terminal and CD to the "`HPCompCW`" directory
- Compile the program with "`/opt/homebrew/opt/llvm/bin/clang $LDFLAGS -fopenmp -o advection2d -std=c99 advection2D.c -lm ./advection2d`"
- Run the program with "`./advection2d`"
- Then generate plot using "`gnuplot {PLOT_FILE_HERE.dat}`"


### --- Easy Setup --- ###

*FOR LINUX:*
- Open terminal and CD to the "`HPCompCW`" directory
- Run "`bash run_linux.sh`
- Will auto complile, run and plot

*FOR MAC:*
- Do the initial manual setup for llvm as listed above
- Open terminal and CD to the "`HPCompCW`" directory
- Run "`bash run_mac.sh`
- Will auto complile, run and plot