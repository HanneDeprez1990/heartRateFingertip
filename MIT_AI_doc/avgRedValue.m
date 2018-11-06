fotoNames = dir('fotos/*.jpg');

for fotoNb = 1:numel(fotoNames)
    fotoname = fotoNames(fotoNb).name;
    A = imread(sprintf('fotos/%s',fotoNames(fotoNb).name));
    l = size(A,1);
    b = size(A,2);
    
    redValues(fotoNb) = mean(mean(A(3*l/4:l,3*b/4:b,1)));
    %     imwrite(A,fotoname(24:end));
end

t = (0:length(redValues)-1)/24;

figure(1);
clf;
plot(t(1:end),redValues(1:end));