format long;

f1 = @(x) 1 ./ (1 + 25 .* x.^2);
f2 = @(x) exp(-x.^2);

figure(1);
hw2_4_func1(f1);

figure(2);
hw2_4_func1(f2);