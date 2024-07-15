
program vector_addition
  implicit none
  integer, allocatable, dimension(:) :: A, B, C
  integer :: i, arr_size, ok, done
  
  print *,"Input array_size"
  read *, arr_size
  
  allocate(A(arr_size),B(arr_size),C(arr_size),STAT=ok)
  if(ok /= 0) then
  	print *, "Could not allocate arrays"
  	stop
  end if
  do i = 1, arr_size
  	A(i) = i
  	B(i) = 0
  	C(i) = 1000
  enddo
  
  do i = 1,arr_size 
  	C(i) = A(i) + B(i)             
  enddo
  
  do i = 1,4
  	print *, C(i)
  enddo
  
  deallocate(A,B,C, STAT=done)
  if(done /= 0) then
  	print *, "Could not release allocated arrays"
  	stop
  end if
end program vector_addition


