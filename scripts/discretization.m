clear all
ke=3742.65;
p=37.05;

A=[0 1; 0 -p];
B=[0;ke];
C=[1 0];

T=0.0001;
sys=ss(A,B,C,0);
sysd=c2d(sys,T);
F=sysd.A;
G=sysd.B;
C=sysd.C;
D=sysd.D;

Famp=[F zeros(2,1);T*C 1];
Gamp=[G;0];
%Discretización polos
pr=0.12*p;
po=1.2*p;%lo que variamos ahora

polos_realimentacion=[-pr,-pr,-pr];
polos_observador=[-po,-po];

polos_realimentacion_discreto=exp(polos_realimentacion*T);
polos_observador_discreto=exp(polos_observador*T);

Kamp=acker(Famp,Gamp,polos_realimentacion_discreto);
K_I=Kamp(3);
K=Kamp(:,1:2);
L=acker(F',C',polos_observador_discreto)';

fc=0;
%fc=inv(C*inv(eye(2)-(F-G*K))*G);
x_r=800;

