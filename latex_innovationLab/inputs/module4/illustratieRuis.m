fs = 30;
% y = csvread('csvbestand_getallen.csv');
y = csvread('module3_MSExcel_redValues2.csv');
N = length(y);
% yma = movmean(y,4,'Endpoints','discard');
yma = movmean(y,4);
ymaround = round(yma);

t = (0:N-1)/fs;
tma = (0:length(yma)-1)/fs;

xlims = [0,10];

figure(1);
clf;
subplot(1,2,1)
hold on;
plot(t,y)
% ylim([215 225])
% xlim(xlims)
% subplot(3,1,2)
plot(tma,yma)
ylim([215 225])
xlim(xlims)
subplot(1,2,2)
plot(tma,ymaround)
ylim([215 225])
xlim(xlims)