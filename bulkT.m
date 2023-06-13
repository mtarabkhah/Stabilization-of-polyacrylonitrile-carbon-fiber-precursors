function TBULK = bulkT(time)
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% % Function to calculate the current oven temperature
% % Called by : Ode_Set Show_Results
% % Calls : None
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

% % Define global variables
global TBULK0 ramp Ttime

for k = 1 : max(size(time))
    if (time(k) < Ttime(2))
        TBULK(k,1) = TBULK0+time(k)*ramp(1);
    else
        Flag = 1;
        for i = 2 : 10
            if ((time(k) >= Ttime(i)) && (time(k) < Ttime(i+1)) && (Flag == 1))
                base = TBULK0;
                for j = 1 : i-1
                    base = base+ramp(j)*(Ttime(j+1)-Ttime(j));
                end
                TBULK(k,1) = base+ramp(i)*(time(k)-Ttime(i));
                Flag = 0;
            end
        end
    end
end