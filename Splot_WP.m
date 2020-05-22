%time step size for DGTD3

Result=load('result.txt');
dt=Result(1,1);
c0 = 299792458;    % the speed of light, [m/c]

%dt=3.45e-18;
%mode coefficient for the excitation
Vin=load('Vin_mode_Zhang_Debye.txt');
%mode coefficient for the total mode voltage at the excitation port:Vr=Vreflected+Vin
Vr=load('Vr_mode_Zhang_Debye.txt');
%mode coefficient for the transmitted volatge at load port
Vt=load('Vt_mode_Zhang_Debye.txt');
% Vin=Vin(1:60000);
% Vr=Vr(1:60000);
% Vt=Vt(1:60000);

nover=size(Vr,1);
tt=0:nover-1;
figure(1)
title('Transient response');
plot(tt*dt,Vr-Vin,'k','LineWidth',2)
hold on
plot(tt*dt,Vt,'r-o','LineWidth',2,'MarkerIndices',1:500:length(Vt))
hold on
plot(tt*dt,Vin,'g--','LineWidth',2)
% hold on
% plot(tt*dt/1e-9,Vr,'b','LineWidth',2)
xlabel('Time (s)');
ylabel('Amplitude');
legend('Reflection','Transmission','Input','location','best');
 legend boxoff;
 hold off

fod=fopen('time.txt','wt');
for ii=1:nover
    fprintf(fod,'%.12f  %.12f   %.12f  %.12f \n',ii*dt,Vin(ii),Vr(ii)-Vin(ii),Vt(ii));
end
fclose(fod);

nover=nover*10;
% FFT transform
FFT_Vin(:,1)=fft(Vin,nover);
FFT_Vr(:,1)=fft(Vr,nover);
FFT_Vt(:,1)=fft(Vt,nover);
Freq(:,1)=1/dt*linspace(0,1,nover);
deltaf=Freq(2)-Freq(1) % frequency resolution
Ns=ceil(150e12/deltaf);
No=ceil(1600e12/deltaf);

S11(:,1)=((FFT_Vr-FFT_Vin)./(FFT_Vin));
S21(:,1)=((FFT_Vt)./(FFT_Vin));
fod=fopen('prism.txt','wt');
for ii=Ns:Ns+size(Freq(Ns:No)/1e9)
    fprintf(fod,'%.12f  %.12f   %.12f   \n',Freq(ii)/1e9,20*log10(abs(S11(ii))),20*log10(abs(S21(ii))));
end
fclose(fod);

lamda1=c0./Freq(Ns:No)/1e-9;

figure (2)
title('S-parameters');
%plot(Freq(Ns:No)/1e9,20*log10(abs(S11(Ns:No))),'-r','LineWidth',3)
%plot(Freq(Ns:No)/1e12,abs(S11(Ns:No)),'--r','LineWidth',3)
plot(lamda1,abs(S11(Ns:No)),'--b','LineWidth',3)
hold on
%plot(Freq(Ns:No)/1e9,20*log10(abs(S21(Ns:No))),'-k','LineWidth',3)
%plot(Freq(Ns:No)/1e12,abs(S21(Ns:No)),'-k','LineWidth',3)
plot(lamda1,abs(S21(Ns:No)),'-k','LineWidth',3)
hold on
xlim([400,2000]);
legend('Reflection prism DGTD','Transmission prism DGTD','location','best');
legend boxoff;
hold off
%Reference from Analytic
% [lamda2,HS11,HS21]=textread('S.txt','%f %f %f');
% plot(lamda2,HS11,'rs','MarkerSize',8,'MarkerIndices',1:100:length(HS11))
% hold on
% plot(lamda2,HS21,'gd','MarkerSize',8,'MarkerIndices',1:100:length(HS11))
% xlabel('Wavelength (nm)');
% ylabel('Amplitude');
% legend('|R| DGTD+GDM','|T| DGTD+GDM','|R| Analytical','|T| Analytical','location','best');
% legend boxoff;
% hold off



