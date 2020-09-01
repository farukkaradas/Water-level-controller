V=5;
k=1000;

y=1000:100:10000;

% 
%     4.75/x=0.250/(10k+y)+0.25(2k);
% 
%     4.75 = 0.25(1/(10k+y)+1/(2*k))*x;
% 
%     19 = (1/(10k+y)+1/(2*k))*x;
% 
%     19 = (12k+y)/((10k+y)*2*k)*x;

% 4.75/(x+10*k)=0.250/(y)+0.25/(2k);
% 
% 19/(x+10*k)=(y+2*k)/(y*2k);
% 
% 38*k*y/(y+2*k)=x+10*k
Rload=22.5*k;
Rl=10*k;
Rh=0;
Vo=0.270;
x = ((V-Vo)/Vo)*Rload * ((Rl+y))./((Rload+Rl+y))-Rh;

plot(y,x)
xlabel("R2 on ohm")

hold all;
Vo=0.13;
Rl=0;
Rh=10*k;
x = ((V-Vo)/Vo)*Rload * ((Rl+y))./((Rload+Rl+y))-Rh;
plot(y,x)

ylabel("R1 on ohm")
