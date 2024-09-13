program Zero
implicit none
real :: zero32, last_zero32
double precision :: zero64, last_zero64


zero32=1.0
do while (2.0 * zero32 > zero32)
last_zero32=zero32
zero32=zero32/2.0
end do
print*, "float(32)",last_zero32



zero64=1.0d0
do while (2.0d0 * zero64 > zero64)
last_zero64=zero64
zero64=zero64/2.0d0
end do
print*, "float(64)", last_zero64
end program Zero
