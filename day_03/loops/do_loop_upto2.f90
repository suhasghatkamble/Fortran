program loops
    implicit none
    
    integer :: i, n

    n = 10

    do i = n, 2, -1
        print *, "i = ", i
    end do

end program loops