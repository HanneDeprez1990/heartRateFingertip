load('redValues.mat');

%redV2 = floor(movmean(redValues,4)).';
redV2 = redValues.';
idUnique = [1; 1 + find(redV2(1:end-1) ~= redV2(2:end))];
redV = redV2(idUnique);

diffR = sign(diff(redV));
Xpk2 = idUnique(1+find(diff(diffR)<0));
Ypk2 = redV2(Xpk2);

[Ypk,Xpk,Wpk,Ppk] = findpeaks(redV);
% Ypk = Ypk(Ypk>mean(redV));
% Xpk = Xpk(Ypk>mean(redV));

figure; plot(redV2); 
hold on
plot(Xpk2,Ypk2,'ks');

% figure(1);
% clf;
% plot(sign(diffR))

