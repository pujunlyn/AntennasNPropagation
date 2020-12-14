

t=0:0.01:3;      %时间
z=0:0.1:40;      %向z方向传播
omiga=pi*3/4;    %角频率
beta=1;          %传播常数
tau=0.01;         %反射系数(0,1)

for m=1:length(t)
    y=real(exp(1i*(omiga*t(m)-beta*z))+tau*exp(1i*(omiga*t(m)+beta*z))); 
    plot(z,y)
    ylim([-2.2,2.2])
    pause(0.01);
end