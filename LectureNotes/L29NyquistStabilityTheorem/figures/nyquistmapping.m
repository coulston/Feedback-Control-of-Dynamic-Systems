num=[0 -1 1.4];
den=[1 2 2 1];
rho=100;
%s=logspace(-5,-1,30);
s=[0:.001:.02,.021:.005:.1];
s1=j*s';
s=[s1];
s1=rho*s1.';
G1=(num*[s1.^2;s1;ones(size(s1))])./(den*[s1.^3;s1.^2;s1;ones(size(s1))]);
G=[G1];
fid=fopen('nyquistmapping1.table','w')
GG=[2+real(G);imag(G)];
fprintf(fid,'%0.5f %0.5f\n',GG(:));
fclose(fid)
fid=fopen('nyquistmapping2.table','w')
GG=[2+real(G);-imag(G)];
fprintf(fid,'%0.5f %0.5f\n',GG(:));
fclose(fid)
