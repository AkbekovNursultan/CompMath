program MonteCarlo
integer I, M;
double precision S, a, b, r, result;
S = 0;
I = 0;
M = 1000;
a = 3.141592653589793238462643383279;
b = 3 * 3.141592653589793238462643383279 / 2;

do while(I < M)
    call random_number(r)
    r = (b - a) * r + a;
    S = sin(r) + S;
    I = I + 1;
end do
result = S / M * (b - a);
write(*,*) result
end program MonteCarlo
