program triangle
    implicit none
    real :: breadth, height, area
    print *, 'Enter breadth and height'
    read *, breadth, height
    area =  (breadth * height)/2
    print *, 'Area of traingle is : ', area
end program triangle