A = dir;
PATH = getenv('PATH');
setenv('PATH', [PATH ':/Library/TeX/texbin']);

myDir = find(vertcat(A.isdir));
for i=1:length(myDir),
    if A(myDir(i)).name(1)=='.', continue; end;
    cd(A(myDir(i)).name)
    B = dir;
    for j=1:length(B),
        if strfind(B(j).name,'.article.pdf')
          unix(['copy "', B(j).name,'" "../allLectureArticles"'])          
        end;
        if strfind(B(j).name,'.presentation.pdf')
          unix(['copy "', B(j).name,'" "../allLecturePresentations"'])          
        end;
    end;
    eval(['cd ..'])
end;
    