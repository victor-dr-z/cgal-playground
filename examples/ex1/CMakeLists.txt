# Created by the script cgal_create_CMakeLists
# This is the CMake script for compiling a set of CGAL applications.

project( ex1 )


cmake_minimum_required(VERSION 2.8.11)

# CGAL and its components
find_package( CGAL QUIET COMPONENTS  )

if ( NOT CGAL_FOUND )

  message(STATUS "This project requires the CGAL library, and will not be compiled.")
  return()

endif()

# include helper file
include( ${CGAL_USE_FILE} )
#include( ${BOOST_USE_FILE}  )


# Boost and its components
find_package( Boost REQUIRED )

if ( NOT Boost_FOUND )

  message(STATUS "This project requires the Boost library, and will not be compiled.")

  return()

endif()

find_package(Eigen3 3.1.0)
if (NOT EIGEN3_FOUND)
  message(STATUS "This project requires the Eigen library, and will not be compiled")
  return ()
endif()
include( ${EIGEN3_USE_FILE} )
# include for local directory

# include for local package


# Creating entries for all C++ files with "main" routine
# ##########################################################

include( CGAL_CreateSingleSourceCGALProgram )

create_single_source_cgal_program( "ex1.cc" )


