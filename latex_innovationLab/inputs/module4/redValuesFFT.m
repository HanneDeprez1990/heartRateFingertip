fs = 30;
y = csvread('module3_MSExcel_redValues2.csv');
N = length(y);

Y = fft(y,N);
Y([1 end]) = Y([1 end])/2;
f = (0:length(Y)-1)*fs/length(Y)*60;

figure(1);
clf;
hold on;
ylabel('Amplitude ()');
plot(f(3:end),abs(Y(2:end-1)),'k','LineWidth',2);
plot(f(21),abs(Y(20)),'o');
text(f(21),abs(Y(20))+20, sprintf('x: %.1f \ny: %.1f',f(21), abs(Y(20))))
xlim([0 250])
xlabel('Frequentie (Hz)');

saveas(gcf,'redValuesFFT.png')