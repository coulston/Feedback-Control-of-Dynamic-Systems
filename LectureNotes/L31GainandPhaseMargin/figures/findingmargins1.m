sys=tf([.5],poly([-.5 -1 -.1]))
figure(1)
clf
bode(sys)
figure(2)
clf
nyquist(sys)