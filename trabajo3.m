%% Rutas de los archivos utilizados

cd('C:/Users/Miguel/Desktop/U/Modelos Lineales/Trabajo 3')
addpath('C:\Users\Miguel\Desktop\U\Modelos Lineales')

clc
clear all

%% Cargar datos y guardarlos en un cell array X

[~, ~, raw] = xlsread('casas.xlsx', 'Hoja 1');

X = raw(:,[1,5,12,13,16,43,44,45,49,50,51,52,57,63,78,81]); 

%% Eliminacion de encabezados

X(1,:) = [];

%% Reemplazo de valores de la variable LandSlope

LandSlope = X(:,3);
j = 0;
for j=1:size(LandSlope,1)   
   aux     = LandSlope(j);
   replace = strrep(aux,'Gtl', '0');
   LandSlope(j) = replace;
end
j = 0;
for j=1:size(LandSlope,1)
   aux     = LandSlope(j);
   replace = strrep(aux,'Mod', '1');
   LandSlope(j) = replace;
end
j = 0;
for j=1:size(LandSlope,1) 
   aux     = LandSlope(j);
   replace = strrep(aux,'Sev', '2');
   LandSlope(j) = replace;
end

LandSlope = str2double(LandSlope);
LandSlope = num2cell(LandSlope);
X(:,3) = LandSlope;

%% Reemplazo de valores de la variable Neighborhood

Neighborhood = X(:,4);
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'Blmngtn', '0');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'Blueste', '1');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'BrDale', '2');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'BrkSide', '3');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'ClearCr', '4');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'CollgCr', '5');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'Crawfor', '6');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'Edwards', '7');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'Gilbert', '8');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'IDOTRR', '9');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'MeadowV', '10');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'Mitchel', '11');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'NAmes', '12');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'NoRidge', '13');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'NPkVill', '14');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'NridgHt', '15');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'NWAmes', '16');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'OldTown', '17');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'SWISU', '18');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'SawyerW', '20');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'Sawyer', '19');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'Somerst', '21');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'StoneBr', '22');
   Neighborhood(j) = replace;
end
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'SWISU', '23');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'Timber', '24');
   Neighborhood(j) = replace;
end
j = 0;
for j=1:size(Neighborhood,1)   
   aux     = Neighborhood(j);
   replace = strrep(aux,'Veenker', '25');
   Neighborhood(j) = replace;
end

Neighborhood = str2double(Neighborhood);
Neighborhood = num2cell(Neighborhood);
X(:,4) = Neighborhood;

%% Reemplazo de valores de la variable BldgType

BldgType = X(:,5);
j = 0;
for j=1:size(BldgType,1)   
   aux     = BldgType(j);
   replace = strrep(aux,'1Fam', '0');
   BldgType(j) = replace;
end
j = 0;
for j=1:size(BldgType,1)   
   aux     = BldgType(j);
   replace = strrep(aux,'2fmCon', '1');
   BldgType(j) = replace;
end
j = 0;
for j=1:size(BldgType,1)   
   aux     = BldgType(j);
   replace = strrep(aux,'Duplex', '2');
   BldgType(j) = replace;
end
j = 0;
for j=1:size(BldgType,1)   
   aux     = BldgType(j);
   replace = strrep(aux,'TwnhsE', '4');
   BldgType(j) = replace;
end
j = 0;
for j=1:size(BldgType,1)   
   aux     = BldgType(j);
   replace = strrep(aux,'Twnhs', '3');
   BldgType(j) = replace;
end

BldgType = str2double(BldgType);

BldgType = num2cell(BldgType);

X(:,5) = BldgType;

%% Reemplazo de valores de la variable Electrical

Electrical = X(:,6);

for j=1:size(Electrical,1)   
   aux     = Electrical(j);
   replace = strrep(aux,'SBrkr', '0');
   Electrical(j) = replace;
end

for j=1:size(Electrical,1)   
   aux     = Electrical(j);
   replace = strrep(aux,'FuseA', '1');
   Electrical(j) = replace;
end

for j=1:size(Electrical,1)   
   aux     = Electrical(j);
   replace = strrep(aux,'FuseF', '2');
   Electrical(j) = replace;
end

for j=1:size(Electrical,1)   
   aux     = Electrical(j);
   replace = strrep(aux,'FuseP', '3');
   Electrical(j) = replace;
end

for j=1:size(Electrical,1)   
   aux     = Electrical(j);
   replace = strrep(aux,'Mix', '4');
   Electrical(j) = replace;
end

for j=1:size(Electrical,1)   
   aux     = Electrical(j);
   replace = strrep(aux,'NA', '');
   Electrical(j) = replace;
end

Electrical = str2double(Electrical);
Electrical = num2cell(Electrical);
X(:,6) = Electrical;

%% Convertir el cell array 'X' a  una matriz

X = cell2mat(X);

%% Identifiacion y eliminacion de valores NA

% dat_miss = find(isnan(X));
% [X2,Y2] = ind2sub(size(X),dat_miss);

X(any(isnan(X), 2), :) = [];

%% Eliminacion de la columna Id

X(:,1) = [];

%% Seleccion de las ventas realizadas en el año 2009

X = X(X(:,14)==2009,:);

X(:,14) = [];

%% Separacion de la matriz 'y' de la matriz 'X'

y = X(:,size(X,2));

X(:,size(X,2)) = [];

%% Adicion de la columna de unos a la matriz 'X'

X = [ones(size(X,1),1) X];

%% Estimacion OLS

c        = 0;
beta_var = [0;0;0;0;0;0;0;0;0;0;0;0;0;0];
R        = eye(size(X,2));
r        = [0;0;0;0;0;0;0;0;0;0;0;0;0;0];

[b, R2, s2, t, se, F] = MCO(X,y,c,beta_var, R,r);


%% Modelo Simple

beta_simple = NaN(size(X,2),1);

for j=1:size(X,2)   
   beta_simple(j,1) = (X(:,j)'*X(:,j))^(-1)*X(:,j)'*y;
end

VarNames = {'beta_simple'};
S = table(beta_simple(:,1), 'VariableNames',VarNames)

%% Limpieza de variables auxiliares

clearvars aux BldgType Electrical LandSlope Neighborhood ...
    replace

