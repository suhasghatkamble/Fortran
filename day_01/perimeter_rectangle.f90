program rectangle
    implicit none

    integer :: l, b, perimeter, area
    print *, 'enter length and breadth'
    read *, l, b
    area = l*b
    perimeter = 2*(l+b)
    print *, "Area =", area, " Perimeter = ", perimeter
    end program rectangle