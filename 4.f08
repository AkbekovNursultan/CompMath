program Zero
implicit none
real :: zero32, last_zero32
double precision :: zero64, last_zero64
integer:: iter32=0, iter64=0


zero32=1.0
do while (2.0 * zero32 > zero32)
last_zero32=zero32
zero32=zero32/2.0
iter32=iter32+1
end do
print*, "float(32)",last_zero32
write(*,*) "Amount of iterations:", iter32



zero64=1.0d0
do while (2.0d0 * zero64 > zero64)
last_zero64=zero64
zero64=zero64/2.0d0
iter64=iter64+1
end do
print*, "float(64)", last_zero64
write(*,*) "Amount of iterations:", iter64
end program Zero
