figure (1)
fs=1;
t = -20:1/fs:20;
w = 10;
y_1 = tripuls(t,w);

plot(t,y_1,'o-');
xlabel('t[s]');
ylabel('y_1[-]');
title('Aperodic triangle pulse y_1')

figure (2)
fs=1;
t = -20:1/fs:20;
w = 10;
y_2 = 2*tripuls(t-5,w,1);

plot(t,y_2,'o-');
xlabel('t[s]');
ylabel('y_1[-]');
title('Aperodic triangle pulse y_2')

figure (3)
fs=1;
t = -20:1/fs:20;
w = 10;
y_3 = 2*tripuls(t+5,w,-1);

plot(t,y_3,'o-');
xlabel('t[s]');
ylabel('y_1[-]');
title('Aperodic triangle pulse y_2')

%Conclusion:


