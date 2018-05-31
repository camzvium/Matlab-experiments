clear all;
clf;


p1=[-1;-1;-1];
p2=[-1; 1;-1];
p3=[-1;-1; 1];
p4=[-1; 1; 1];
p5=[ 1;-1;-1];
p6=[ 1; 1;-1];
p7=[ 1;-1; 1];
p8=[ 1; 1; 1];

theta=1;
turns=40;


x=1
y=.2
z=.5


while(1)
    
rotation1=[1 0 0;0 cosd(theta*x) sind(theta*x); 0 -sind(theta*x) cosd(theta*x)];
rotation2=[cosd(theta*y) 0 sind(theta*y); 0 1 0; -sind(theta*y) 0 cosd(theta*y)];
rotation3=[cosd(theta*z) -sind(theta*z) 0; sind(theta*z) cosd(theta*z) 0; 0 0 1];

rotation=rotation1*rotation2*rotation3;

p1=rotation*p1;
p2=rotation*p2;
p3=rotation*p3;
p4=rotation*p4;
p5=rotation*p5;
p6=rotation*p6;
p7=rotation*p7;
p8=rotation*p8;

v = [p1(1:2).';p2(1:2).';p3(1:2).';p4(1:2).';p5(1:2).';p6(1:2).';p7(1:2).';p8(1:2).']
f = [3 4 8 7;1 2 6 5;1 2 4 3;5 6 8 7;4 2 6 8;3 1 5 7];
axis([-2 2 -2 2]);
patch('Faces',f,'Vertices',v,'FaceColor','green');
pause(0.00001);
clf;
end

