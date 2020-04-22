% view(3)
grid on
grid minor;
axis equal;
hold on
xlim1 = min(position(:,1));
xlim2 = max(position(:,1));
ylim1 = min(position(:,2));
ylim2 = max(position(:,2));
zlim1 = min(position(:,3));
zlim2 = max(position(:,3));
position_axes = gca;
% set(position_axes, 'XLim', [xlim1 xlim2]);
% set(position_axes, 'YLim', [ylim1 ylim2]);
% set(position_axes, 'ZLim', [zlim1 zlim2]);
for i = 2:50:length(position)
    scatter(position_axes,position(i,2),position(i,1));       
%     scatter3(positionaxes,position(i,1),position(i,2),position(i,3));       
end

hold off
plot(simout(:,8), simout(:,7),'Linewidth',2)
grid minor
hold on
plot(simout(1,8), simout(1,7),'r*','Linewidth',2,'MarkerSize',20)
plot(105.798,21.215,'g*','Linewidth',2,'MarkerSize',20)
plot(105.8135528564453,21.219041824340820,'g*','Linewidth',2,'MarkerSize',20)
legend('Trajectory','Home','Waypoint')
xlabel('Longitude')
ylabel('Latitude')
set(gca,'Fontsize',26)

hold off
plot3(simout(:,8), simout(:,7),simout(:,9),'Linewidth',2)
grid minor
hold on
plot3(simout(1,8), simout(1,7),simout(1,9),'r*','Linewidth',2,'MarkerSize',20)
plot3(105.798, 21.215, 50,'g*','Linewidth',2,'MarkerSize',20)
plot3(105.8135528564453,21.219041824340820,50,'g*','Linewidth',2,'MarkerSize',20)
legend('Trajectory','Home','Waypoint')
xlabel('Longitude')
ylabel('Latitude')
set(gca,'Fontsize',26)

plot(drag(:,5),drag(:,4))
xlim = [0 0.045];
grid minor
set(gca, 'Xlim', xlim)
set(gca, 'Ylim', [0 0.7])
hold on
scatter(drag(7,5),drag(7,4))
a=[drag(7,5),drag(7,4)]
b=[0, 0]
xlabel('Cd')
ylabel('Cl')
plot([b(1),a(1)],[b(2),a(2)],'Color','r')
legend('Lift to drag polar','V = 24m/s','Tangent')
set(gca,'Fontsize',26)

plot(drag(:,5),drag(:,4))
xlim = [0 0.045];
grid minor
set(gca, 'Xlim', xlim)
set(gca, 'Ylim', [0 0.7])
