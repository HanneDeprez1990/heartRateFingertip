fs = 1000;
T = 20;
f = 10;
A = 2;
t = (0:1/fs:T);

N = 1000;

y = A*sin(2*pi*f*t);

Y = fft(y,N)*2/N;
Y([1 end]) = Y([1 end])/2;
f = (0:length(Y)-1)*fs/length(Y);

figure(1);
clf;
subplot(1,2,1)
plot(t,y,'k','LineWidth',2);
xlim([0 1])
ylim([-2.2 2.2])
xlabel('Tijd (s)');
ylabel('Amplitude ()');

subplot(1,2,2)
bar(f,abs(Y),'k');
xlim([0 50])
ylim([0 2.2])
xlabel('Frequentie (Hz)');

saveas(gcf,'sinusTrilling.png')