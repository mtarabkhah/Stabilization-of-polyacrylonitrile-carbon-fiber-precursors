function [T0,TEND,Y0] = Multi_Calculation(Multi_Inputs)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% % Does a little setup work...
% % Called by : Multi_Main
% % Calls : None
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

% % Define global variables
global NPTS TBULK0 k0 E RGAS rkinit bndOi CO2B0 RB CCN0 ALPHA DELH RHO...
    CP DE DX SH NU NINT ramp Ttime

% % Bundle Setup
RB = Multi_Inputs(1);
% Bundle Radius(cm)
dtex = Multi_Inputs(2);
% Individual Filament Size(dtex)
filcnt = Multi_Inputs(3);
% Bundle Filament Count
TBULK0 = Multi_Inputs(4);
% Initial Oven Temperature(K)
T0BUND = Multi_Inputs(5);
% Initial Bundle Temperature(K)
airvel = Multi_Inputs(6);
% Oven Air Velocity(m/s)
iairdir = Multi_Inputs(7);
% Air Flow Direction (1=Parallel,2=Cross)
CP = Multi_Inputs(24);
% Bundle Heat Capacity [cal/gr.K]
alphfib = Multi_Inputs(25);
% Thermal Diffusivity of PAN fiber [cm^2/s]

% % Save Bundle Setup Inputs
save Multi_Bundle_Inputs.mat RB dtex filcnt TBULK0 T0BUND airvel iairdir

% % Initial Conditions
CYCL0 = Multi_Inputs(8);
% Initial Cycl. Conc.(mole/cc)
DEHYD0 = Multi_Inputs(9);
% Initial dehyd. Conc.(mole/cc)
bndOi = Multi_Inputs(10);
% Initial Bound Oxygen(dim''less)
yo2init = Multi_Inputs(11);
% Initial O2 Conc.(dim''less)

% % Save Initial Conditions
save Multi_Initial_Inputs.mat CYCL0 DEHYD0 bndOi yo2init

% % Kinetics
DELH(1) = Multi_Inputs(12);
% Heat of Reaction 1(cal/mole)
DELH(2) = Multi_Inputs(13);
% Heat of Reaction 2(cal/mole)
DELH(3) = Multi_Inputs(14);
% Heat of Reaction 3(cal/mole)
k0(1) = Multi_Inputs(15);
% Reaction 1 Freq. Factor (s^-1)
k0(2) = Multi_Inputs(16);
% Reaction 2 Freq. Factor (s^-1)
k0(3) = Multi_Inputs(17);
% Reaction 3 Freq. Factor (s^-1)
E(1) = Multi_Inputs(18);
% Activation Energy 1(cal/mole)
E(2) = Multi_Inputs(19);
% Activation Energy 2(cal/mole)
E(3) = Multi_Inputs(20);
% Activation Energy 3(cal/mole)
rkinit = Multi_Inputs(21);
% Cycl Initiation Rate Const(s^-1)
RGAS = Multi_Inputs(22);
% Gas Constant(cal/mole-k)
DE = Multi_Inputs(23);
% Effective Diffusivity(cm^2/s)

% % Save Kinetics' Inputs
save Multi_Kinetics_Inputs.mat DELH k0 E rkinit RGAS DE

% % Oven Temperature
for i = 1 : 2 : 19
    Ttime((i+1)/2) = Multi_Inputs(i+25);
    ramp((i+1)/2) = Multi_Inputs(i+26);
end

% % Save Oven Temperature
save Multi_Oven_Inputs.mat Ttime ramp

% % Calculate Constants
VOLFRAC = (2.7922e-7*dtex*filcnt)/RB^2;
% Bundle volume fraction [ ] (3.48)????????????????????????????????????????
CCN0 = 0.022*VOLFRAC;
% Initial -CN conc [mol/cm^3] (3.51)
CO2B0 = 0.0028/TBULK0;
% Initial oven O2 conc [mol/cm^3] (3.50)
RHO = 1.17*VOLFRAC;
% Bundle density [gr/cm^3] (3.49)
thercon = (1.355+0.01653*TBULK0)*1e-5;
% Thermal Conductivity of Air [cal/s.cm.K] (3.55)
airdens = 353.13/TBULK0;
% Air density [kg/m^3] (3.59)
aircp = 4.2178-TBULK0*1.269e-4+(TBULK0^2)*2.874e-7;
% Air heat capacity [cal/gr.C] (3.54)
alphair = (1000*thercon)/(airdens*aircp);
% Thermal Diffusivity of Air [cm^2/s] (3.57)
ALPHA = 1/((VOLFRAC/alphfib)+((1-VOLFRAC)/alphair));
% Thermal Diffusivity [cm^2/s] (3.47)
% airvis = (4.4135e-5)*exp(-260.256/TBULK0^2);
airvis = (4.4135e-5)*exp(-260.256/TBULK0);
% Air Viscosity [kg/m.s] (3.58)????????????????????????????????????????????
Re = (2*RB*airvel*airdens)/(airvis*100);
% Reynolds Number [ ] (3.56)
if (iairdir == 1)
    NU = (0.035/2)*Re^0.5;
else
    NU = (0.065/2)*Re^0.57;
end
% Nusselt Number [ ] (3.44&3.45)
SH = NU*(ALPHA/DE)^(1/3);
% Sherwood Number [ ] (3.46)

% % Save constants
save Multi_Constants.mat CP alphfib VOLFRAC CCN0 CO2B0 RHO thercon airdens...
    aircp alphair ALPHA airvis Re NU SH

% % Solver Parameters
NINT = Multi_Inputs(46);
% Number of Subintervals [ ]
T0 = Multi_Inputs(47);
% Start Time [s]
TEND = Multi_Inputs(48);
% End Time [s]

NPTS = NINT+1;
% Number of Points [ ]
DX = 1/NINT;
% Line space Between Points [ ]

if (yo2init == 9999)
    x = 1-VOLFRAC; % (3.26)
else
    x = yo2init;
end
x1 = repmat(x,1,NPTS);
x2 = repmat((T0BUND-TBULK0)/TBULK0,1,NPTS);
Y0 = [1 0 bndOi x1 x2];
% Y0 = Y0';

% % Save solver's parameters
save Multi_Solver_Params.mat NINT NPTS T0 TEND NPTS DX Y0