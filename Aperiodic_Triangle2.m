figure(1)
n= -10:1:10;
D1 = n==0;
subplot(3,2,1);
stem(n,D1,'r');
ylim([-1 2]);
title('Unit impulse delta_1')
xlabel('\delta_1 [-]');

figure(2)
n= -10:1:10;
D2 = n==5;
subplot(3,2,2);
stem(n,D2,'r');
ylim([-1 2]);
title('Unit impulse delta_2')
xlabel('\delta_2 [-]');

figure(3)
n = -20:1:20;
D3 = n > -1;
subplot(3,2,3);
stem(n,D3,'b');
ylim([-1 2]);
title('unit Step Mu_1')
xlabel('\mu_1 [-]');


figure(4)

n = -20:1:20;
D4 = n > -4;
subplot(3,2,4);
stem(n,D4,'b');
ylim([-1 2]);
title('unit Step Mu_2')
xlabel('\mu_2 [-]');

figure(5)

t = linspace(-10,10);
v = sinc(t);
subplot(3,1,3);
plot(t,v,'ok');
ylim ([-1 1.5]);
title('Function Sinc(t)')
xlabel ('t [s]');
ylabel ('y [-]');

%Conclusion



