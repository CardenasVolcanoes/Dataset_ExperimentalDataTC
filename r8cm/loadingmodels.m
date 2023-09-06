clear all
 Kdata=zeros(3*6,6)
jj=1;

% xxb=1;

##   sdataname={'r6cm400C','r6cm600C','r6cm700C','r6cm800C','r6cm500CE2f','r6cm600CE2B','r6cm600CE2f'}
##  number=6
## 
   sdataname={'r8cm400C','r8cm600CB','r8cm600C','r8cm600CE2f','r8cm800CE2A','r8cm800CE2B','r8cm800CE2C'} 
   number=length(sdataname);

ccc=[1 3 5];
 for ii=1:3
 cc=ccc(ii)+1
 if cc==6
filename="QuinticModel";
elseif cc==5
filename="QuadraticModel";
elseif cc==4
filename="CubicModel";
elseif cc==3
filename="ParabolicModel";
elseif cc==2
filename="LinearModel";
end

   for xxb=1:number
 
FolderName=strcat(sdataname{xxb},filename);
cd(FolderName)


filename2=strcat(filename,".cvs");
FileName=strcat(sdataname{xxb},filename2);
FileName2=strcat("kkr",FileName);
load(FileName2,"kk")
Kdata(jj,1:cc)=kk';
jj++;
cd ..
endfor
endfor 




for ii=1:6
KDATA(ii,:)=[Kdata(ii,1:2)];
endfor 

save KLineardata8cm.cvs KDATA 

for ii=1:6
KDATA2(ii,:)=[Kdata(ii+6,1:4)] ;
endfor 

save KCubicdata8cm.cvs KDATA2

for ii=1:6
KDATA3(ii,:)=[Kdata(ii+12,:)];
endfor 

save KQuinticdata8cm.cvs KDATA3


%save Kdata6cm.cvs Kdata
%save Kdata6cm.dat Kdata