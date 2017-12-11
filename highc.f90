program highc

    integer :: a, b
    integer,parameter :: k32 = selected_int_kind(32)
    integer(kind=16)::x, sequence_size, MAX, i, collatz_func_max, highest, minv, maxv
    external collatz_func
    integer(kind=16), dimension(10,2)::max_nums

    print*,"Minimum Value: "
    read*, minv

    print*,"Maximum Value: "
    read*, maxv

    MAX = 200

    highest = -1

    do i = minv, maxv
        sequence_size = 0
        sequence_size = collatz_func_max(i)
        if(sequence_size > highest) then
            highest = sequence_size
        end if
    end do

    print*, highest


end program highc

recursive integer(kind=16) function collatz_func_max(x) result (val)
    integer(kind=16)::x

    if(x /= 1) then
        if(iand(x,1)==1) then
            val = MAX(x,collatz_func_max((3*x+1)))!2 + collatz_func((3*x+1))
        else
            val = MAX(x,collatz_func_max(x/2))!1 + collatz_func(x/2)
        end if
    end if
    if (x == 1) then
        val = 1
        return
    end if

end function collatz_func_max
