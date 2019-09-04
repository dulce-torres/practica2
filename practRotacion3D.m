clear all
clc

 promt = 'introduzca el valor (grados) de la rotacon X (phi):';
 phideg = input(promt);
 phiRad = deg2rad(phideg);
 
 promt = 'introduzca el valor (grados) de la rotacon Y (theta):';
 thetadeg = input(promt);
 thetaRad = deg2rad(thetadeg);
 
 promt = 'introduzca el valor (grados) de la rotacon Z (psi):';
 psideg = input(promt);
 psiRad = deg2rad(psideg);
  
 for phiRad=0:0.4:phiRad
     clf
    for thetaRad=0:0.4:thetaRad
        clf
       for psiRad=0:0.4:psiRad 
          clf
 line([-7 7],[0 0],[0 0],'color',[1 0 0],'linewidth',2.5); %establece el eje X en rojo
 line([0 0],[-7 7],[0 0],'color',[0 1 0],'linewidth',2.5); %establece el eje Y en verde
 line([0 0],[0 0],[-7 7],'color',[0 0 1],'linewidth',2.5); %establece el eje Z en azul

 p1=[0 0 0];
 p2=[7 0 0];
 p3=[7 3 0];
 p4=[0 3 0];
 p5=[0 3 2];
 p6=[0 0 2];
 p7=[7 0 2];
 p8=[7 3 2];

 
 line([p1(1) p2(1)],[p1(2) p2(2)],[p1(3) p2(3)],'color',[0 0 1],'linewidth',2.5); %% traza linea del punto p1 a p2 sobre el eje x
 line([p2(1) p3(1)],[p2(2) p3(2)],[p2(3) p3(3)],'color',[0 0 1],'linewidth',2.5);
 line([p3(1) p4(1)],[p3(2) p4(2)],[p3(3) p4(3)],'color',[0 0 1],'linewidth',2.5);
 line([p1(1) p4(1)],[p1(2) p4(2)],[p1(3) p4(3)],'color',[0 0 1],'linewidth',2.5);
 line([p4(1) p5(1)],[p4(2) p5(2)],[p4(3) p5(3)],'color',[0 0 1],'linewidth',2.5);
 line([p5(1) p6(1)],[p5(2) p6(2)],[p5(3) p6(3)],'color',[0 0 1],'linewidth',2.5);
 line([p5(1) p8(1)],[p5(2) p8(2)],[p5(3) p8(3)],'color',[0 0 1],'linewidth',2.5);
 line([p6(1) p7(1)],[p6(2) p7(2)],[p6(3) p7(3)],'color',[0 0 1],'linewidth',2.5);
 line([p6(1) p1(1)],[p6(2) p1(2)],[p6(3) p1(3)],'color',[0 0 1],'linewidth',2.5);
 line([p7(1) p8(1)],[p7(2) p8(2)],[p7(3) p8(3)],'color',[0 0 1],'linewidth',2.5);
 line([p7(1) p2(1)],[p7(2) p2(2)],[p7(3) p2(3)],'color',[0 0 1],'linewidth',2.5);
 line([p8(1) p3(1)],[p8(2) p3(2)],[p8(3) p3(3)],'color',[0 0 1],'linewidth',2.5);
 



Rz = [cos(psiRad) -sin(psiRad) 0; sin(psiRad) cos(psiRad) 0;0 0 1];
Rx = [1 0 0; 0 cos(phiRad) -sin(phiRad); 0 sin(phiRad) cos(phiRad)];
Ry = [ cos(thetaRad) 0 -sin(thetaRad); 0 1 0; sin(thetaRad) 0 cos(thetaRad)];
Rt=Ry*Rx*Rz;


p1r = Rt*p1';
p2r = Rt*p2';
p3r = Rt*p3';
p4r = Rt*p4';
p5r = Rt*p5';
p6r = Rt*p6';
p7r = Rt*p7';
p8r = Rt*p8';

 
     
 line([-7 7],[0 0],[0 0],'color',[1 0 0],'linewidth',2.5); %establece el eje X en rojo
 line([0 0],[-7 7],[0 0],'color',[0 1 0],'linewidth',2.5); %establece el eje Y en verde
 line([0 0],[0 0],[-7 7],'color',[0 0 1],'linewidth',2.5); %establece el eje Z en azul
 
 
 line([p1r(1) p2r(1)],[p1r(2) p2r(2)],[p1r(3) p2r(3)],'color',[0 0 1],'linewidth',2.5); %% traza linea del punto p1 a p2 sobre el eje x
 line([p2r(1) p3r(1)],[p2r(2) p3r(2)],[p2r(3) p3r(3)],'color',[0 0 1],'linewidth',2.5);
 line([p3r(1) p4r(1)],[p3r(2) p4r(2)],[p3r(2) p4r(3)],'color',[0 0 1],'linewidth',2.5);
 line([p1r(1) p4r(1)],[p1r(2) p4r(2)],[p1r(3) p4r(3)],'color',[0 0 1],'linewidth',2.5);
 line([p4r(1) p5r(1)],[p4r(2) p5r(2)],[p4r(3) p5r(3)],'color',[0 0 1],'linewidth',2.5);
 line([p5r(1) p6r(1)],[p5r(2) p6r(2)],[p5r(3) p6r(3)],'color',[0 0 1],'linewidth',2.5);
 line([p5r(1) p8r(1)],[p5r(2) p8r(2)],[p5r(3) p8r(3)],'color',[0 0 1],'linewidth',2.5);
 line([p6r(1) p7r(1)],[p6r(2) p7r(2)],[p6r(3) p7r(3)],'color',[0 0 1],'linewidth',2.5);
 line([p6r(1) p1r(1)],[p6r(2) p1r(2)],[p6r(3) p1r(3)],'color',[0 0 1],'linewidth',2.5);
 line([p7r(1) p8r(1)],[p7r(2) p8r(2)],[p7r(3) p8r(3)],'color',[0 0 1],'linewidth',2.5);
 line([p7r(1) p2r(1)],[p7r(2) p2r(2)],[p7r(3) p2r(3)],'color',[0 0 1],'linewidth',2.5);
 line([p8r(1) p3r(1)],[p8r(2) p3r(2)],[p8r(3) p3r(3)],'color',[0 0 1],'linewidth',2.5);

 pause(0.1);
      end
    end
   end