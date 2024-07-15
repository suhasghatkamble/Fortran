program pi
    implicit none
    
    real(kind = 8) :: area, pie
    integer(kind = 8) :: i,j, N
    real(kind = 8) :: dx, y, x
    real (kind = 8) :: start_time, end_time
    N = 9999999
    dx = 1.0 / N
    x = 0.0
    area = 0.0

    call cpu_time(start_time)
    do i=0, N, 1
        x = i*dx
        y = SQRT(1.0-x*x)
        area = area + y *dx
    end do
    call cpu_time(end_time)


    pie = 4.0 * area
    print *, "Value of pi is = ", pie
    print *, "Execution time = ", end_time-start_time

end program pi