clear all;
clf;

%8 points of the cube
p1=[-1;-1;-1];
p2=[-1; 1;-1];
p3=[-1;-1; 1];
p4=[-1; 1; 1];
p5=[ 1;-1;-1];
p6=[ 1; 1;-1];
p7=[ 1;-1; 1];
p8=[ 1; 1; 1];


%rotation amount for each axis by simulation step (degrees)
x=1
y=.2
z=.5


while(1)
    
%rotation matrices for each axis
rotation1=[1 0 0;0 cosd(x) sind(x); 0 -sind(x) cosd(x)];
rotation2=[cosd(y) 0 sind(y); 0 1 0; -sind(y) 0 cosd(y)];
rotation3=[cosd(z) -sind(z) 0; sind(z) cosd(z) 0; 0 0 1];

%combine rotation matrices
rotation=rotation1*rotation2*rotation3;

%apply rotation matrices on points
p1=rotation*p1;
p2=rotation*p2;
p3=rotation*p3;
p4=rotation*p4;
p5=rotation*p5;
p6=rotation*p6;
p7=rotation*p7;
p8=rotation*p8;

%plot using patch
v = [p1(1:2).';p2(1:2).';p3(1:2).';p4(1:2).';p5(1:2).';p6(1:2).';p7(1:2).';p8(1:2).']
f = [3 4 8 7;1 2 6 5;1 2 4 3;5 6 8 7;4 2 6 8;3 1 5 7];
axis([-2 2 -2 2]);
patch('Faces',f,'Vertices',v,'FaceColor','green');
pause(0.00001);
clf;
end

