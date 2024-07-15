program area_rectangle
    implicit none

    integer :: h, w, area, area1, perimeter

    h = 70;
    w = 20;

    area1 = area(w,h)
    call calc_perimeter(w, h, perimeter)
    print *, 'w = ', w, 'h = ', h
    print *, "area = ", area1, " perimeter = ", perimeter
end program area_rectangle

function area(h1, w1)
    implicit none
    integer :: w1,h1, area, a  ! garbage value in area
    a = w1 * h1
    h1 = 15; ! before this old value take but next perimeter use new value
    w1 = 5;

    return 
end function area


subroutine calc_perimeter(w, h, perimeter)
    implicit none
    integer :: w, h, perimeter
    perimeter = 2*(w+h)
end subroutine calc_perimeter