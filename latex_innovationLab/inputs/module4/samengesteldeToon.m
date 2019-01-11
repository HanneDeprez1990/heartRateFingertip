fs = 1000;
T = 20;

f1 = 10;
A1 = 0.5;

N = 1000;

f2 = 20;
A2 = 1;

f3 = 30;
A3 = 1;

t = (0:1/fs:T);

y = A1*sin(2*pi*f1*t) + A2*sin(2*pi*f2*t) + A3*sin(2*pi*f3*t);

Y = fft(y,N)*2/N;
Y([1 end]) = Y([1 end])/2;
f = (0:length(Y)-1)*fs/length(Y);

figure(1);
clf;
subplot(1,2,1)
plot(t,y,'k','LineWidth',2);
xlim([0 1])
ylim([-2.5 2.5])
xlabel('Tijd (s)');
ylabel('Amplitude ()');

subplot(1,2,2)
bar(f,abs(Y),'k');
xlim([0 50])
ylim([0 2.2])
xlabel('Frequentie (Hz)');

saveas(gcf,'samengesteldeToon.png')