filename='stepcompare';
sys={};
sys{1}=tf(5,[1 5],'variable','s');
sys{2}=tf(70,[1 10 60],'variable','s');
sys{3}=tf(100,[1 10 100],'variable','s');
sys{4}=tf(100,[1 5 100],'variable','s');
secondindex=[3 1 2 4];
roman={'i','ii','iii','iv'}

figure(1)
clf
set(1,'position',[10 10 700 700])
set(1,'papersize',[7 7])
set(1,'paperposition',[-.5 -.5 8 8])
for i=1:length(sys)
    subplot(4,2,2*(i-1)+1)
%    t=;
    h=stepplot(sys{i},2.5);
    a=getoptions(h);
    a.Title.FontSize=10;
    a.Title.String=['(',char(i+96),')'];
    a.Xlabel.FontSize=10;
    a.Ylabel.FontSize=10;
    a.TickLabel.FontSize=10;
    a.Grid='on';
    setoptions(h,a);
end;

for i=1:length(sys)
    subplot(4,2,2*i)
    h=pzplot(sys{secondindex(i)});
    a=getoptions(h);
    a.Title.FontSize=10;
    a.Title.String=['(',roman{i},')'];
    a.Xlabel.FontSize=10;
    a.Ylabel.FontSize=8;
    a.TickLabel.FontSize=10;
    a.Xlim =[-20 1];
    a.Ylim =[-12 12];
    a.Grid='off';
    setoptions(h,a);
end;


eval(['print -f1 -dpdf ',filename,'.pdf'])