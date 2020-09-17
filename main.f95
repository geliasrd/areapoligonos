program areapoligono
    implicit none


    real, allocatable, dimension(:,:) :: vertices !coluna,linha
    integer :: nvertices, contador
    real :: area, somatorio

    open(10, file = 'vertices.txt')
    read(10, *) nvertices

    allocate(vertices(2, nvertices))

    read(10, *) vertices

    somatorio = 0

    do contador = 1, nvertices
        if ( contador < nvertices ) then
            somatorio = somatorio + (vertices(1,contador)*vertices(2,contador+1))&
            - (vertices(2,contador)*vertices(1,contador+1))
        else
            somatorio = somatorio + (vertices(1,contador)*vertices(2,1))&
            - (vertices(2,contador)*vertices(1,1)) 
        end if
    end do

    area = (1.0/2) * abs(somatorio)

    print *, area


    
end program areapoligono