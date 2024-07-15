program loops
    implicit none
    
    integer :: i, n

    n = 10

    do i = 1, n, 1
        print *, "2     * ", i, " = ", 2*i
    end do

end program loops