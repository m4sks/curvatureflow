function [fixed_x, fixed_y] = fix_curve(x,y,epsilon)
%FIX_CURVE  remove nodes that are too close
x = [x,x(1)];  % periodic boundary
y = [y,y(1)];   % periodic boundary

fixed_x = [];
fixed_y = [];
for i = 2:length(x)
    if( sqrt((x(i)-x(i-1))^2 + (y(i)-y(i-1))^2)< epsilon)
        fix_x = (x(i) + x(i-1))/2;
        fix_y = (y(i) + y(i-1))/2;
        x(i)=fix_x;
        y(i)=fix_y;
    else
        fix_x = x(i-1);
        fix_y = y(i-1);
        fixed_x(end+1)=fix_x;
        fixed_y(end+1)=fix_y;
    end
end

end

