fs = 1000;
T = 20;

f1 = 50;
A1 = 0.5;

N = 1000;

f2 = 70;
A2 = 1;

f3 = 30;
A3 = 1;

t = (0:1/fs:T);

y = A1*sin(2*pi*f1*t) + A2*sin(2*pi*f2*t) + A3*sin(2*pi*f3*t);

figure(1);
clf;
hold on;
plot(t,y,'k','LineWidth',2);
stem(t,y,'r');
xlim([0 0.04])
ylim([-2.5 2.5])
xlabel('Tijd (s)');
ylabel('Amplitude ()');

saveas(gcf,'discreetvscontinu.png')