filename='bodecompare';
folder='\mainfolder/LectureNotes/L27BodePlotsIV/HomeworkProblems/BodePlotsIV04';
fid=fopen([filename,'.tex'],'w');
fwrite(fid,'\begin{center}');
fwrite(fid,char(13));
fwrite(fid,['\includegraphics[width=6.5in]{',folder,'/',filename,'}']);
fwrite(fid,char(13));
fwrite(fid,'\end{center}');
fwrite(fid,char(13));
sys={};
sys{1}=tf([1 1],[1 4 16],'variable','s');
tfstring{1} = '\frac{(s+1)}{s^{2}+4s+16}';
w{1} = logspace(-1,2,50);
sys{2}=tf([1 -1],[1 4 16],'variable','s');
tfstring{2} = '\frac{(s-1)}{s^{2}+4s+16}';
w{2} = logspace(-1,2,50);
sys{3}=tf(1,[1 4 16 0],'variable','s');
tfstring{3} = '\frac{1}{s(s^{2}+4s+16)}';
w{3} = logspace(-1,2,50);
sys{4}=tf(0.25*[1 1],[1 1 4],'variable','s');
tfstring{4} = '\frac{0.25(s+1)}{s^{2}+s+4}';
w{4} = logspace(-1,2,50);




fwrite(fid,'\begin{enumerate}');
fwrite(fid,char(13));
fwrite(fid,'\renewcommand{\labelenumi}{(\roman{enumi})}');
fwrite(fid,char(13));
figure(1)
clf
set(1,'position',[10 10 700 700]);
set(1,'papersize',[7 7]);
set(1,'paperposition',[0 0 7 7]);
secondindex=randperm(length(sys));
for i=1:length(sys)
    subplot(2,2,i)
%    t=;
    h=bodeplot(sys{secondindex(i)},w{i});
    a=getoptions(h);
    a.Title.FontSize=10;
    a.Title.String=['(',char(i+96),')'];
    a.Xlabel.FontSize=10;
    a.Ylabel.FontSize=10;
    a.TickLabel.FontSize=10;
    a.Grid='on';
    setoptions(h,a);
    

    fwrite(fid,['\item $G_',num2str(i),'(s)=',tfstring{i},'$']);
    fwrite(fid,char(13));
end;
h=findobj(1,'Type','line');
for i=1:length(h),
    set(h(i),'Linewidth',2)
end;


fwrite(fid,'\end{enumerate}');
fwrite(fid,char(13));
fwrite(fid,char(13));
fwrite(fid,['%',mat2str(secondindex)]);
fclose(fid);
eval(['print -f1 -dpdf ',filename,'.pdf'])