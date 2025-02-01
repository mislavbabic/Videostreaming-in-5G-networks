clear; clc;
close all;

% Generira sluèajne nizove za vektore t, T, segment 1 i segment 2  s parametrima ovisno o distribuciji,
% duljinat - duljina t niza (niz t sadrži trajanje dijelova s propusnosti manjom od 200 kbit/s
% duljinaT - duljina T niza (niz T sadrži trajanje dijelova s propusnosti veæom ili jednakom  200 kbit/s
% distrt - distribucija niza t s parametrima par1 i par 2
% distrT - distribucija niza T s parametrima par3 i par 4
% distrs1 - distribucija niza s1 s parametrima par5 i par 6 (niz s1 sadrži izmjerene propusnosti u u ntervalima definiranim s nizom t)
% distrs2 - distribucija niza s2 s parametrima par7 i par 8  (niz s2 sadrži izmjerene propusnosti u u ntervalima definiranim s nizom t)

% Netflix-static-2
distrs1 = 'weibull'; %SEGMENT 1
par5 = 1.9202;
par6 = 0.8965;
distrs2 = 'nakagami';  %SEGMENT 2
par7 = 0.4195;
par8 = 414889479;
distrt = 'gamma';  %Raspodjela t
par1 = 2.0087;
par2 = 21.14;
distrT = 'gamma';  %Raspodjela T
par3 = 4.368;
par4 = 0.3231;

%*************************************************************************
%Netfix-static-3
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 1.9842;
% par6 = 0.8298;
% distrs2 = 'weibull';  %SEGMENT 2
% par7 = 17424.6;
% par8 = 1.06;
% distrt = 'nakagami';  %Raspodjela t
% par1 = 0.64;
% par2 = 2088.97;
% distrT = 'gamma';  %Raspodjela T
% par3 = 5.33;
% par4 = 0.2724;

%****************************************************************
%Netfix-static-4
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 2.0324;
% par6 = 0.8209;
% distrs2 = 'gamma';  %SEGMENT 2
% par7 = 1.3172;
% par8 = 14219.9;
% distrt = 'weibull';  %Raspodjela t
% par1 = 44.18;
% par2 = 1.4982;
% distrT = 'gamma';  %Raspodjela T
% par3 = 7.1294;
% par4 = 0.1799;

%**************************************************************
%Netfix-static-5
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 2.3721;
% par6 = 0.7328;
% distrs2 = 'gamma';  %SEGMENT 2
% par7 = 0.9872;
% par8 = 10808.96;
% distrt = 'normal';  %Raspodjela t
% par1 = 30.7750;
% par2 = 17.0396;
% distrT = 'gamma';  %Raspodjela T
% par3 = 3.8403;
% par4 = 0.6315;

%****************************************************************
%Netfix-static-9
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 2.1223;
% par6 = 0.7879;
% distrs2 = 'gamma';  %SEGMENT 2
% par7 = 0.8570;
% par8 = 15191.5829;
% distrt = 'normal';  %Raspodjela t
% par1 = 32.3966;
% par2 = 15.4726;
% distrT = 'gamma';  %Raspodjela T
% par3 = 3.3973;
% par4 = 0.6428;

%****************************************************************
%Netfix-static-10
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 2.1104;
% par6 = 0.8202;
% distrs2 = 'weibull';  %SEGMENT 2
% par7 = 15433.47;
% par8 = 1.0259;
% distrt = 'normal';  %Raspodjela t
% par1 = 34.1429;
% par2 = 13.3110;
% distrT = 'gamma';  %Raspodjela T
% par3 = 2.9769;
% par4 = 0.6718;

%***************************************************************+
%Netflix-driving-1
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 2.0078;
% par6 = 0.8615;
% distrs2 = 'gamma';  %SEGMENT 2
% par7 = 1.2195;
% par8 = 6094.41;
% distrt = 'weibull';  %Raspodjela t
% par1 = 46.9545;
% par2 = 1.8288;
% distrT = 'gamma';  %Raspodjela T
% par3 = 2.0898;
% par4 = 1.5039;

%****************************************************************
%Netflix-driving-3
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 2.4642;
% par6 = 0.7161;
% distrs2 = 'nakagami';  %SEGMENT 2
% par7 = 0.2869;
% par8 = 502513567.4;
% distrt = 'nakagami';  %Raspodjela t
% par1 = 0.3485;
% par2 = 1024.6;
% distrT = 'gamma';  %Raspodjela T
% par3 = 3.1129;
% par4 = 0.6425;

%****************************************************************
%Netflix-driving-9
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 1.9802;
% par6 = 0.8309;
% distrs2 = 'nakagami';  %SEGMENT 2
% par7 = 0.6247;
% par8 = 144108664.61;
% distrt = 'gamma';  %Raspodjela t
% par1 = 1.8376;
% par2 = 25.4410;
% distrT = 'gamma';  %Raspodjela T
% par3 = 2.8051;
% par4 = 0.7766;

%****************************************************************
%Netflix-driving-11
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 2.6268;
% par6 = 0.6776;
% distrs2 = 'gamma';  %SEGMENT 2
% par7 = 0.8962;
% par8 = 8494.4;
% distrt = 'nakagami';  %Raspodjela t
% par1 = 0.3540;
% par2 = 1667.7;
% distrT = 'gamma';  %Raspodjela T
% par3 = 1.9220;
% par4 = 1.2330;

%****************************************************************
%Netflix-driving-12
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 2.0663;
% par6 = 0.8109;
% distrs2 = 'nakagami';  %SEGMENT 2
% par7 = 0.4321;
% par8 = 159981474.05;
% distrt = 'normal';  %Raspodjela t
% par1 = 37.47;
% par2 = 12.5573;
% distrT = 'gamma';  %Raspodjela T
% par3 = 2.3242;
% par4 = 1.6933;

%****************************************************************
%Netflix-driving-23
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 2.1058;
% par6 = 0.7695;
% distrs2 = 'weibull';  %SEGMENT 2
% par7 = 4963.8174;
% par8 = 0.8722;
% distrt = 'normal';  %Raspodjela t
% par1 = 38.3409;
% par2 = 15.9330;
% distrT = 'weibull';  %Raspodjela T
% par3 = 5.5181;
% par4 = 0.7783;

%****************************************************************
%Amazon-prime-static-1
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 2.6048;
% par6 = 0.5849;
% distrs2 = 'weibull';  %SEGMENT 2
% par7 = 3422.1728;
% par8 = 0.6847;
% distrt = 'gamma';  %Raspodjela t
% par1 = 1.6430;
% par2 = 1.0105;
% distrT = 'gamma';  %Raspodjela T
% par3 = 5.1277;
% par4 = 0.2824;

%****************************************************************
%Amazon-prime-static-2
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 2.2884;
% par6 = 0.6345;
% distrs2 = 'weibull';  %SEGMENT 2
% par7 = 3244.6532;
% par8 = 0.6883;
% distrt = 'weibull';  %Raspodjela t
% par1 = 1.7895;
% par2 = 0.8569;
% distrT = 'gamma';  %Raspodjela T
% par3 = 3.3408;
% par4 = 0.5112;

%****************************************************************
%Amazon-prime-static-3
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 2.6317;
% par6 = 0.6026;
% distrs2 = 'weibull';  %SEGMENT 2
% par7 = 3739.3298;
% par8 = 0.7011;
% distrt = 'gamma';  %Raspodjela t
% par1 = 1.6305;
% par2 = 1.0222;
% distrT = 'gamma';  %Raspodjela T
% par3 = 5.0519;
% par4 = 0.2887;

%****************************************************************
%Amazon-prime-static-4
% distrs1 = 'nakagami'; %SEGMENT 1
% par5 = 0.2394;
% par6 = 3603.3872;
% distrs2 = 'gamma';  %SEGMENT 2
% par7 = 4.6675;
% par8 = 167.5489;
% distrt = 'nakagami';  %Raspodjela t
% par1 = 0.5885;
% par2 = 2000.1;
% distrT = 'gamma';  %Raspodjela T
% par3 = 1.5923;
% par4 = 1.1979;

%****************************************************************
%Amazon-prime-static-6
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 3.4614;
% par6 = 0.5436;
% distrs2 = 'weibull';  %SEGMENT 2
% par7 = 8356.5120;
% par8 = 1.1005;
% distrt = 'gamma';  %Raspodjela t
% par1 = 3.4674;
% par2 = 0.3491;
% distrT = 'gamma';  %Raspodjela T
% par3 = 1.2533;
% par4 = 1.8400;

%****************************************************************
%Amazon-prime-static-8
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 3.0316;
% par6 = 0.5616;
% distrs2 = 'gamma';  %SEGMENT 2
% par7 = 0.9262;
% par8 = 8848.9664;
% distrt = 'gamma';  %Raspodjela t
% par1 = 2.1246;
% par2 = 0.6492;
% distrT = 'weibull';  %Raspodjela T
% par3 = 2.2253;
% par4 = 0.8708;

%****************************************************************
%Amazon-prime-driving-1
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 3.2152;
% par6 = 0.5541;
% distrs2 = 'weibull';  %SEGMENT 2
% par7 = 1126.1540;
% par8 = 0.8127;
% distrt = 'weibull';  %Raspodjela t
% par1 = 1.7846;
% par2 = 0.7882;
% distrT = 'gamma';  %Raspodjela T
% par3 = 2.6811;
% par4 = 0.8135;

%****************************************************************
%Amazon-prime-driving-4
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 3.8316;
% par6 = 0.5356;
% distrs2 = 'weibull';  %SEGMENT 2
% par7 = 1146.8507;
% par8 = 0.8387;
% distrt = 'weibull';  %Raspodjela t
% par1 = 1.9688;
% par2 = 0.7728;
% distrT = 'gamma';  %Raspodjela T
% par3 = 2.3044;
% par4 = 0.9861;

%****************************************************************
%Amazon-prime-driving-7
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 4.4953;
% par6 = 0.5006;
% distrs2 = 'weibull';  %SEGMENT 2
% par7 = 1081.1968;
% par8 = 0.9336;
% distrt = 'weibull';  %Raspodjela t
% par1 = 1.7775;
% par2 = 0.8548;
% distrT = 'gamma';  %Raspodjela T
% par3 = 2.2784;
% par4 = 1.0307;

%****************************************************************
%Amazon-prime-driving-9
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 3.4389;
% par6 = 0.5469;
% distrs2 = 'weibull';  %SEGMENT 2
% par7 = 1045.8808;
% par8 = 0.8740;
% distrt = 'gamma';  %Raspodjela t
% par1 = 6.7521;
% par2 = 0.1854;
% distrT = 'gamma';  %Raspodjela T
% par3 = 2.9117;
% par4 = 0.6665;

%****************************************************************
%Amazon-prime-driving-15
% distrs1 = 'weibull'; %SEGMENT 1
% par5 = 4.1861;
% par6 = 0.5205;
% distrs2 = 'gamma';  %SEGMENT 2
% par7 = 1.0752;
% par8 = 1048.8290;
% distrt = 'gamma';  %Raspodjela t
% par1 = 2.4843;
% par2 = 0.5896;
% distrT = 'gamma';  %Raspodjela T
% par3 = 2.8678;
% par4 = 0.7076;

%****************************************************************
%Amazon-prime-driving-18
% distrs1 = 'weibull';
% par5 = 11.42;
% par6 = 0.536;
% distrs2 = 'weibul';
% par7 = 1421;
% par8 = 0.8112;
% distrt = 'gamma';
% par1 = 1.887;
% par2 = 0.909;
% distrT = 'gamma';
% par3 = 2.3287;
% par4 = 0.9612;

%**************************************************************************

%Uèitavanje Netflix dataseta
load('Netflix_driving.mat');
load('Netflix_static.mat');
load('netflix-static-names.mat');
load('netflix-driving-names.mat');

%Uèitavanje Amazon Prime dataseta
load('Amazon_Prime_driving.mat');
load('Amazon_Prime_driving-names.mat');
load('Amazon_Prime_static.mat');
load('Amazon_Prime_static-names.mat');

%Prikaz za odabir želejnog dataseta
disp('Odaberi 1 za Netflix_static dataset'); 
disp('Odaberi 2 za Netflix_driving dataset');
disp('Odaberi 3 za Amazon_Prime_static dataset'); 
disp('Odaberi 4 za Amazon_Prime_driving dataset'); 

%Korisnik upisuje koji dataset želi prikazati
var_dataset = input('Unos: ');

%Provjera korisnikovog unosa
while or(var_dataset < 1, var_dataset > 4)
    var_dataset = input('Pogrešan unos! Pokušajte ponovo: ');
end

%Odabir stupca matrice dataseta i provjera korisnikovog unosa
switch var_dataset
    case 1
        var_column = input('Odaberi stupac Netflix_Static matrice (1-10): ');
        while or(var_column > size(Netflix_static,2), var_column < 1)
            var_column = input('Pogrešan unos! Pokušajte ponovo: ');
        end
    case 2
        var_column = input('Odaberi stupac Netflix_Driving matrice (1-23):  ');  
        while or(var_column > size(Netflix_driving,2), var_column < 1)
            var_column = input('Pogrešan unos! Pokušajte ponovo: ');
        end
    case 3
        var_column = input('Odaberi stupac Amazon_Prime_static matrice (1-8):  ');  
        while or(var_column > size(Amazon_Prime_static,2), var_column < 1)
            var_column = input('Pogrešan unos! Pokušajte ponovo: ');
        end
    case 4
        var_column = input('Odaberi stupac Amazon_Prime_driving matrice (1-21):  '); 
        while or(var_column > size(Amazon_Prime_driving,2), var_column < 1)
            var_column = input('Pogrešan unos! Pokušajte ponovo: ');
        end
end

switch var_dataset
    case 1
        Network_trace = Netflix_static(:, var_column);
        trace_name = Netflix_static_names(var_column);
    case 2
        Network_trace = Netflix_driving(:, var_column);
        trace_name = Netflix_driving_names(var_column);
    case 3
        Network_trace = Amazon_Prime_static(:, var_column);
        trace_name = Amazon_Prime_static_names(var_column);
    case 4
        Network_trace = Amazon_Prime_driving(:, var_column);
        trace_name = Amazon_Prime_driving_names(var_column);
end

Network_trace_noNaN = Network_trace(~isnan(Network_trace));

column_data_1 = Network_trace_noNaN(:,1)+1;

prvi=column_data_1(1);

if prvi<200
    redoslijed=0;
else
    redoslijed=1;
end

[rows, columns] = size(Network_trace_noNaN);
vrijeme = zeros(1, rows);
z = 1;  %indeks polja segment_1
w = 1;  %indeks polja segment_2
t1 = 0; %varijabla koja prati trajanje segment_1
T1 = 0; %varijabla koja prati trajanje segment_2
p = 1;  %indeks polja raspodjela_T
r = 1;  %indeks polja raspodjela_t

for k=1:(rows-1)
   radni=column_data_1(k);
   sljedeci=column_data_1(k+1);
   if isnan(radni)
      break
   end
   if radni<200
      Segment_1(z)=radni;
      z=z+1;
      vrijeme(k)=0;
      t1=t1+1;
      if or(sljedeci>=200, k==(rows-1))
         Raspodjela_t(r)=t1;
         r=r+1;
         t1=0;
      end
   else
      Segment_2(w)=radni;
      w=w+1;
      vrijeme(k)=1;
      T1=T1+1;
      if or(sljedeci<200, k==(rows-1))
        Raspodjela_T(p)=T1;
        p=p+1;
        T1=0;
      end
    end
end

duljinat = size(Raspodjela_t, 2);
duljinaT = size(Raspodjela_t, 2);

duljina=min(duljinat,duljinaT);

t=round(random(distrt,par1,par2,[duljina,1]));
T=round(random(distrT,par3,par4,[duljina,1]));

duljinas1=sum(t);
duljinas2=sum(T);

s1=random(distrs1,par5,par6,[duljinas1,1]);
s2=random(distrs2,par7,par8,[duljinas2,1]);

tuk=1;
t2=0;
T2=0;
sint=zeros(1,(duljinas1+duljinas2));

if redoslijed==0
    for i=1:duljina
        t1=t(i);
        T1=T(i);
        for kt=1:t1
               sint(tuk)=s1(kt+t2);
               tuk=tuk+1;
        end
        for kT=1:T1
            sint(tuk)=s2(kT+T2);
             tuk=tuk+1;
        end
        t2=t2+t(i);
        T2=T2+T(i);
    end 
else
     for i=1:duljina
        t1=t(i);
        T1=T(i);
        for kT=1:T1
            sint(tuk)=s2(kT+T2);
              tuk=tuk+1;
        end
        for kt=1:t1
               sint(tuk)=s1(kt+t2);
                tuk=tuk+1;
        end
        
        t2=t2+t(i);
        T2=T2+T(i);
     end
end

figure;
plot(Network_trace);
%Change title depending on trace
title('Izmjereni mrežni zapis (Netflix-static-2)'); 
xlabel('Vrijeme [s]');
ylabel('Propusnost [kbit/s]');
xlim([0 size(Network_trace_noNaN, 1)+100]);

figure;
histogram(sint);
title('Histogram izmjerenog mrežnog zapisa');
xlabel('Propusnost [kbit/s]');

figure;
plot(sint);
title('Sintetizirani mrežni zapis (Amazon-prime-driving-18)');
xlabel('Vrijeme [s]');
ylabel('Propusnost [kbit/s]');

figure;
histogram(sint);
title('Histogram sintetiziranog mrežnog zapisa');
xlabel('Propusnost [kbit/s]');





