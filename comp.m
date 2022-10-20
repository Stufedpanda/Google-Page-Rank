function [f_x] = comp(a, b, f)
syms x y
[X, Y] = meshgrid(a, b);
f_x = subs(f,[x y],{X,Y});
end

