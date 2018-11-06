function MITAI_to_RGB(c)

c1 = c+16777216;
% c1=c;

B = mod(c1,256)
G = mod(c1/256,256)
R = mod(c1/(256*256),256)