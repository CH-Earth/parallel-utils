set(PARALLEL_FORTRAN_MOD_DIR
    ${CMAKE_CURRENT_BINARY_DIR}/modules)

add_library(parallel_fortran STATIC
    src/kinds_types.f90
    src/error_utils.f90
    src/mpi_context.f90
)

set_target_properties(parallel_fortran PROPERTIES
    Fortran_MODULE_DIRECTORY ${PARALLEL_FORTRAN_MOD_DIR}
)

target_include_directories(parallel_fortran
    PUBLIC
        ${PARALLEL_FORTRAN_MOD_DIR}
)

target_link_libraries(parallel_fortran
    PUBLIC
        MPI::MPI_Fortran
)
