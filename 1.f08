program Hello
implicit none
real :: epsi32
double precision :: epsi64


epsi32=1.0
do while (1.0 + epsi32 > 1.0)
epsi32=epsi32/2.0
end do
epsi32=epsi32*2.0
write (*,*) "float(32)",epsi32



epsi64=1.0
do while (1.0 + epsi64 > 1.0)
epsi64=epsi64/2.0
end do
epsi64=epsi64*2.0
write(*,*) "float(64)", epsi64
end program Hello