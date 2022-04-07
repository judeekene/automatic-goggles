dataC = [1,2,3,4,5,6,7,8];
files = dir('*.csv');
for file = files'
Tab = readtable(file.name);
Tab=Tab{:,:};
% z = Tab([10109,8462,5169,2973,11],2)';
% z = Tab([10110,8463,5170,2974,12]-3,2)';
Tw = Tab([10110,8463,5170,2974,12]-3,[3:end])';
k = Tab(7,[3:end])';
m = 0.247098*pi/4*(0.0045^2)*1028*ones(14,1);
q = 20000*ones(14,1);
dataC = [dataC;[Tw,m,q,k]];
end
% Tm = TmeanCalm(Tab([11,2973,5169,8462,10109],2));
% h = hCalm(Tab([11,2973,5169,8462,10109],[3:end]),Tm);


dataK = dataC([2:end],:);
F = dataK;
save('C:\Users\judee\MATLAB Drive\EkeneWorks2\dataColl1.mat','F');
