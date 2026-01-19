figure(1)
clf
set(1,'position',[10 10 600 400])
set(1,'papersize',[6 4])
set(1,'paperposition',[0 0 6 4])
sys=tf(2*poly([-10 100]),poly([-1 -2 -200]));
bode(sys);
grid

print -f1 -dpdf prob3

%
% Other plots for quiz
%
sys={};
sys{1}=tf(2*poly([-10 100]),poly([-1 -2 -200])); % correct
sys{2}=tf(2*poly([10 100]),poly([-1 -2 -200]));
sys{3}=tf(4*poly([100]),poly([-1 -2 -200]));
sys{4}=tf(40,poly([2 20]));

for i=1:4,
figure(1)
clf
set(1,'position',[10 10 600 400])
set(1,'papersize',[6 4])
set(1,'paperposition',[0 0 6 4])
h=nyquistplot(sys{i})
a=getoptions(h);
a.TickLabel.FontSize=14;
a.Title.FontSize=14;
a.Xlabel.FontSize=14;
a.Ylabel.FontSize=14;
setoptions(h,a);

eval(['print -f1 -dpdf quiz',int2str(i)])
end;
