
function hw2_4_func1(func)
    Ns = 10:34;
    errs = zeros(1, numel(Ns));
    for k = 1:numel(Ns)
        N = Ns(k);
        nodes_equi = -1 + (2 / N) * (0:N);
        nodes_cheb = hw2_4_chebpts(N);
        poly1 = hw2_4_lagrange(nodes_equi, func(nodes_equi));
        poly2 = hw2_4_lagrange(nodes_cheb, func(nodes_cheb));
        pts = linspace(-1.0, +1.0, 1000);
        ys_equi = zeros(1, numel(pts));
        ys_cheb = zeros(1, numel(pts));
        for i = 1:numel(pts)
            ys_equi(i) = polyval(poly1, pts(i));
            ys_cheb(i) = polyval(poly2, pts(i));
        end
        err = 0;
        for i = 1:numel(pts)
            t = abs(ys_cheb(i) - func(pts(i)));
            if t > err
                err = t;
            end
        end
        errs(k) = err;
    end
    plot(Ns, errs);
end