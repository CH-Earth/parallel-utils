set(PARALLEL_UTILS_MOD_DIR
    ${CMAKE_CURRENT_BINARY_DIR}/modules)

add_library(parallel_utils STATIC
    src/kinds_types.f90
    src/error_utils.f90
    src/mpi_context.f90
)

set_target_properties(parallel_utils PROPERTIES
    Fortran_MODULE_DIRECTORY ${PARALLEL_UTILS_MOD_DIR}
)

target_include_directories(parallel_utils
    PUBLIC
        ${PARALLEL_UTILS_MOD_DIR}
)

target_link_libraries(parallel_utils
    PUBLIC
        MPI::MPI_Fortran
)
