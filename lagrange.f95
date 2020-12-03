! HOW TO COMPILE THROUGH COMMAND LINE (CMD OR TERMINAL)
! gfortran -c lagrange.f95
! gfortran -o lagrange lagrange.o
!
! The program is open source and can use to numeric study purpose.
! The program was build by Aulia Khalqillah,S.Si., M.Si
!
! email: auliakhalqillah.mail@gmail.com
! ==============================================================================

PROGRAM LAGRANGE_INTERPOLATION
    IMPLICIT NONE
    
    INTEGER :: I,K
    INTEGER,PARAMETER :: N=2
    REAL :: START, FINISH
    
    REAL :: L,P,XU
    REAL :: X(N),Y(N)
    
    
    ! READ DATA
    OPEN (1, FILE="data_lagrange.txt")
    DO I = 1,N
      READ(1,*) X(I),Y(I)
    END DO
    CLOSE(1)
    
    CALL cpu_time(START)
    ! LAGRANGE PROCESS
    OPEN (2, FILE="LagrangeOut.txt",STATUS="REPLACE")
    XU = 10
    P = 0
    DO K = 1,N
        L = 1
        DO I = 1,N
            IF (I .ne. K) THEN
            L = L*((XU - X(I))/(X(K) - X(I)))
            END IF
        END DO
    P = P + (Y(K)*L)
    END DO
    WRITE(2,*) XU, P
    WRITE(*,*) XU, P
    CLOSE(1)
    CALL cpu_time(FINISH)
    
    WRITE(*,*)''
    WRITE(*,*)'NUMBER OF DATA:', N
    WRITE(*,*) 'TIME PROCESSING:',(FINISH-START),'SECONDS'
    
    END PROGRAM
    
