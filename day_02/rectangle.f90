program rectangle
    implicit none
    integer :: length, breadth, area
    print *, 'enter length and breadth'
    read *, length, breadth
    area = length * breadth
    print *, 'Area of Rectangle', area
end program rectangle