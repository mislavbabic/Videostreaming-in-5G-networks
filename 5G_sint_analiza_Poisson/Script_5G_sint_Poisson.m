clear; clc;
close all;

%Učitavanje Netflix dataseta
load('Sint_Netflix_driving.mat');
load('Sint_Netflix_static.mat');
load('netflix-static-names.mat');
load('netflix-driving-names.mat');

%Učitavanje Amazon Prime dataseta
load('Sint_Amazon_Prime_driving.mat');
load('Amazon_Prime_driving-names.mat');
load('Sint_Amazon_Prime_static.mat');
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
        var_column = input('Odaberi željeni Netflix_Static zapis (1-6): ');
        while or(var_column > size(Sint_Netflix_static,2), var_column < 1)
            var_column = input('Pogrešan unos! Pokušajte ponovo: ');
        end
    case 2
        var_column = input('Odaberi željeni Netflix_Driving zapis (1-6):  ');  
        while or(var_column > size(Sint_Netflix_driving,2), var_column < 1)
            var_column = input('Pogrešan unos! Pokušajte ponovo: ');
        end
    case 3
        var_column = input('Odaberi željeni Amazon_Prime_static zapis (1-6):  ');  
        while or(var_column > size(Sint_Amazon_Prime_static,2), var_column < 1)
            var_column = input('Pogrešan unos! Pokušajte ponovo: ');
        end
    case 4
        var_column = input('Odaberi željeni Amazon_Prime_driving zapis (1-6):  '); 
        while or(var_column > size(Sint_Amazon_Prime_driving,2), var_column < 1)
            var_column = input('Pogrešan unos! Pokušajte ponovo: ');
        end
end

switch var_dataset
    case 1
        Network_trace = Sint_Netflix_static(:, var_column);
        trace_name = Netflix_static_names(var_column);
    case 2
        Network_trace = Sint_Netflix_driving(:, var_column);
        trace_name = Netflix_driving_names(var_column);
    case 3
        Network_trace = Sint_Amazon_Prime_static(:, var_column);
        trace_name = Amazon_Prime_static_names(var_column);
    case 4
        Network_trace = Sint_Amazon_Prime_driving(:, var_column);
        trace_name = Amazon_Prime_driving_names(var_column);
end

% Provjera veličine matrice
[rows, columns] = size(Network_trace);

% Slijedi dijeljenje podataka u dva segmenta, segment_1 sadrži propusnosti
% manje od 200 kb/s, a segment_2 propusnosti jednake ili veće od 200 kb/s.
% Statistička analiza radi se odvojeno za ta dva segmenta. Osim toga, u
% raspodjela_t spremaju se podaci o trajanju grupe uzastopnih zapisa
% propusnosti manje od 200 kb/s, au raspodjela_T o trajanju grupe
% uzastopnih zapisa većih ili jednakih 200 kb/s

vrijeme = zeros(1, rows);
z = 1;  %indeks polja segment_1
w = 1;  %indeks polja segment_2
t1 = 0; %varijabla koja prati trajanje segment_1
T1 = 0; %varijabla koja prati trajanje segment_2
p = 1;  %indeks polja raspodjela_T
r = 1;  %indeks polja raspodjela_t

column_data_1 = Network_trace(:,1)+1;
prvi=column_data_1(1);

if prvi<200
    redoslijed=0;
else
    redoslijed=1;
end

for k=1:(rows-1)
   radni=column_data_1(k); 
   sljedeci=column_data_1(k+1); 
   if isnan(radni)
      break
   end
   if radni<200
      Segment_1(z)=radni; 
      z=z+1;
      vrijeme(k)=0; %
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

% Prikaz originalnih podataka
for i = 1:1
    figure;
    plot(Network_trace(:, i));
    title(sprintf('Mrežni zapis sint-%s', trace_name));
    xlabel('Vrijeme (s)');
    ylabel('Propusnost (kbit/s)');
end

