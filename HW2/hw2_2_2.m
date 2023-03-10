format long;

e = exp(1);

hs = 10.^(0:-1:-15);

%error_f = @(h) abs((exp(1+h) - e) ./ h - e) ./ e;
error_f = @(h) abs((exp(1+h) - exp(1-h)) ./ (2 * h) - e) ./ e;

errors = error_f(hs);

loglog(hs, errors, "*-");
