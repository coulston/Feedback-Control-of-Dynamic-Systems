t=simout.Time;
V_out = 1 -exp(-2*t).*cos(2*t) - exp(-2*t).*sin(2*t);
plot(t,simout.Data,'r-',t,V_out,'b--')
legend('Simulation','Analytical Solution')
xlabel('Time (s)')
ylabel('Voltage (V)')

set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
print -dpdf -f1 SimulationResults.pdf