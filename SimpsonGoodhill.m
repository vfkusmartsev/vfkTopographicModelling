%%%%%Setting up parameters from the paper (not important right now)
sideofarray=1;
Iterations=1000;
Axons=400;
%B=branches
Bperaxon=8;
Totalbranches=Axons*Bperaxon;
Binteractr=0.05;
signalingratio=1.1;
m1=0.02;
m2=0.2;
m3=0.15;
magbordereffect=0.1;
%%
%%%%setting up the retinal grid of axons
[retinalx,retinaly]=meshgrid(0:0.0526:1,0:0.0526:1);
RetPos=cat(3,retinalx,retinaly);
%recall each RGC as RetPos(x,y,:)
%the final true position in the SC due to chemoaffinity is assumed to be
%the same as this grid.

%Generating the distributions for the SC initial positions:
SCxi=rand(20,20);
SCyi=-rand(20,20)/5;
PutativeSCPos=cat(3,SCxi,SCyi);
%%How to then distribute normally about these points?? 
sigma=0.1;


%All RGC Positions:
RGCPos=cat(4,RetPos,SCPos);
%This gives 4-D array: 9 lots of 3D arrays locating the x and y positions
%of each axon. 3D array 1 = retina, 3D arrays 2 to 9 = branches in the SC.
%Keeping x and y constant links the Retinal axon to each of its branches in
%the SC





%%%%%%Trying different matrix approach
%400 cells, 1st column retina, columns 2-9 branches in SC, 2d x and y
%coords
RGC=zeros(400,9,2);

