program float_to_binary
    implicit none
    double precision :: number
    integer :: intPart, fracLen
    double precision :: fracPart
    character(len=128) :: binaryInt, binaryFrac

    write (*,*) "Enter a floating-point number:"
    read (*,*) number
    write(*,*) "Write the amount of numbers you want to see in fraction:"
    read(*,*) fracLen

    intPart = floor(number)
    fracPart = number - intPart

    binaryInt = convertIntToBinary(intPart)
    binaryFrac = convertFracToBinary(fracPart, fracLen)
    print *, binaryFrac
    print *, "Binary representation: ", trim(binaryInt) // "." // binaryFrac

contains

    function convertIntToBinary(num) result(returnedValue)
        integer :: num
        character(len=128) :: returnedValue
        integer :: remainder
        character(len=1) :: binaryValue

        returnedValue = ""
        if (num == 0) then
            returnedValue = "0"
            return
        end if
        do while (num > 0)
            remainder = mod(num, 2)
            binaryValue = char(iachar("0") + remainder)
            returnedValue = binaryValue // returnedValue
            num = num / 2
        end do
    end function convertIntToBinary

    function convertFracToBinary(frac, fracLen) result(returnedValue)
    double precision :: frac
    integer :: fracLen, i
    character(len=128) :: returnedValue

    returnedValue = ""
    i = 0
    
    do while (i < fracLen)
        frac = frac * 2
        if (frac >= 1.0) then
            returnedValue = trim(returnedValue) // "1"
            frac = frac - 1.0
        else
            returnedValue = trim(returnedValue) // "0"
        end if
        i = i + 1
    end do
    
    if (i < fracLen) then
        do while (fraclen > i)
            returnedValue = trim(returnedValue) // "0"
	        i = i + 1
 	    end do
    end if

end function convertFracToBinary


end program float_to_binary