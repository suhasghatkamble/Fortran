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

function area(w,h)
    implicit none
    integer :: w,h, area
    area = w * h
end function area


subroutine calc_perimeter(w, h, perimeter)
    implicit none
    integer :: w, h, perimeter
    perimeter = 2*(w+h)
end subroutine calc_perimeter