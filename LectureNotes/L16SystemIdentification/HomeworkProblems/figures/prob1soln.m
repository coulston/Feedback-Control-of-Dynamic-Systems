%
% Part (a)
%
% Define system estimate
G1=tf([57.6],[1 2.36 6.3])
% Calculate and plot step repsonse over first 5 seconds
figure(1)
[y,t]=step(G1,5);
plot(t,y,'linewidth',2)
% axis labels
set(gca,'fontsize',14)
xlabel('Time (s)')
ylabel('Voltage (V)')
% make axis grid visible
grid

%
% Part (b)b
%
% Define system estimate
G2=tf([12.96],[1 5.4])
% Calculate and plot response over first 2 seconds
figure(2)
[y,t]=step(G2,2);
plot(t,y,'linewidth',2)
% axis labels
set(gca,'fontsize',14)
xlabel('Time (s)')
ylabel('Distance  (m)')
% make axis grid visible
grid

for i=1:2,
 set(i,'position',[50 50 500 400])
 set(i,'papersize',[5 4])
 set(i,'paperposition',[0 0 5 4])
end
print -f1 -dpdf prob1a_soln
print -f2 -dpdf prob1b_soln
