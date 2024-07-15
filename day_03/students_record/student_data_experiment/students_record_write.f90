program students_record
  implicit none
  

  ! Stucture of type student_data i.e class
  type students_data
  	integer::sub1,sub2,sub3,sub4
  	real::avg
  end type students_data
  

  ! struct student my_student;

  type(students_data), allocatable, dimension(:):: myclass
  integer:: i,ok, done, class_size !Number of stundets i.e objects 
  
  print *,"Enter number of students : "
  read *, class_size
  

!allocating memory of size class_size 
! create myclass array of size clas_size
!__________
! 1 |2|3|4|5
! ``````````
  allocate(myclass(class_size),STAT=ok)


  !stat is status it return 0 if memory allocation is successfull , if not then it return -1
  if(ok /= 0) then
  	print *, "Could not allocate arrays"
  	stop
  end if
  


  !do intilizatino , end(1<= class_size) , increament(by default is 1 )
  ! assign values to array 
  do i = 1, class_size
    ! myclass.sub1=11+i
  	myclass(i)%sub1 = 10 + i
  	myclass(i)%sub2 = 20 + i
  	myclass(i)%sub3 = 30 + i
  	myclass(i)%sub4 = 40 + i
  end do
  


  !Calculate avg marks and store it in avg variable of student_data structure
  do i = 1, class_size
  	myclass(i)%avg = real(myclass(i)%sub1 + myclass(i)%sub2 + myclass(i)%sub3 + myclass(i)%sub4)/4.0;
  end do
  

  do i = 1,class_size
  	print *, 'student',i,'=', myclass(i)%avg
  end do
  


  open(1,file='student.data')
  
  do i = 1, class_size
  	write(1,FMT=50)myclass(i)%sub1, myclass(i)%sub2, myclass(i)%sub3, myclass(i)%sub4,int(myclass(i)%avg)
  end do
  

  ! FORMAT statement for writing 4 integer values, each with a field width of 5 characters
  ! 50 is a format statement label
  50 FORMAT(5I3)
  
  close(1)
  



  deallocate(myclass, STAT=done)
  if(done /= 0) then
  	print *, "Could not release allocated arrays"
  	stop
  end if
end program students_record



