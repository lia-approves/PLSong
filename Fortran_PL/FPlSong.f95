program FPlSong
  !Declarations block
  integer intArr(7)
  character(len=10), dimension(-1:0,-2:-1,-3:-2,-4:-3,-5:-4,-6:-5,-7:-6) :: strArr
  integer h
  character(len=10) strRet
  
  !Data block
  data intArr / -1, -2, -3, -4, -5, -6, -7 /
  h = 7
  
  do 10 i = -7, -1
     select case(i)
     case(-1)
        call strWrt("C.")
     case(-2)
        call strWrt("with")
     case(-3)
        call strWrt("together")
     case(-4)
        call strWrt("compiled")
     case(-5)
        call strWrt("be")
     case(-6)
        call strWrt("can")
     case(-7)
        call strWrt("Fortran")
     end select
10 continue

  h = 7
  
  do 20 i = -7, -1
    intArr(h) = intArr(h) + 1
    strRet = strArr(intArr(1) - 1, intArr(2) - 1, intArr(3) - 1, intArr(4) - 1, intArr(5) - 1, intArr(6) - 1, intArr(7) - 1)
    write(*,'(a)',advance='no') trim(strRet)
    write(*,'(a)',advance='no') " "
    h = h - 1
20 continue

    Print *, ""
    
contains
subroutine strWrt(str)
  character*(*) str
  intArr(h) = intArr(h) + 1
  strArr(intArr(1), intArr(2), intArr(3), intArr(4), intArr(5), intArr(6), intArr(7)) = str
  h = h - 1
end subroutine strWrt

end program FPlSong
