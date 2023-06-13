function Single_Main(Single_Inputs)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% % The main driver serves to call the working subroutins
% % Called by : GUI->SingleRunButton
% % Calls : Sigle_Calculation ODE(ode15s or...) Single_Show_Results
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

[T0,TEND,Y0] = Single_Calculation(Single_Inputs);

% % Call Solver
[Time,Y] = ode15s(@Single_Ode_Set,[T0 TEND],Y0);

% % Plot results
Single_Show_Results(Time,Y);

% % Save results
save Single_Results.mat Time Y