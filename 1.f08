program Epsilon
implicit none
real :: epsi32
double precision :: epsi64
integer:: iter32=0, iter64=0


epsi32=1.0
do while (1.0 + epsi32 > 1.0)
epsi32=epsi32/2.0
iter32=iter32+1
end do
epsi32=epsi32*2.0
write (*,*) "float(32)",epsi32
write(*,*) "Amount of iterations:", iter32



epsi64=1.0
do while (1.0 + epsi64 > 1.0)
epsi64=epsi64/2.0
iter64=iter64+1
end do
epsi64=epsi64*2.0
write(*,*) "float(64)", epsi64
write(*,*) "Amount of iterations:", iter64
end program Epsilon
