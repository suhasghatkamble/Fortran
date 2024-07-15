
program practice1
  implicit none
  integer, dimension(100) :: A, AA
  integer ::i
  
  !do i = 1, 100
  !	A(i) = i
  !enddo
  
  A = (/ (i,i=1,100) /)
  
  AA = A*A 	
  
  do i = 1,10
  	print *, AA(i)
  enddo
  
end program practice1


