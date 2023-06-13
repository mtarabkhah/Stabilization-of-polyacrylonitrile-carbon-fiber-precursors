function xx = Finite_Diff(i,y)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% % Function to calculate the Finite Difference
% % Called by : Ode_Set
% % Calls : None
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

% % Define global variables
global DX

X = i*DX;

y_prev = y(1);
y_this = y(2);
y_next = y(3);

xx = (y_next-y_prev)/(X*2*DX)+(y_next-2*y_this+y_prev)/(DX^2);