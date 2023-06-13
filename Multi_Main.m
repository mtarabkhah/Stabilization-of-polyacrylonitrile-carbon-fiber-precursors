function Multi_Main(Multi_Inputs)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% % The main driver serves to call the working subroutins
% % Called by : GUI->MultiRunButton
% % Calls : Load_Data Get_Inputs Calc_Consts Set_Solver_Params 
% %         ODE(ode15s or...) Show_Results
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

[T0,TEND,Y0] = Multi_Calculation(Multi_Inputs);

% % Call Solver
[Time,Y] = ode15s(@Multi_Ode_Set,[T0 TEND],Y0);

% % Plot results
Multi_Show_Results(Time,Y);

% % Save results
save Multi_Results.mat Time Y