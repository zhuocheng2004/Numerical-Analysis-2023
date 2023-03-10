
function pts=hw2_4_chebpts(N)
    pts = zeros(1, N + 1);
    for i = (0:N)
        pts(i+1) = cos((2*i+1) * pi / (2*N+2));
    end
end