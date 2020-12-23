# Prism DGTD simulation toolkit with GDM for pixelized metasurface
## This simulation package is the prism-based Discontinuous Galerkin Time Domain method with General Dispersion Model for analysis of gold pixelized metasurfaces.

## How to use it:

Open "runme.m" in MATLAB. 
Modify the time span and the Geo matrix "A". The geometry is a 2-fold symmetric unit cell with a period of 400 nm. The unit cell can be patterned by several gold pixels, measures 50 nm × 50 nm × 20 nm. In order to add gold padding, one could input the number of padding, and then the index numbering. The index number ascends along x- and y- axes, as depicted in below figures.   ![image](https://github.com/maiwending/pDGTD_GDM/blob/master/readme_fig/1.png)

Modify the material GDM parameters.

The MATLAB script will automatically call the pDGTD simulation toolkit, and then the postprocessing programe to plot the transmission and reflection of the metasurface. It will depict the transmission and reflection response in time-domain and frequency-domain (400 nm – 2000 nm). Currently, it only gives results upon x-polarized excitation.
![image](https://github.com/maiwending/pDGTD_GDM/blob/master/readme_fig/2.png)

## Computational efficiency comparison:

For the default example, the CPU times of different method are listed below:

pDGTD Default mode: 2000 s.

pDGTD RELEASE mode: 180 s.

CST Studio Software: 662 s.


## Dependencies:

In the latest version, the MKL dependency has been removed.

## Reference:

Wending Mai, Sawyer D. Campbell, Eric B. Whiting, Lei Kang, Pingjuan L. Werner, Yifan Chen, and Douglas H. Werner, "Prismatic discontinuous Galerkin time domain method with an integrated generalized dispersion model for efficient optical metasurface analysis," Opt. Mater. Express 10, 2542-2559 (2020)

Please cite if you find this simulation toolkit useful.

## Contact:

The webpage of our lab: http://cearl.ee.psu.edu/

The functionality of this toolkit is currently limited. If you find any bug, or feel interested in cooperation, please contact me at: wdm@ieee.org.



