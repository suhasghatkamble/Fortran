
program hello

!                N  PRIME_NUMBER_COUNT
!
!                1           0
!               10           4
!              100          25
!            1,000         168
!           10,000       1,229
!          100,000       9,592
!        1,000,000      78,498
!       10,000,000     664,579
!      100,000,000   5,761,455
!    1,000,000,000  50,847,534


  integer :: N
  integer :: i, j, is_prime_num
  integer :: prime_count
  
  !2 is prime. Our loop starts from 3
  prime_count = 1
  N = 100000

  do i = 3, N
    is_prime_num = 1
    do j = 2, i-1 
      	if (mod(i,j) == 0) then
      	   is_prime_num = 0
      	   exit
      	end if 
    end do
    if (is_prime_num == 1) then
    	prime_count = prime_count + 1
    end if
  end do

  
  print *, 'Number of primes are : ', prime_count
 
  
end program hello


