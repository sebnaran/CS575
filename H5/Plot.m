

NUMT = [16000,32000,64000,128000,256000,512000,1000448];
B1   = [551,968,1826,2952,4558,6053,7368];
B2   = [571,962,1976,3603,5917,8738,11626];
B3   = [571,1091,2102,3964,6855,10862,16173];
B4   = [592,1160,2184,4179,7252,11453,16249];
figure(1)
clf

plot(NUMT,B1,'x','LineWidth',3,'color','m')
hold on
plot(NUMT,B2,'o','LineWidth',3,'color','y')
plot(NUMT,B3,'d','LineWidth',3,'color','b')
plot(NUMT,B4,'s','LineWidth',3,'color','r')


plot(NUMT,B1,'Linewidth',2,'color','m')
plot(NUMT,B2,'LineWidth',2,'color','y')
plot(NUMT,B3,'LineWidth',2,'color','b')
plot(NUMT,B4,'LineWidth',2,'color','r')
set(gca,'FontSize',15)
set(gca,'linewidth',2)

legend('Bls=16','Bls=32','Bls=64','Bls=128')
legend('NumColumns',2)

leftaxis = 0;
rightaxis = 1100000;
upaxis = 18000;
downaxis = 0;

axis([leftaxis rightaxis downaxis upaxis])


BS   = [16,32,64,128];
N1   = [551,571,571,592];
N2   = [968,962,1091,1160];
N3   = [1826,1976,2102,2184];
N4   = [2952,3603,3964,4179];
N5   = [4558,5917,6855,7252];
N6   = [6053,8738,10862,11453];
N7   = [7368,11626,16173,16249];
figure(2)
clf
plot(BS,N1,'x','LineWidth',3,'color','m')
hold on
plot(BS,N2,'o','LineWidth',3,'color','y')
plot(BS,N3,'d','LineWidth',3,'color','b')
plot(BS,N4,'s','LineWidth',3,'color','r')
plot(BS,N5,'p','LineWidth',3,'color','g')
plot(BS,N6,'h','LineWidth',3,'color','c')
plot(BS,N7,'+','LineWidth',3,'color','k')

plot(BS,N1,'Linewidth',2,'color','m')
plot(BS,N2,'LineWidth',2,'color','y')
plot(BS,N3,'LineWidth',2,'color','b')
plot(BS,N4,'LineWidth',2,'color','r')
plot(BS,N5,'LineWidth',2,'color','g')
plot(BS,N6,'LineWidth',2,'color','c')
plot(BS,N7,'LineWidth',2,'color','k')


set(gca,'FontSize',15)
set(gca,'linewidth',2)

legend('16K','32K','64K','128K','256K','512K','1M')
legend('NumColumns',2)

leftaxis = 0;
rightaxis = 130;
upaxis = 22000;
downaxis = 0;

axis([leftaxis rightaxis downaxis upaxis])

