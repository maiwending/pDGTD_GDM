clear;
%computation physical time
time=1e-14;
%Geo matrix for the metasurface pattern (on x- and y- directions)
A=[1,1;2,1;3,1;2,2;2,3;3,3;];
%GDM matrix for the material (on x- and y- directions)
eps_inf=1.54;
GDM=[1.73511820970468e+32,3.59847832031763e+31,6.82788207459183e+31;0,-7.19815894352631e+15,-9.01622816184883e+15;0,1.70450798589132e+31,3.67497233805956e+31;-129907004641990,-1.98279112348300e+15,-3.55405956096010e+15];

%fid = fopen('in.txt','w');
[fid, message] = fopen('in.txt','w');
if fid < 0
   error('Failed to open myfile because: %s', message);
end
fprintf(fid,'%d\n',time);
[rownum,nouse]=size(A);
fprintf(fid,'%d\n',rownum);
for i=1:rownum
    fprintf(fid,'%d  %d\n',A(i,1),A(i,2));
end
fprintf(fid,'%d\n',eps_inf);
for  i=1:3
    fprintf(fid,'%e  %e  %e  %e\n',GDM(1,i),GDM(2,i),GDM(3,i),GDM(4,i));
end
fclose(fid);

%call the .exe file
ExeFileName='pDGTD.exe';
ExeFilePath=fullfile('.\',ExeFileName);
%fid = fopen('myBatchFile.bat','w');
[fid, message] = fopen('myBatchFile.bat','w');
if fid < 0
   error('Failed to open myfile because: %s', message);
end
fprintf(fid,'%s\n','set path=%path:C:\Program Files\MATLAB\R2017a\bin\win64;=%');
fprintf(fid,'%s\n','pDGTD.exe 0 1 0');
fclose(fid);
system('myBatchFile.bat');
%post-processing
Splot_WP;
