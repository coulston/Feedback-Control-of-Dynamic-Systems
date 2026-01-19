figure(1)
clf
ha=axes;
axis([-1 1 -1 1])
set(ha,'visible','off')
arrow([-1.4 0],[1.4 0]);
text(.9,-.1,'\fontname{times}\fontsize{20}Re\{{\its}\}')
text(-.45,.95,'\fontname{times}\fontsize{20}Im\{{\its}\}')
arrow([0 -1],[0 1]);
s=[-.5;-.5+.5j;.7j];
hold on
plot(s,'.','markersize',20)
axis equal
line([-.5 -.5],[-.05 .05],'color','k')
line([-.05 .05],[-.5 -.5],'color','k')
line([-.05 .05],[.5 .5],'color','k')
line([.5 .5],[-.05 .05],'color','k')
text(-.5,-.1,'\fontname{times}\fontsize{14}\it-.5')
text(.5,-.1,'\fontname{times}\fontsize{14}\it.5')
text(.06,-.5,'\fontname{times}\fontsize{14}\it-j.5')
text(.06,.5,'\fontname{times}\fontsize{14}\itj.5')
text(-.485,.1,'\fontname{times}\fontsize{14}\ita')
text(-.485,.6,'\fontname{times}\fontsize{14}\itb')
text(.015,.8,'\fontname{times}\fontsize{14}\itc')
hold off


figure(2)
clf
ha=axes;
axis([-1 1 -1 1])
set(ha,'visible','off')
arrow([-1.4 0],[1.4 0]);
text(.9,-.1,'\fontname{times}\fontsize{20}Re\{{\its}\}')
text(-.45,.95,'\fontname{times}\fontsize{20}Im\{{\its}\}')
arrow([0 -1],[0 1]);
s=[-.5;-.5+.5j;.7j];
hold on
G=1./(s+2);
plot(G,'.','markersize',20)
axis equal
line([-.5 -.5],[-.05 .05],'color','k')
line([-.05 .05],[-.5 -.5],'color','k')
line([-.05 .05],[.5 .5],'color','k')
line([.5 .5],[-.05 .05],'color','k')
text(-.5,-.1,'\fontname{times}\fontsize{14}\it-.5')
text(.5,-.1,'\fontname{times}\fontsize{14}\it.5')
text(.06,-.5,'\fontname{times}\fontsize{14}\it-j.5')
text(.06,.5,'\fontname{times}\fontsize{14}\itj.5')
text(real(G(1))+.015,imag(G(1))+.1,'\fontname{times}\fontsize{14}\itG(a)')
text(real(G(2))+.015,imag(G(2))-.1,'\fontname{times}\fontsize{14}\itG(b)')
text(real(G(3))-.2,imag(G(3))-.1,'\fontname{times}\fontsize{14}\itG(c)')
hold off

figure(3)
clf
ha=axes;
axis([-1 1 -1 1])
set(ha,'visible','off')
arrow([-1.4 0],[1.4 0]);
text(.9,-.1,'\fontname{times}\fontsize{20}Re\{{\its}\}')
text(-.45,.95,'\fontname{times}\fontsize{20}Im\{{\its}\}')
arrow([0 -1],[0 1]);
hold on
axis equal
line([-.5 -.5],[-.05 .05],'color','k')
line([-.05 .05],[-.5 -.5],'color','k')
line([-.05 .05],[.5 .5],'color','k')
line([.5 .5],[-.05 .05],'color','k')
text(-.5,-.1,'\fontname{times}\fontsize{14}\it-.5')
text(.5,-.1,'\fontname{times}\fontsize{14}\it.5')
text(.06,-.5,'\fontname{times}\fontsize{14}\itj.5')
text(.06,.5,'\fontname{times}\fontsize{14}\it-j.5')
hold off

