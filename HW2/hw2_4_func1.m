
function hw2_4_func1(func)
    Ns = 10:30;
    for k = 1:numel(Ns)
        N = Ns(k);
        nodes_equi = -1 + (2 / N) * (0:N);
        nodes_cheb = hw2_4_chebpts(N);
        poly1 = hw2_4_lagrange(nodes_equi, func(nodes_equi));
        poly2 = hw2_4_lagrange(nodes_cheb, func(nodes_cheb));
        pts = linspace(-1, +1, 1000);
        ys_equi = zeros(1, numel(pts));
        ys_cheb = zeros(1, numel(pts));
        for i = 1:numel(pts)
            ys_equi(i) = polyval(poly1, pts(i));
            ys_cheb(i) = polyval(poly2, pts(i));
        end
        plot(pts, ys_cheb);
        hold on;
    end
end