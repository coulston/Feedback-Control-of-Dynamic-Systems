sys={};
z={};

z{1}=[-0.5];
col{1}=[1 0 0];
z{2}=[-0.25];
col{2}=[0 1 0];
z{3}=[0];
col{3}=[0 0 1];
z{4}=[0.25];
col{4}=[.5 .5 0];
z{5}=[-0.5+j -0.5-j];
col{5}=[1 .5 .5];
z{6}=[-0.25+j -0.25-j];
col{6}=[.5 1 .5];
z{7}=[j -j];
col{7}=[.5 .5 1];
z{8}=[0.25+j 0.25-j];
col{8}=[.5 .5 .5];
z{9}=[-0.5+2j -0.5-2j];
col{9}=[1 .75 .25];
z{10}=[-0.25+2j -0.25-2j];
col{10}=[.25 1 .25];
z{11}=[2j -2j];
col{11}=[.25 .75 1];
z{12}=[0.25+2j 0.25-2j];
col{12}=[.5 .5 .25];

for i=1:length(z),
sys{i}=tf(1,poly([z{i}]));
end;

%sys{2}=tf(1,[1 -1 1],1,'variable','z^-1');
%sys{3}=tf([1],[1 1],1,'variable','z^-1');
%sys{4}=tf([1],[1 -1],1,'variable','z^-1');
%sys{5}=tf([1],[1 -.9 .81],1,'variable','z^-1');
%sys{6}=tf([.25 .25 .25 .25],1,1,'variable','z^-1');


figure(1)
clf
set(1,'position',[10 10 1000 700])
set(1,'papersize',[10 7])
set(1,'paperposition',[0 0 10 7])
omega=-0.5:.1:2.5;
plot(0*omega,omega,'linewidth',1,'color',[0 0 0])
hold on
plot([-.75 .5],[0 0],'linewidth',1,'color',[0 0 0])
for i=1:length(sys)
%    subplot(3,2,i)
    plot(real(z{i}),imag(z{i}),'x','markersize',20,'linewidth',2,'color',col{i})
end;
hold off
ax=[-.6 .35 -0.5 2.5]
axis(ax)
a=get(gca,'position');
set(gca,'fontsize',14)
xlabel('Real Axis')
ylabel('Imaginary Axis') 
    
for i=1:length(sys)
    [h,n]=impulse(sys{i},10);
    axes('position',[a(1)+a(3)*(real(z{i}(1))-.025-ax(1))/(ax(2)-ax(1)) a(2)+a(4)*(imag(z{i}(1))+.1-ax(3))/(ax(4)-ax(3)) .08 .06]) 
    plot(n,h,'markersize',6,'linewidth',3,'color',col{i})
    set(gca,'visible','off')
end;


plotpdftex(1,'impulseresponseplot.pdf',[1 .4])