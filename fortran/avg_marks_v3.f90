
program avg_marks
  implicit none	
  
  integer :: marks(0:400)
  integer :: i, sum = 0
  real :: avg
  
  marks = (/(i,i=100,500,1)/)
  
  do i = 0,4 
  	print *, "marks(i) = ", marks(i)            
  enddo
  
  do i = 0,4 
  	sum = sum + marks(i)             
  enddo
  
  avg = sum/5
  
  print *, "avg = ", avg
  
end program avg_marks

