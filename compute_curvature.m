function [kap]=compute_curvature(x,y)
% Compute the curvature of a closed planar
% curve defined by (x,y)
perx = [x(end),x,x(1)];  % periodic boundary
pery = [y(end),y,y(1)];   % periodic boundary
dx   = perx(3:end)-perx(1:end-2);
dy   = pery(3:end)-pery(1:end-2);
dxx = perx(1:end-2)-2*perx(2:end-1)+perx(3:end);
dyy = pery(1:end-2)-2*pery(2:end-1)+pery(3:end);
kap = (dx.*dyy - dy.*dxx)./((dx.^2 + dy.^2).^(1.5));
end