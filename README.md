# pDGTD_GDM
## This simulation package is prism-based Discontinuous Galerkin Time Domain method with General Dispersion Model for analysis of gold pixelized metasurfaces.

### Use at Your Own Risk. 
We provide an electromagnetic computation package using prism-based discontinuous Galerkin time domain (DGTD) method. You may use it for non-commercial and commercial use. We try to ensure that the simulation result to be accurate. Despite our efforts, however, contents or computation results may, from time to time, contain error.

## Dependencies:
One should choose to download free Intel Math Kernel Library (MKL): 
https://software.intel.com/en-us/mkl/choose-download/windows
One could download, install, add to path of the MKL. And then run the package as follows.

## How to use it?
1.	Modify the Input file.
In the input file “in.txt”, one can modify the time span and the geometry. The geometry is a 2-fold symmetric unit cell with a period of 400 nm. The unit cell can be patterned by several gold pixels, measures 50 nm × 50 nm × 20 nm. In order to add gold padding, one could input the number of padding, and then the index numbering. The index number ascends along x- and y- axes, as depicted in below figures.   ![image](https://github.com/maiwending/pDGTD_GDM/blob/master/readme_fig/1.png)
2.	Run the “pDGTD’ executable file for computation.
3.	Run the Post_processing.exe to depict the transmission and reflection response in 
time-domain and frequency-domain (400 nm – 2000 nm). Currently, it only gives results upon x-polarized excitation.
![image](https://github.com/maiwending/pDGTD_GDM/blob/master/readme_fig/2.png)

## Efficiency comparison:
For the default example, the CPU times of different method are listed below:
pDGTD : 180 s
CST Studio Software: 662 s

## Contact:
My profile can be found in: http://cearl.ee.psu.edu/staff/WMai.html
The functionality of this toolkit is currently limited. If you find any bug, or feel interested in cooperation, please contact me at: wdm@ieee.org.



