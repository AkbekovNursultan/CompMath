program Infi
implicit none
real :: infi32, last_infi32
double precision :: infi64, last_infi64


infi32=1.0
do while (2.0 * infi32 > infi32)
last_infi32=infi32
infi32=infi32*2.0
end do
print*, "float(32)",last_infi32



infi64=1.0d0
do while (2.0d0 * infi64 > infi64)
last_infi64=infi64
infi64=infi64*2.0
end do
print*, "float(64)", last_infi64
end program Infi
