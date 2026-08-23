# parallel-utils

`parallel-utils` is a small collection of model-agnostic Fortran utilities
for supporting parallel execution in computational models.

The repository is intended to contain lightweight functionality that can be
shared across modeling systems such as SUMMA and FUSE, while keeping
model-specific parallelization logic within the individual models.

The utilities provide basic support for MPI execution. The
utilities may be extended as needed to support both domain parallelism and
instance parallelism.

## Scope

Functionality in this repository should:

- be independent of a specific modeling system;
- provide simple, reusable parallel programming utilities; and
- remain lightweight, with model-specific logic implemented by the models
  that use these utilities.

## Building

The utilities are built with CMake and require an MPI-enabled Fortran
compiler.

They are primarily intended to be included in another CMake project, for
example as a Git submodule.

## License

`parallel-utils` is distributed under the GNU Lesser General Public License
version 3 (LGPLv3). See `COPYING.LESSER` and `COPYING` for details.
