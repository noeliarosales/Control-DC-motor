%Ajuste=linear fitting 
%Media=mean

A=[ajuste15;ajuste30;ajuste45;ajuste60;ajuste75;ajuste90;ajuste100];
V=[12*0.15,12*0.3,12*0.45,12*0.6,12*0.75,12*0.9,12];
p=zeros(1,7);
k=p;
for i=1:7
    p(i)=-A(i,1)/A(i,2);
    k(i)=A(i,1)*p(i)/V(i);
end
media_k=mean(k);
media_p=mean(p);

disp('Mean p:')
disp(media_p)

disp('Me k:')
disp(media_k)

subplot(2,1,1)
plot(V,k)
title('Valores de k_e para distintos V')
xlabel('V')
ylabel('k_e')
subplot(2,1,2)
plot(V,p)
title('Valores de p para distintos V')
xlabel('V')
ylabel('p')

% It is noticeable that the value used in the project differs from the obtained mean.
%A specific linear fitting has been used due to the irregular behavior of the motor
%at extremely low and high voltages.