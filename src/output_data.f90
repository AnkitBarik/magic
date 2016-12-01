module output_data
   !
   !  This module contains the parameters for output control
   !

   use precision_mod

   implicit none

   private
 
   !----- Identification of run:
   character(len=64), public :: runid
 
   !----- Information for graphic output grid:
   logical, public :: l_graph_time
 
   !----- Output time control:
   real(cp), public :: t_graph_start,t_graph_stop,dt_graph
   real(cp), public :: t_rst_start,t_rst_stop,dt_rst
   real(cp), public :: t_log_start,t_log_stop,dt_log
   real(cp), public :: t_spec_start,t_spec_stop,dt_spec
   real(cp), public :: t_cmb_start,t_cmb_stop,dt_cmb
   real(cp), public :: t_r_field_start,t_r_field_stop,dt_r_field
   real(cp), public :: t_TO_start,t_TO_stop,dt_TO
   real(cp), public :: t_TOZ_start,t_TOZ_stop,dt_TOZ
   real(cp), public :: t_movie_start,t_movie_stop,dt_movie
   real(cp), public :: t_TOmovie_start,t_TOmovie_stop,dt_TOmovie
   real(cp), public :: t_Bpot_start,t_Bpot_stop,dt_Bpot
   real(cp), public :: t_Vpot_start,t_Vpot_stop,dt_Vpot
   real(cp), public :: t_Tpot_start,t_Tpot_stop,dt_Tpot
   real(cp), public :: t_pot_start,t_pot_stop,dt_pot
   integer, public :: n_graph_step,n_graphs,n_t_graph
   integer, public :: n_rst_step,n_rsts,n_t_rst,n_stores
   integer, public :: n_log_step,n_logs,n_t_log
   integer, public :: n_spec_step,n_specs,n_t_spec
   integer, public :: n_cmb_step,n_cmbs,n_t_cmb
   integer, public :: n_r_field_step,n_r_fields,n_t_r_field
   integer, public :: n_movie_step,n_movie_frames,n_t_movie
   integer, public :: n_TO_step,n_TOs,n_t_TO
   integer, public :: n_TOZ_step,n_TOZs,n_t_TOZ
   integer, public :: n_TOmovie_step,n_TOmovie_frames,n_t_TOmovie
   integer, public :: n_Bpot_step,n_Bpots,n_t_Bpot      
   integer, public :: n_Vpot_step,n_Vpots,n_t_Vpot      
   integer, public :: n_Tpot_step,n_Tpots,n_t_Tpot      
   integer, public :: n_pot_step,n_pots,n_t_pot      
   integer, public, parameter :: n_time_hits=5000
   real(cp), public ::  t_graph(n_time_hits)
   real(cp), public ::  t_rst(n_time_hits)
   real(cp), public ::  t_log(n_time_hits)
   real(cp), public ::  t_spec(n_time_hits)
   real(cp), public ::  t_cmb(n_time_hits)
   real(cp), public ::  t_r_field(n_time_hits)
   real(cp), public ::  t_movie(n_time_hits)
   real(cp), public ::  t_TO(n_time_hits)
   real(cp), public ::  t_TOZ(n_time_hits)
   real(cp), public ::  t_TOmovie(n_time_hits)
   real(cp), public ::  t_Bpot(n_time_hits)
   real(cp), public ::  t_Vpot(n_time_hits)
   real(cp), public ::  t_Tpot(n_time_hits)
   real(cp), public ::  t_pot(n_time_hits)
 
   !----- Output radii and degrees for coeff files:
   integer, public :: n_coeff_r_max
   integer, public, allocatable :: n_coeff_r(:)
   integer, public :: n_r_array(100)
   integer, public :: l_max_cmb
   integer, public :: l_max_r
   integer, public :: n_r_step
   integer, public :: m_max_modes
 
   !----- Output files:
   integer, public :: n_log_file
#ifdef WITH_MPI
   integer, public :: graph_mpi_fh
#endif
   integer, public :: n_graph_file, n_rst_file
 
   character(len=55), public :: tag
   character(len=72), public :: log_file
   character(len=72), public :: graph_file
   character(len=72), public :: lp_file
   character(len=72), public :: rst_file
   !----- Z-integrated output:
   real(cp), public :: zDens,sDens

   integer, public, parameter :: nSmaxA=97
   integer, public, parameter :: nZmaxA=2*nSmaxA
 
   !----- RMS cut radius and dealiasing:
   real(cp), public :: rCut, rDea

end module output_data
