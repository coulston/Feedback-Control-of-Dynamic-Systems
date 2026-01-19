filename='prob3';
fid=fopen([filename,'.tex'],'w');
fwrite(fid,'\begin{center}');
fwrite(fid,char(13));
fwrite(fid,['\includegraphics[width=6.5in]{',filename,'}']);
fwrite(fid,char(13));
fwrite(fid,'\end{center}');
fwrite(fid,char(13));
sys={};
sys{1}=tf(4/9,[1 2/3 4/9],'variable','s');
sys{2}=tf(4/9,[1 4/3 4/9],'variable','s');
sys{3}=tf(.4/9,[1 .2/3 .4/9],'variable','s');
sys{4}=tf(.4/9,[1 sqrt(.4)/3 .4/9],'variable','s');





fwrite(fid,'\begin{enumerate}');
fwrite(fid,char(13));
fwrite(fid,'\renewcommand{\labelenumi}{(\roman{enumi})}')
fwrite(fid,char(13));
figure(1)
clf
set(1,'position',[10 10 700 700])
set(1,'papersize',[7 7])
set(1,'paperposition',[0 0 7 7])
secondindex=[1 2 3 4];
for i=1:length(sys)
    subplot(2,2,i)
%    t=;
    h=stepplot(sys{secondindex(i)});
    a=getoptions(h);
    a.Title.FontSize=8;
    a.Title.String=['(',char(i+96),')'];
    a.Xlabel.FontSize=8;
    a.Ylabel.FontSize=8;
    a.TickLabel.FontSize=8;
    a.Grid='on';
    setoptions(h,a);
    

    fwrite(fid,['\item $G_',num2str(i),'(s)=',tfstring{i},'$'])
    fwrite(fid,char(13));
end;


fwrite(fid,'\end{enumerate}');
fwrite(fid,char(13));
fwrite(fid,char(13));
fwrite(fid,['%',mat2str(secondindex)]);
fclose(fid)
eval(['print -f1 -dpdf ',filename,'.pdf'])