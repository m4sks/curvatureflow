function [n] = compute_normal(x,y)
perx = [x(end),x,x(1)];  % periodic boundary
pery = [y(end),y,y(1)];   % periodic boundary
np=[-(pery(3:end)-pery(2:end-1));perx(3:end)-perx(2:end-1)];
nm=[-(pery(2:end-1)-pery(1:end-2));perx(2:end-1)-perx(1:end-2)];
n = (np + nm)/(norm(np + nm,2));
% np=[-(pery(3:end)-pery(1:end-2));perx(3:end)-perx(1:end-2)];
% n = np/norm(np,2);
end