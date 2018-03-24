res = 30;
the = linspace(0,1,res);
r = 0.5;
x = r*cos(2*pi*the);%+0.2*sin(6*pi*the);
y = r*sin(2*pi*the);
x = x(1:end-1);
y = y(1:end-1);
dt = 0.05;
fin = 1000; % final time
plot(x,y,'k'); hold on;
plot([x(end),x(1)],[y(end),y(1)]);
xlim([-1,1]); ylim([-1,1]); axis equal;
pause
hold off

for k = 1:fin
    % create curvatures
    kap  = compute_curvature(x,y);
    nrml = compute_normal(x,y);
    x = x +dt.*kap.*nrml(1,:);
    y = y  +dt.*kap.*nrml(2,:);
    plot(x,y,'k'); hold on;
    plot([x(end),x(1)],[y(end),y(1)]);
    xlim([-1,1]); ylim([-1,1]); axis equal
    pause(0.2)
    hold off
    [x,y]=fix_curve(x,y,1E-2);
end


