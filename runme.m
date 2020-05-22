clear;
%computation physical time
time=1e-14;
%Geo matrix for the material (on x- and y- directions)
A=[1,1;2,1;3,1;2,2;2,3;3,3;];
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
