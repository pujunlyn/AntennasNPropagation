

t=0:0.01:3;      %ʱ��
z=0:0.1:40;      %��z���򴫲�
omiga=pi*3/4;    %��Ƶ��
beta=1;          %��������
tau=0.01;         %����ϵ��(0,1)

for m=1:length(t)
    y=real(exp(1i*(omiga*t(m)-beta*z))+tau*exp(1i*(omiga*t(m)+beta*z))); 
    plot(z,y)
    ylim([-2.2,2.2])
    pause(0.01);
end