t=simout.Time;
y_out = 0.5 - exp(-t) + 0.5*exp(-2*t);
plot(t,simout.Data,'r-',t,y_out,'b--')
legend('Simulation','Analytical Solution')
xlabel('Time (s)')
ylabel('Position (m)')

set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
print -dpdf -f1 SimulationResults.pdf