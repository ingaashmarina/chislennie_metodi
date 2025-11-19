



function a = pwrmethod(A)
eps = 10^(-6);
N = 3;
pv = ones(N, 1) * 100;
cv = ones(N, 1);
while abs(cv(1) - sign(cv(1) * pv(1)) * pv(1)) >= eps
    pv = cv;
    cv = A * pv / norm(pv);
end
a= cv(1) * norm(pv) / pv(1);
a = abs(a);
end