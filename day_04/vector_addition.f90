
program vector_addition
    implicit none
    integer :: read_num
    !integer, dimension(10000) :: A, B, C
    integer :: A(10000), B(10000), C(10000)
    integer ::i

    print *, "Enter how many number addition you want"
    read *, read_num
   
    
    do i = 1, read_num
        A(i) = i
        B(i) = i
        ! C(i) = 1000
    enddo
    
    do i = 1,read_num 
        C(i) = A(i) + B(i)             
    enddo
  
    !C = A + B	
    
    do i = 1,read_num
        print *, C(i)
    enddo
    
  end program vector_addition
  
  
  