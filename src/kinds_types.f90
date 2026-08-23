module kinds_types

  implicit none
  private

  ! Integer kinds
  integer, parameter, public :: I1B = selected_int_kind(2)
  integer, parameter, public :: I2B = selected_int_kind(4)
  integer, parameter, public :: I4B = selected_int_kind(9)
  integer, parameter, public :: I8B = selected_int_kind(15)

  ! Real kinds
  integer, parameter, public :: SP  = kind(1.0)
  integer, parameter, public :: DP  = kind(1.0d0)

  ! Complex kinds
  integer, parameter, public :: SPC = kind((1.0,1.0))
  integer, parameter, public :: DPC = kind((1.0d0,1.0d0))

  ! Logical kind
  integer, parameter, public :: LGT = kind(.true.)

  ! Working precision
  integer, parameter, public :: WP  = DP
  integer, parameter, public :: WPC = kind((1.0_wp,1.0_wp))

  ! Single precision retained for legacy NetCDF interfaces
  integer, parameter, public :: MSP = kind(1.0)

end module kinds_types
