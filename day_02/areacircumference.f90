program circle
    implicit none
    real :: radius, area, circumference
    print *, 'Enter radius'
    read *, radius
    circumference = 2 * 3.14 * radius
    area = 3.14 * radius * radius
    print *, 'Area of Circle : ', area
    print *, 'Area of Circumference : ', circumference
end program circle