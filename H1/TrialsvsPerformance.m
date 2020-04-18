Trials = [10,250,500,750,1000,1500,2000];

NumT1 = [9.26,14.81,15.01,15.13,15.12,15.10,15.10];
NumT2 = [8.42,28.55,28.89,29.91,29.81,29.77,30.05];
NumT4 = [8.04,52.41,57.54,58.15,58.97,59.87,59.71];
NumT8 = [9.43,40.05,88.23,98.63,98.95,100.3,100.5];
figure(1)
clf
plot(Trials,NumT1,'o','LineWidth',3,'color','k')
hold on
plot(Trials,NumT2,'d','LineWidth',3,'color','b')
plot(Trials,NumT4,'s','LineWidth',3,'color','r')
plot(Trials,NumT8,'h','LineWidth',3,'color','g')
set(gca,'FontSize',15)
set(gca,'linewidth',2)

plot(Trials,NumT1,'LineWidth',3,'color','k')
plot(Trials,NumT2,'LineWidth',3,'color','b')
plot(Trials,NumT4,'LineWidth',3,'color','r')
plot(Trials,NumT8,'LineWidth',3,'color','g')

leftaxis = 0;
rightaxis = 2000;
upaxis = 115;
downaxis = 0;

axis([leftaxis rightaxis downaxis upaxis])
legend('1 Thread','2 Threads','4 Threads','8 Threads')
legend('Location','northwest')