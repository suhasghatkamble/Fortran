program time
    implicit none
    integer :: minute, second
    print *, 'enter minute'
    read *, minute
    second = minute * 60
    print *, 'second is : ', second

end program time