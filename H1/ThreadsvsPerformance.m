Thread      = [1,2,4,8];
Per1 = [9.54,8.77,8.06,7.61];
Per2 = [15.16,27.23,39.97,54.65];
Per3 = [15.55,30.65,59.46,98.96];
Per4 = [15.56,31.07,62.00,105.84];
Per5 = [15.54,31.07,62.06,106.22];
Per6 = [15.48,30.85,60.38,106.22];
figure(1)
clf
plot(Thread,Per1,'p','LineWidth',3,'color','k')
hold on
plot(Thread,Per2,'x','LineWidth',3,'color','m')
plot(Thread,Per3,'o','LineWidth',3,'color','y')
plot(Thread,Per4,'d','LineWidth',3,'color','b')
plot(Thread,Per5,'s','LineWidth',3,'color','r')
plot(Thread,Per6,'h','LineWidth',3,'color','g')
set(gca,'FontSize',15)
set(gca,'linewidth',2)
plot(Thread,Per1,'LineWidth',3,'color','k')
plot(Thread,Per2,'LineWidth',3,'color','m')
plot(Thread,Per3,'LineWidth',3,'color','y')
plot(Thread,Per4,'LineWidth',3,'color','b')
plot(Thread,Per5,'LineWidth',3,'color','r')
plot(Thread,Per6,'LineWidth',3,'color','g')
leftaxis = 0;
rightaxis = 10;
upaxis = 115;
downaxis = 0;

axis([leftaxis rightaxis downaxis upaxis])

legend('10 Trials','100 Trials','1000 Trials','10000 Trials','100000 Trials','1000000 Trials')
legend('Location','northwest')