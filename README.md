# Prism DGTD simulation toolkit with GDM for pixelized metasurface
## This simulation package is prism-based Discontinuous Galerkin Time Domain method with General Dispersion Model for analysis of gold pixelized metasurfaces.

## How to use it:

Open "runme.m" in MATLAB. 
Modify the time span and the Geo matrix "A". The geometry is a 2-fold symmetric unit cell with a period of 400 nm. The unit cell can be patterned by several gold pixels, measures 50 nm × 50 nm × 20 nm. In order to add gold padding, one could input the number of padding, and then the index numbering. The index number ascends along x- and y- axes, as depicted in below figures.   ![image](https://github.com/maiwending/pDGTD_GDM/blob/master/readme_fig/1.png)


The MATLAB script will automatically call the pDGTD simulation toolkit, and then the postprocessing programe to plot the transmission and reflection of the metasurface. It will depict the transmission and reflection response in time-domain and frequency-domain (400 nm – 2000 nm). Currently, it only gives results upon x-polarized excitation.
![image](https://github.com/maiwending/pDGTD_GDM/blob/master/readme_fig/2.png)

## Efficiency comparison:

For the default example, the CPU times of different method are listed below:

pDGTD Default mode: 2000 s.

pDGTD RELEASE mode: 180 s.

CST Studio Software: 662 s.


## Dependencies:

For better efficiency, the user could replace the pDGTD.exe with the file in the "RELEASE mode" folder.
In order to run the program in release mode, the useer have to install the free Intel Math Kernel Library (MKL): 
https://software.intel.com/en-us/mkl/choose-download/windows
The user could download, install, add to path of the MKL. And then run the package same as above instructions.

## Reference:

The paper is submitted to Optics Material Express, entitled as "A Prismatic Discontinuous Galerkin Time Domain Method with Integrated Generalized Dispersion Model for Efficient Optical Metasurface Analysis".

Please, cite that paper if you find this simulation toolkit useful.

## Contact:

The webpage of our lab: http://cearl.ee.psu.edu/

The functionality of this toolkit is currently limited. If you find any bug, or feel interested in cooperation, please contact me at: wdm@ieee.org.



