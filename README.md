# pDGTD_GDM
This simulation package is prism-based Discontinuous Galerkin Time Domain method with General Dispersion Model for analysis of gold pixelized metasurfaces.


Use at Your Own Risk. We provide an electromagnetic computation package using prism-based discontinuous Galerkin time domain (DGTD) method. You may use it for non-commercial and commercial use. We try to ensure that the simulation result to be accurate. Despite our efforts, however, contents or computation results may, from time to time, contain error.

This simulation package is prism-based Discontinuous Galerkin Time Domain method with General Dispersion Model for analysis of gold pixelized metasurfaces.

How to use it?
1.	Modify the Input file.
In the input file “in.txt”, one can modify the time span and the geometry. The geometry is a 2-fold symmetric unit cell with a period of 400 nm. The unit cell can be patterned by several gold pixels, measures 50 nm × 50 nm × 20 nm. In order to add gold padding, one could input the number of padding, and then the index numbering. The index number ascends along x- and y- axes, as depicted in below figures.   ![image](http://github.com/maiwending/readme_fig/raw/master/images/1.jpg)
2.	Run the “pDGTD’ executable file for computation.
3.	Run the Post_processing.exe to depict the transmission and reflection response in 
time-domain and frequency-domain (400 nm – 2000 nm). Currently, it only gives results upon x-polarized excitation.
![image](http://github.com/maiwending/readme_fig/raw/master/images/2.jpg)

Dependencies:
The folder itself should contain the executable file in DEBUG mode with all the dependent library file that ready to go. 
For higher computational efficiency, one could choose to download free Intel Math Kernel Library (MKL): 
https://software.intel.com/en-us/mkl/choose-download/windows
One could download, install, add to path of the MKL. And then paste the pDGTD.exe file into the default fold to run the package in more efficient RELEASE mode.

Efficiency comparison:
For the default example, the CPU times of different method are listed below:
pDGTD DEBUG mode: 2000 s
pDGTD RELEASE mode: 180 s
CST Studio Software: 662 s

Contact:
The functionality of this toolkit is currently limited. If you find any bug, or feel interested in cooperation, please contact me at: wdm@ieee.org.



