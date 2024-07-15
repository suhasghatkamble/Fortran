program pointer
    implicit none

    integer , pointer:: p1
    allocate(p1)
    p1 = 10

    print *, "P1 = ", p1

    p1 = p1+4
    print *, "P1+4 = ", p1
    
    deallocate(p1)
    end program pointer