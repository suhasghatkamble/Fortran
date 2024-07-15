program cyliner
    implicit none
    real :: h, pi, r, area, area1, volume
    ! print *, 'enter value of height and radius', h, r
    ! read *, h, r
    h = 100.1
    r = 10.5
    pi = 3.14

    area1 = area(h,r,pi)
    call call_volume(h,r,pi,volume)

    print *, 'area of cylinder is : ', area1
    print *, 'volume of cylinder is : ', volume
end program cyliner


function area(h,r,pi)
    implicit none
    real, intent(in):: h,r,pi
    real :: area
    area = (2 * pi * r * h) + 2 * pi * r * r
end function area

subroutine call_volume(h,r,pi, volume)
    implicit none
    real, intent(in) :: h, r, pi
    real :: volume
    volume = pi * r * r * h
end subroutine call_volume