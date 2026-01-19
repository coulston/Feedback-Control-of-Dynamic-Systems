figure(1)
clf
ha=axes;
axis([-.7 1 -1 1])
set(ha,'visible','off')
arrow([-.7 0],[1 0]);
text(.7,.15,'\fontname{times}\fontsize{20}Re\{{\itG(j\omega)}\}')
text(-.55,.95,'\fontname{times}\fontsize{20}Im\{{\itG(j\omega)}\}')
arrow([0 -1],[0 1]);
text(.48,.1,'\fontname{times}\fontsize{16}\itK')
line([.5 .5],[-.05 .05])

sys=tf([.5],[1 1]);
figure(2)
clf
ha=axes;
axis([-.7 1 -1 1])
set(ha,'visible','off')
arrow([-.7 0],[1 0]);
text(.7,.15,'\fontname{times}\fontsize{20}Re\{{\itG(j\omega)}\}')
text(-.55,.95,'\fontname{times}\fontsize{20}Im\{{\itG(j\omega)}\}')
arrow([0 -1],[0 1]);
hold on
[mag,phase]=bode(sys,[.01 .1 1 10 100])
mag=squeeze(mag);
phase=squeeze(phase);
G=mag.*exp(j*(phase*pi/180));
plot(G,'.','markersize',20);
hold on
[mag,phase]=bode(sys);
mag=squeeze(mag);
phase=squeeze(phase);
G=mag.*exp(j*(phase*pi/180));
plot(G,'-','linewidth',1);
text(.48,.1,'\fontname{times}\fontsize{16}\itK')
line([.5 .5],[-.05 .05])
text(.52,-.04,'\fontname{times}\fontsize{16}\it\omega=.01')
text(.48,-.13,'\fontname{times}\fontsize{16}\it\omega=.1')
text(.27,-.27,'\fontname{times}\fontsize{16}\it\omega=1')
text(-.23,-.1,'\fontname{times}\fontsize{16}\it\omega=10')
text(-.25,.1,'\fontname{times}\fontsize{16}\it\omega=100')