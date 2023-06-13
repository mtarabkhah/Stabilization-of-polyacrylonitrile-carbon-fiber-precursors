function dy = Multi_Ode_Set(t,y)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% % Function that describs ODEs
% % Called by : Main Program
% % Calls : bulkT Finite_Diff
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

% % Define global variables
global  NPTS TBULK0 k0 E RGAS rkinit bndOi CO2B0 RB CCN0 ALPHA DELH RHO...
    CP DE DX SH NU

dy = zeros(2*NPTS+3,1); % % a column vector
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TBULK = bulkT(t);
YO2 = sum(y(4:NPTS+3))/NPTS;
TEMP = (sum(y(NPTS+4:2*NPTS+3))/NPTS)*TBULK0+TBULK;
yO2inf = TBULK0/TBULK; %  (3.53)

RK = zeros(3,1);
RK(1) = k0(1)*exp(-E(1)/(RGAS*TEMP));
for i = 2 : 3
    RK(i) = k0(i)*exp(-E(i)/(RGAS*TEMP))*(493/0.0028);
end
% for i = 2 : 3
%     RK(i) = k0(i)*exp(-E(i)/(RGAS*TEMP));
% end

% RATE(1) =  RK(1)*(y(1)-0.25)*(1-exp(-rkinit*t));
RATE(1) =  RK(1)*y(1)*(1-exp(-rkinit*t));
RATE(2) =  RK(2)*YO2*(1-y(2)-0.25);
% RATE(2) =  RK(2)*YO2*(1-y(2));
% RATE(3) =  RK(3)*YO2*(1-y(3)+bndOi-0.25);
RATE(3) =  RK(3)*YO2*(1-y(3)+bndOi);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dy(1) = -RATE(1); % % CN
dy(2) = CO2B0*RATE(2); % % C=C
dy(3) = CO2B0*RATE(3); % % bo
% dy(2) = RATE(2); % % C=C
% dy(3) = RATE(3); % % bo

h1 = 1e1;
% if (y(NPTS+4)*TBULK0 <= TBULK)
%     h1 = 20;
% end
h2=1e3;
h3 = 1e3;
h4 = 2e1;

% ALPH = ALPHA*(1+2*(1-y(1)));
ALPH = ALPHA;
DENOM = RHO*CP*TBULK0;
dy(4) = h1*(y(5)-y(4)); % % O2(1)
dy(NPTS+4) = h3*(y(NPTS+5)-y(NPTS+4)); % % Teta(1)
for i = 5 : NPTS+2
    xx = Finite_Diff(i-4,y(i-1:i+1));
    dy(i) = (DE/RB^2)*xx+0.5*CCN0*(RATE(2)+RATE(3)); % % O2(i-4)
    xx = Finite_Diff(i-4,y(i+NPTS-1:i+NPTS+1));
    dy(i+NPTS) = (ALPH/RB^2)*xx+(DELH(1)*CCN0*RATE(1))/DENOM...
        +(DELH(2)*CCN0*CO2B0*RATE(2))/DENOM...
        +(DELH(3)*CCN0*CO2B0*RATE(3))/DENOM; % % Teta(i-(n+4))
%     if t>50
%         fprintf('time = %1.3f i = %d 1 = %g*%g 2 = %g*%g 3 = %g*%g 4 = %g*%g\n',t,i,(ALPH/RB^2),xx,DELH(1)/DENOM,CCN0*RATE(1),DELH(2)/DENOM,CCN0*CO2B0*RATE(2),DELH(3)/DENOM,CCN0*CO2B0*RATE(3))
%     end
end
dy(NPTS+3) = h2*(y(NPTS+3)-((y(NPTS+2)-SH*yO2inf*DX)/(1-SH*DX))); % % O2(n+1)
dy(2*NPTS+3) = h4*(y(2*NPTS+3)-(y(2*NPTS+2)/(1-NU*DX))); % % Teta(n+1)
% if (y(NPTS+4)*TBULK0 >= TBULK+20)
%     dy(2*NPTS+3) = h4*(y(2*NPTS+3)-(y(2*NPTS+2)/(1-NU*DX))); % % Teta(n+1)
% else
%     dy(2*NPTS+3) = dy(2*NPTS+2);
% end