% Inicijalizacija strukture za spremanje segmenata
segments = struct();

% Spremanje segmenata u strukturu
segments.Segment_1 = Segment_1;
segments.Segment_2 = Segment_2;
segments.Raspodjela_t = Raspodjela_t;
segments.Raspodjela_T = Raspodjela_T;

% Inicijalizacija strukture za spremanje rezultata fitmethis
fitResults = struct(); 

%Izračun srednje vrijednosti i standardne devijacije
means = [];
std_devs = [];
fields = fieldnames(segments);

for i = 1:length(fields)
    segmentName = fields{i};
    means(i) = mean(segments.(segmentName), 'omitnan');
    std_devs(i) = std(segments.(segmentName), 'omitnan');
end

% Polje stringova koje sadrži nazive distribucije
distro_names = ["nakagami", "weibull", "rician", "gamma", "normal"];

% Dobivanje svih naziva segmenata
segmentNames = fieldnames(segments);

% Transponiranje segmenata (ako je potrebno)
for i = 1:numel(segmentNames)
    segments.(segmentNames{i}) = segments.(segmentNames{i})';
end

fitResults_filtered = struct();

for i = 1:length(segmentNames)
    segmentName = segmentNames{i};
    fprintf('\n%s', segmentName);
    error_counter = 0;
    firstPass = true;
    fprintf('\nMean: %.4f', means(i));
    fprintf('\nStandard devation: %.4f\n', std_devs(i));
  
    for j = 1:length(distro_names)
        try
            if firstPass
                figHandle = figure;
                title([strrep(segmentName, '_', '\_'), ' (', char(distro_names(j)),')']);
                xlabel('Vrijeme [s]');
                ylabel('Propusnost [kbit/s]');
                firstPass = false;
                fitResults = fitmethis(segments.(segmentName), 'dtype', 'cont', 'criterion', 'LL', 'pref', distro_names(j));
             else
                figHandle = figure;
                title([strrep(segmentName, '_', '\_'), ' (', char(distro_names(j)),')']);
                xlabel('Vrijeme [s]');
                ylabel('Propusnost [kbit/s]');
                fitResults = fitmethis(segments.(segmentName), 'dtype', 'cont', 'criterion', 'LL', 'output', 'off', 'pref', distro_names(j));
             end
        catch exception
            fprintf('Could not plot %s distribution\n', char(distro_names(j)));
            disp(exception.message);
            if isvalid(figHandle) 
                close(figHandle);  
            end
            error_counter = error_counter + 1;
        end
    end
    if(error_counter >= 1)
        try
        % Provjeri je li naziv prve distribucije 'Kernel'
            if strcmp(fitResults(1).name, 'Kernel')
                fprintf('First distribution is Kernel, skipping to the next best by LL\n');

                % Izbaci prvu distribuciju (Kernel) i pronađi najbolju po LL među preostalim
                remainingResults = fitResults(2:end); % Ukloni prvu distribuciju

                % Pronađi distribuciju s najvećom LL među preostalim
                [~, bestIndex] = max([remainingResults.LL]);

                % Dodaj 1 jer smo radili sa segmentom od 2. do kraja
                bestResult = remainingResults(bestIndex);
                fprintf('Next best fit is %s distribution\n', char(bestResult.name));
            else
                % Ako prva distribucija nije 'Kernel', koristi nju
                bestResult = fitResults(1);
                fprintf('Next best fit is %s distribution\n', char(bestResult.name));
            end
            % Iscrtaj najbolju distribuciju
            figure;
            title(['Best fit result for ', strrep(segmentName, '_', '\_'), ' (', bestResult.name, ')']);
            xlabel('Vrijeme [s]');
            ylabel('Propusnost [kbps]');
            plotfitdist(segments.(segmentName), bestResult, 'cont');
            
            catch innerException
                fprintf('Fallback fitmethis() failed for segment %s\n', segmentName);
                disp(innerException.message);
        end
    end
end









