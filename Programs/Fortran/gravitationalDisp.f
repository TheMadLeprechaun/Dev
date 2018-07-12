! Credit to tutorialspoint.com
! This program calculates vertical motion under gravity
        program gravitationalDisp

            implicit none

            ! Gravitational acceleration
            real, parameter :: g = 9.81

            ! Variable declaration
            real :: s ! Displacement
            real :: t ! Time
            real :: u ! Initial speed

            ! Assign values
            t = 5.0
            u = 50

            ! Displacement
            s = u * t - g * (t**2) / 2

            ! Output
            print *, "Time = ", t
            print *, "Displacement = ", s

        end program gravitationalDisp