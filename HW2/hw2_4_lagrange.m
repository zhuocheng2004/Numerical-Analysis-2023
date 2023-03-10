
function f=hw2_4_lagrange(nodes, values)
    assert(numel(nodes) == numel(values));
    f = zeros(1, numel(nodes));

    for k = 1:numel(nodes)
        poly = 1; ratio = 1;
        for i = 1:numel(nodes)
            if i == k
                continue
            end
            poly = conv(poly, [1, -nodes(i)]);
            ratio = ratio * (nodes(k) - nodes(i));
        end
        assert(ratio ~= 0);
        poly = poly / ratio;
        %disp(poly);
        f = f + poly * values(k);
    end
end
