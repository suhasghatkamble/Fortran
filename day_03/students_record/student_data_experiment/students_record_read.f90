program students_record
  implicit none
  
  integer::sub1,sub2,sub3,sub4,avg
  ! integer::avg

  integer:: i, ios
 
  open(1,file='student.data')
  


  do 
  	read(1,FMT=50,IOSTAT=ios)sub1, sub2, sub3, sub4,avg

  	if(ios < 0) exit
  	
  	! avg = real(sub1 + sub2 + sub3 + sub4)/4.0;
  	print *, "avg = ", avg
  end do
  
  50 FORMAT(5I3)

  close(1)

end program students_record



