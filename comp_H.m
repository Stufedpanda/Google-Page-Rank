function [Z] = comp_H(a, b, f)
syms x y
[X, Y] = meshgrid(a, b);
f_x = subs(f(1, 1),[x y],{X,Y});
f_y = subs(f(2, 1),[x y],{X,Y});
f_x2 = subs(f(1, 2),[x y],{X,Y});
f_y2 = subs(f(2, 2),[x y],{X,Y});
Z = f_x + f_y + f_x2 + f_y2;
end
