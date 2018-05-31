clear all;
clf;

%Fe=q/r^2

[x,y] = meshgrid(-1:0.1:1,-1:0.1:1);

 disp0x=-0.4, disp0y= 0.4;
 disp1x=-0.4, disp1y=-0.4;
 disp2x= 0.4, disp2y= 0.4;
 disp3x= 0.4, disp3y=-0.4;
 disp4x=-1,   disp4y= 0;
 
 exp=-0.01;
 
 q0=0.8;
 q1=1.5;
 q2=1.3;
 q3=0.6;
 q4=2;
 
 
 while(disp4x<=1 && disp4y<=1 && disp4x>=-1 && disp4y>=-1)
 
 r0=((((x-disp0x).^(2))+((y-disp0y).^(2))));
 r1=((((x-disp1x).^(2))+((y-disp1y).^(2))));
 r2=((((x-disp2x).^(2))+((y-disp2y).^(2))));
 r3=((((x-disp3x).^(2))+((y-disp3y).^(2))));
 r4=((((x-disp4x).^(2))+((y-disp4y).^(2))));
 
 VectorX=(r0.^(exp)).*((x-disp0x)./r0).*q0;
 VectorX=VectorX+(r1.^(exp)).*((x-disp1x)./r1).*q1;
 VectorX=VectorX+(r2.^(exp)).*((x-disp2x)./r2).*q2;
 VectorX=VectorX+(r3.^(exp)).*((x-disp3x)./r3).*q3;
 VectorX=VectorX+(r4.^(exp)).*((x-disp4x)./r4).*q4;
 
 VectorY=(r0.^(exp)).*((y-disp0y)./r0).*q0;
 VectorY=VectorY+(r1.^(exp)).*((y-disp1y)./r1).*q1;
 VectorY=VectorY+(r2.^(exp)).*((y-disp2y)./r2).*q2;
 VectorY=VectorY+(r3.^(exp)).*((y-disp3y)./r3).*q3;
 VectorY=VectorY+(r4.^(exp)).*((y-disp4y)./r4).*q4;
 
 
 VectorX(~isfinite(VectorX))=0;
 VectorY(~isfinite(VectorY))=0;
 
 VectorX(VectorX > 100000000) = 0;
 VectorX(VectorX <-100000000) = 0;
 
 VectorY(VectorY > 100000000) = 0;
 VectorY(VectorY <-100000000) = 0;


 quiver(x,y,VectorX,VectorY)
 hold on
 
 scatterx=[disp0x disp1x disp2x disp3x disp4x];
 scattery=[disp0y disp1y disp2y disp3y disp4y];
 sz=50
 scatter(scatterx,scattery,sz,'filled')
 
 %disp0x=disp0x+0.1
 %disp0y=disp0y-0.1
 
 %disp1x=disp1x+0.1
 %disp1y=disp1y+0.1
 
 %disp2x=disp2x-0.1
 %disp2y=disp2y-0.1
 
 %disp3x=disp3x-0.1
 %disp3y=disp3y+0.1
 
 disp4x=disp4x+0.1
 %disp4y=disp4y+0.1
 
 pause(1);
 clf;
 end
 

