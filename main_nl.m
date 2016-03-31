params.p1=0.1;
params.p2=0.0142;
params.p3=1.54e-5;
params.n=0.2814;
params.B=0.05;
params.Gb=70;
params.Ib=40;
X0=[300,0,60,0];
t=0:0.001:500;
options=odeset('RelTol',1.e-8);
[~,X]=ode15s(@dX_NL,t,X0,options,params);
%%
figure
subplot(4,1,1)
plot(t,X(:,1))
subplot(4,1,2)
plot(t,X(:,2))
subplot(4,1,3)
plot(t,X(:,3))
subplot(4,1,4)
plot(t,X(:,4))










