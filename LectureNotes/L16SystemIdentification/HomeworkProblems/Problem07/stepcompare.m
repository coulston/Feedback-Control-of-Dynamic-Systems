filename='stepcompare';
fid=fopen([filename,'.tex'],'w');
fwrite(fid,'\begin{center}');
fwrite(fid,char(13));
fwrite(fid,['\includegraphics[width=5.5in]{Problem1/',filename,'}']);
fwrite(fid,char(13));
fwrite(fid,'\end{center}');
fwrite(fid,char(13));
sys={};
sys{1}=tf(10,[1 1],'variable','s');
tfstring{1} = '\frac{10}{s+1}';
sys{2}=tf(100,[1 10],'variable','s');
tfstring{2} = '\frac{100}{s+10}';
sys{3}=tf(1000,[1 10 100],'variable','s');
tfstring{3} = '\frac{1000}{s^{2}+10s+100}';
sys{4}=tf(1000,[1 20 100],'variable','s');
tfstring{4} = '\frac{1000}{s^{2}+20s+100}';
sys{5}=tf(1000,[1 1 100],'variable','s');
tfstring{5} = '\frac{1000}{s^{2}+s+100}';
sys{6}=tf(90,[1 1 9],'variable','s');
tfstring{6} = '\frac{90}{s^{2}+s+9}';




fwrite(fid,'\begin{enumerate}');
fwrite(fid,char(13));
fwrite(fid,'\renewcommand{\labelenumii}{(\roman{enumii})}')
fwrite(fid,char(13));
figure(1)
clf
set(1,'position',[10 10 700 700])
set(1,'papersize',[7 7])
set(1,'paperposition',[0 0 7 7])
secondindex=[2 3 6 4 1 5];
for i=1:length(sys)
    subplot(3,2,i)
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