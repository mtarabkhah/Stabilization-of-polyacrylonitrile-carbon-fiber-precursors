function [T0,TEND,Y0] = Single_Calculation(Single_Input)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% % Does a little setup work...
% % Called by : Single_Main
% % Calls : None
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

% % Define global variables
global  NPTS k DE Rf DX SH cO2i crep yboi NINT TBULK

Rf = Single_Input(1);
SH = Single_Input(2);
% % Save Bundle Setup Inputs
save Single_Bundle_Inputs.mat Rf SH

cO2i = Single_Input(3);
crep = Single_Input(4);
yboi = Single_Input(5);
fvac = Single_Input(6);
TBULK = Single_Input(7)+273;
% % Save Initial Conditions
save Single_Initial_Inputs.mat cO2i crep yboi fvac TBULK

k0(1) = Single_Input(8);
k0(2) = Single_Input(9);
k0(3) = Single_Input(10);
E(1) = Single_Input(11);
E(2) = Single_Input(12);
E(3) = Single_Input(13);
rkinit = Single_Input(14);
RGAS = Single_Input(15);

k = zeros(1,3);
for i = 2 : 3
    k(i) = k0(i)*exp(-E(i)/(RGAS*TBULK))*2*(493/0.0028);
end

DE = exp(-5000/TBULK)*1.04e-3;
% Diffusivity of oxygen through the filament (cm^2/sec)

% % Save Kinetics' Inputs
save Single_Kinetics_Inputs.mat k0 E RGAS k DE rkinit

NINT = Single_Input(16);
T0 = Single_Input(17);
TEND = Single_Input(18);

NPTS = NINT+1;
% Number of Points [ ]
DX = 1/NINT;
% Line space Between Points [ ]


x1 = zeros(1,NPTS);
x2 = repmat(yboi,1,NPTS);
x3 = repmat(fvac,1,NPTS);
Y0 = [x1 x2 x3];

% % Save solver's parameters
save Single_Solver_Params.mat NINT T0 TEND NPTS DX Y0