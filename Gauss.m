function M = Gauss(A,f)
N = 3;
M = zeros(1, N);
%A=[-3 -1 -2; -1 -1 1;-2 1 -2];
%f=[-8;-5;-3];
A = [A, f];
for i=1:N
    amax = A(i,i);
    imax = i;
    for j=(i+1):N
        if abs(A(j,i))>abs(amax)
            amax = A(j,i);
            imax = j;
        end
    end
    for j=i:(N+1)
        h = A(i,j);
        A(i,j) = A(imax,j);
        A(imax,j) = h;
    end
    h = A(i,i);
    for j=i:(N+1)
        A(i,j) = A(i,j) / h;
    end
    for j=(i+1):N
        h = A(j,i);
        for k=i:(N+1)
            A(j,k) = A(j,k) - A(i,k) * h;
        end
    end
end
 % обратный ход
 for i=0:(N-1)
     M(N-i) = A(N-i,N+1);
     for j=0:(i-1)
         M(N-i) = M(N-i) - M(N-j) * A(N-i,N-j);
     end
 end
 M = M.';

end