cd('D:\EENG307Current\LectureNotes')
A = dir;
PATH = getenv('PATH');
%setenv('PATH', [PATH ':/Library/TeX/texbin'])
myDir = find(vertcat(A.isdir));
for i=1:length(myDir),
    if A(myDir(i)).name(1)=='.', continue; end;
    unix('del *.nav')
    unix('del *.aux')    % coulston edit Jan 2019 for Windows 10
    disp(strcat(A(myDir(i)).name, '/HomeworkProblems--------------------'))    
    cd(strcat(A(myDir(i)).name, '/HomeworkProblems'))    
    unix(['pdflatex --shell-escape --synctex=1 HomeworkViewer.tex"'])              
    eval(['cd ../..'])    
end;
    