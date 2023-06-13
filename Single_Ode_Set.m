function dy = Single_Ode_Set(t,y)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% % Function that describs ODEs
% % Called by : Main Program
% % Calls : Finite_Diff
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

% % Define global variables
global  NPTS k DE Rf DX SH cO2i crep yboi

dy = zeros(3*NPTS,1); % % a column vector
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

h1 = 1e3; % 0.5
h2 = 1e-5; % 1e-6
RATE1 =  k(2)*y(2*NPTS+1)*(1-y(1));
dy(1) = cO2i*RATE1; % % C=C
RATE2 =  k(3)*y(2*NPTS+1)*(1-y(NPTS+1)+yboi);
dy(NPTS+1) = cO2i*RATE2; % % bo
dy(2*NPTS+1) = h1*(y(2*NPTS+2)-y(2*NPTS+1)); % % O2(1)
for i = 2 : NPTS-1
    RATE1 =  k(2)*y(2*NPTS+i)*(1-y(i));
    dy(i) = cO2i*RATE1; % % C=C
    RATE2 =  k(3)*y(2*NPTS+i)*(1-y(NPTS+i)+yboi);
    dy(NPTS+i) = cO2i*RATE2; % % bo
    xx = Finite_Diff(i,y(2*NPTS+i-1:2*NPTS+i+1));
    dy(2*NPTS+i) = (DE/Rf^2)*xx-0.5*crep*(RATE1+RATE2); % % O2(i-4)
end
RATE1 =  k(2)*y(3*NPTS)*(1-y(NPTS));
dy(NPTS) = cO2i*RATE1; % % C=C
RATE2 =  k(3)*y(3*NPTS)*(1-y(2*NPTS)+yboi);
dy(2*NPTS) = cO2i*RATE2; % % bo
dy(3*NPTS) = h2*(y(3*NPTS)-((y(3*NPTS-1)-SH*DX)/(1-SH*DX))); % % O2(n+1)