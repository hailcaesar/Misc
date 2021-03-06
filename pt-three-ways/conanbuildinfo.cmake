include(CMakeParseArguments)

macro(conan_find_apple_frameworks FRAMEWORKS_FOUND FRAMEWORKS SUFFIX)
    if(APPLE)
        if(CMAKE_BUILD_TYPE)
            if(${CMAKE_BUILD_TYPE} MATCHES "Debug")
                set(CONAN_FRAMEWORKS${SUFFIX} ${CONAN_FRAMEWORKS${SUFFIX}_DEBUG} ${CONAN_FRAMEWORKS${SUFFIX}})
                set(CONAN_FRAMEWORK_DIRS${SUFFIX} ${CONAN_FRAMEWORK_DIRS${SUFFIX}_DEBUG} ${CONAN_FRAMEWORK_DIRS${SUFFIX}})
            elseif(${CMAKE_BUILD_TYPE} MATCHES "Release")
                set(CONAN_FRAMEWORKS${SUFFIX} ${CONAN_FRAMEWORKS${SUFFIX}_RELEASE} ${CONAN_FRAMEWORKS${SUFFIX}})
                set(CONAN_FRAMEWORK_DIRS${SUFFIX} ${CONAN_FRAMEWORK_DIRS${SUFFIX}_RELEASE} ${CONAN_FRAMEWORK_DIRS${SUFFIX}})
            elseif(${CMAKE_BUILD_TYPE} MATCHES "RelWithDebInfo")
                set(CONAN_FRAMEWORKS${SUFFIX} ${CONAN_FRAMEWORKS${SUFFIX}_RELWITHDEBINFO} ${CONAN_FRAMEWORKS${SUFFIX}})
                set(CONAN_FRAMEWORK_DIRS${SUFFIX} ${CONAN_FRAMEWORK_DIRS_RELWITHDEBINFO} ${CONAN_FRAMEWORK_DIRS})
            elseif(${CMAKE_BUILD_TYPE} MATCHES "MinSizeRel")
                set(CONAN_FRAMEWORKS${SUFFIX} ${CONAN_FRAMEWORKS${SUFFIX}_MINSIZEREL} ${CONAN_FRAMEWORKS${SUFFIX}})
                set(CONAN_FRAMEWORK_DIRS${SUFFIX} ${CONAN_FRAMEWORK_DIRS${SUFFIX}_MINSIZEREL} ${CONAN_FRAMEWORK_DIRS${SUFFIX}})
            endif()
        endif()
        foreach(_FRAMEWORK ${FRAMEWORKS})
            # https://cmake.org/pipermail/cmake-developers/2017-August/030199.html
            find_library(CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND NAME ${_FRAMEWORK} PATHS ${CONAN_FRAMEWORK_DIRS${SUFFIX}})
            if(CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND)
                list(APPEND ${FRAMEWORKS_FOUND} ${CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND})
            else()
                message(FATAL_ERROR "Framework library ${_FRAMEWORK} not found in paths: ${CONAN_FRAMEWORK_DIRS${SUFFIX}}")
            endif()
        endforeach()
    endif()
endmacro()


#################
###  CATCH2
#################
set(CONAN_CATCH2_ROOT "/Users/sebastianx/.conan/data/Catch2/2.9.1/catchorg/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_CATCH2 "/Users/sebastianx/.conan/data/Catch2/2.9.1/catchorg/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_CATCH2 "/Users/sebastianx/.conan/data/Catch2/2.9.1/catchorg/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib")
set(CONAN_BIN_DIRS_CATCH2 )
set(CONAN_RES_DIRS_CATCH2 )
set(CONAN_SRC_DIRS_CATCH2 )
set(CONAN_BUILD_DIRS_CATCH2 "/Users/sebastianx/.conan/data/Catch2/2.9.1/catchorg/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_CATCH2 )
set(CONAN_LIBS_CATCH2 )
set(CONAN_PKG_LIBS_CATCH2 )
set(CONAN_SYSTEM_LIBS_CATCH2 )
set(CONAN_FRAMEWORKS_CATCH2 )
set(CONAN_FRAMEWORKS_FOUND_CATCH2 "")  # Will be filled later
set(CONAN_DEFINES_CATCH2 )
set(CONAN_BUILD_MODULES_PATHS_CATCH2 )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_CATCH2 )

set(CONAN_C_FLAGS_CATCH2 "")
set(CONAN_CXX_FLAGS_CATCH2 "")
set(CONAN_SHARED_LINKER_FLAGS_CATCH2 "")
set(CONAN_EXE_LINKER_FLAGS_CATCH2 "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_CATCH2_LIST "")
set(CONAN_CXX_FLAGS_CATCH2_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_CATCH2_LIST "")
set(CONAN_EXE_LINKER_FLAGS_CATCH2_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_CATCH2 "${CONAN_FRAMEWORKS_CATCH2}" "_CATCH2")
# Append to aggregated values variable
set(CONAN_LIBS_CATCH2 ${CONAN_PKG_LIBS_CATCH2} ${CONAN_SYSTEM_LIBS_CATCH2} ${CONAN_FRAMEWORKS_FOUND_CATCH2})


#################
###  CLARA
#################
set(CONAN_CLARA_ROOT "/Users/sebastianx/.conan/data/clara/1.1.5/bincrafters/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_CLARA "/Users/sebastianx/.conan/data/clara/1.1.5/bincrafters/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_CLARA )
set(CONAN_BIN_DIRS_CLARA )
set(CONAN_RES_DIRS_CLARA )
set(CONAN_SRC_DIRS_CLARA )
set(CONAN_BUILD_DIRS_CLARA "/Users/sebastianx/.conan/data/clara/1.1.5/bincrafters/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_CLARA )
set(CONAN_LIBS_CLARA )
set(CONAN_PKG_LIBS_CLARA )
set(CONAN_SYSTEM_LIBS_CLARA )
set(CONAN_FRAMEWORKS_CLARA )
set(CONAN_FRAMEWORKS_FOUND_CLARA "")  # Will be filled later
set(CONAN_DEFINES_CLARA )
set(CONAN_BUILD_MODULES_PATHS_CLARA )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_CLARA )

set(CONAN_C_FLAGS_CLARA "")
set(CONAN_CXX_FLAGS_CLARA "")
set(CONAN_SHARED_LINKER_FLAGS_CLARA "")
set(CONAN_EXE_LINKER_FLAGS_CLARA "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_CLARA_LIST "")
set(CONAN_CXX_FLAGS_CLARA_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_CLARA_LIST "")
set(CONAN_EXE_LINKER_FLAGS_CLARA_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_CLARA "${CONAN_FRAMEWORKS_CLARA}" "_CLARA")
# Append to aggregated values variable
set(CONAN_LIBS_CLARA ${CONAN_PKG_LIBS_CLARA} ${CONAN_SYSTEM_LIBS_CLARA} ${CONAN_FRAMEWORKS_FOUND_CLARA})


#################
###  CTRE
#################
set(CONAN_CTRE_ROOT "/Users/sebastianx/.conan/data/CTRE/v2.6.4/ctre/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_CTRE "/Users/sebastianx/.conan/data/CTRE/v2.6.4/ctre/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_CTRE )
set(CONAN_BIN_DIRS_CTRE )
set(CONAN_RES_DIRS_CTRE )
set(CONAN_SRC_DIRS_CTRE )
set(CONAN_BUILD_DIRS_CTRE "/Users/sebastianx/.conan/data/CTRE/v2.6.4/ctre/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_CTRE )
set(CONAN_LIBS_CTRE )
set(CONAN_PKG_LIBS_CTRE )
set(CONAN_SYSTEM_LIBS_CTRE )
set(CONAN_FRAMEWORKS_CTRE )
set(CONAN_FRAMEWORKS_FOUND_CTRE "")  # Will be filled later
set(CONAN_DEFINES_CTRE )
set(CONAN_BUILD_MODULES_PATHS_CTRE )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_CTRE )

set(CONAN_C_FLAGS_CTRE "")
set(CONAN_CXX_FLAGS_CTRE "")
set(CONAN_SHARED_LINKER_FLAGS_CTRE "")
set(CONAN_EXE_LINKER_FLAGS_CTRE "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_CTRE_LIST "")
set(CONAN_CXX_FLAGS_CTRE_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_CTRE_LIST "")
set(CONAN_EXE_LINKER_FLAGS_CTRE_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_CTRE "${CONAN_FRAMEWORKS_CTRE}" "_CTRE")
# Append to aggregated values variable
set(CONAN_LIBS_CTRE ${CONAN_PKG_LIBS_CTRE} ${CONAN_SYSTEM_LIBS_CTRE} ${CONAN_FRAMEWORKS_FOUND_CTRE})


#################
###  LIBPNG
#################
set(CONAN_LIBPNG_ROOT "/Users/sebastianx/.conan/data/libpng/1.6.37/bincrafters/stable/package/eb50d18a5a5d59bd0c332464a4c348ab65e353bf")
set(CONAN_INCLUDE_DIRS_LIBPNG "/Users/sebastianx/.conan/data/libpng/1.6.37/bincrafters/stable/package/eb50d18a5a5d59bd0c332464a4c348ab65e353bf/include")
set(CONAN_LIB_DIRS_LIBPNG "/Users/sebastianx/.conan/data/libpng/1.6.37/bincrafters/stable/package/eb50d18a5a5d59bd0c332464a4c348ab65e353bf/lib")
set(CONAN_BIN_DIRS_LIBPNG "/Users/sebastianx/.conan/data/libpng/1.6.37/bincrafters/stable/package/eb50d18a5a5d59bd0c332464a4c348ab65e353bf/bin")
set(CONAN_RES_DIRS_LIBPNG )
set(CONAN_SRC_DIRS_LIBPNG )
set(CONAN_BUILD_DIRS_LIBPNG "/Users/sebastianx/.conan/data/libpng/1.6.37/bincrafters/stable/package/eb50d18a5a5d59bd0c332464a4c348ab65e353bf/")
set(CONAN_FRAMEWORK_DIRS_LIBPNG )
set(CONAN_LIBS_LIBPNG png16)
set(CONAN_PKG_LIBS_LIBPNG png16)
set(CONAN_SYSTEM_LIBS_LIBPNG )
set(CONAN_FRAMEWORKS_LIBPNG )
set(CONAN_FRAMEWORKS_FOUND_LIBPNG "")  # Will be filled later
set(CONAN_DEFINES_LIBPNG )
set(CONAN_BUILD_MODULES_PATHS_LIBPNG )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBPNG )

set(CONAN_C_FLAGS_LIBPNG "")
set(CONAN_CXX_FLAGS_LIBPNG "")
set(CONAN_SHARED_LINKER_FLAGS_LIBPNG "")
set(CONAN_EXE_LINKER_FLAGS_LIBPNG "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBPNG_LIST "")
set(CONAN_CXX_FLAGS_LIBPNG_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBPNG_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBPNG_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBPNG "${CONAN_FRAMEWORKS_LIBPNG}" "_LIBPNG")
# Append to aggregated values variable
set(CONAN_LIBS_LIBPNG ${CONAN_PKG_LIBS_LIBPNG} ${CONAN_SYSTEM_LIBS_LIBPNG} ${CONAN_FRAMEWORKS_FOUND_LIBPNG})


#################
###  DATE
#################
set(CONAN_DATE_ROOT "/Users/sebastianx/.conan/data/date/2.4.1/bincrafters/stable/package/2dc1828fba0450ea29af0550264baf795e452ce6")
set(CONAN_INCLUDE_DIRS_DATE "/Users/sebastianx/.conan/data/date/2.4.1/bincrafters/stable/package/2dc1828fba0450ea29af0550264baf795e452ce6/include")
set(CONAN_LIB_DIRS_DATE "/Users/sebastianx/.conan/data/date/2.4.1/bincrafters/stable/package/2dc1828fba0450ea29af0550264baf795e452ce6/lib")
set(CONAN_BIN_DIRS_DATE )
set(CONAN_RES_DIRS_DATE )
set(CONAN_SRC_DIRS_DATE )
set(CONAN_BUILD_DIRS_DATE "/Users/sebastianx/.conan/data/date/2.4.1/bincrafters/stable/package/2dc1828fba0450ea29af0550264baf795e452ce6/")
set(CONAN_FRAMEWORK_DIRS_DATE )
set(CONAN_LIBS_DATE tz)
set(CONAN_PKG_LIBS_DATE tz)
set(CONAN_SYSTEM_LIBS_DATE )
set(CONAN_FRAMEWORKS_DATE )
set(CONAN_FRAMEWORKS_FOUND_DATE "")  # Will be filled later
set(CONAN_DEFINES_DATE "-DUSE_AUTOLOAD=0"
			"-DHAS_REMOTE_API=0")
set(CONAN_BUILD_MODULES_PATHS_DATE )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_DATE "USE_AUTOLOAD=0"
			"HAS_REMOTE_API=0")

set(CONAN_C_FLAGS_DATE "")
set(CONAN_CXX_FLAGS_DATE "")
set(CONAN_SHARED_LINKER_FLAGS_DATE "")
set(CONAN_EXE_LINKER_FLAGS_DATE "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_DATE_LIST "")
set(CONAN_CXX_FLAGS_DATE_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_DATE_LIST "")
set(CONAN_EXE_LINKER_FLAGS_DATE_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_DATE "${CONAN_FRAMEWORKS_DATE}" "_DATE")
# Append to aggregated values variable
set(CONAN_LIBS_DATE ${CONAN_PKG_LIBS_DATE} ${CONAN_SYSTEM_LIBS_DATE} ${CONAN_FRAMEWORKS_FOUND_DATE})


#################
###  RANGE-V3
#################
set(CONAN_RANGE-V3_ROOT "/Users/sebastianx/.conan/data/range-v3/0.9.1/ericniebler/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_RANGE-V3 "/Users/sebastianx/.conan/data/range-v3/0.9.1/ericniebler/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_RANGE-V3 "/Users/sebastianx/.conan/data/range-v3/0.9.1/ericniebler/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib")
set(CONAN_BIN_DIRS_RANGE-V3 )
set(CONAN_RES_DIRS_RANGE-V3 )
set(CONAN_SRC_DIRS_RANGE-V3 )
set(CONAN_BUILD_DIRS_RANGE-V3 "/Users/sebastianx/.conan/data/range-v3/0.9.1/ericniebler/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_RANGE-V3 )
set(CONAN_LIBS_RANGE-V3 )
set(CONAN_PKG_LIBS_RANGE-V3 )
set(CONAN_SYSTEM_LIBS_RANGE-V3 )
set(CONAN_FRAMEWORKS_RANGE-V3 )
set(CONAN_FRAMEWORKS_FOUND_RANGE-V3 "")  # Will be filled later
set(CONAN_DEFINES_RANGE-V3 )
set(CONAN_BUILD_MODULES_PATHS_RANGE-V3 )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_RANGE-V3 )

set(CONAN_C_FLAGS_RANGE-V3 "")
set(CONAN_CXX_FLAGS_RANGE-V3 "")
set(CONAN_SHARED_LINKER_FLAGS_RANGE-V3 "")
set(CONAN_EXE_LINKER_FLAGS_RANGE-V3 "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_RANGE-V3_LIST "")
set(CONAN_CXX_FLAGS_RANGE-V3_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_RANGE-V3_LIST "")
set(CONAN_EXE_LINKER_FLAGS_RANGE-V3_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_RANGE-V3 "${CONAN_FRAMEWORKS_RANGE-V3}" "_RANGE-V3")
# Append to aggregated values variable
set(CONAN_LIBS_RANGE-V3 ${CONAN_PKG_LIBS_RANGE-V3} ${CONAN_SYSTEM_LIBS_RANGE-V3} ${CONAN_FRAMEWORKS_FOUND_RANGE-V3})


#################
###  GOOGLE-BENCHMARK
#################
set(CONAN_GOOGLE-BENCHMARK_ROOT "/Users/sebastianx/.conan/data/google-benchmark/1.4.1/mpusz/stable/package/8f9b8e08c4cb1614fe3d1afab681c35743000170")
set(CONAN_INCLUDE_DIRS_GOOGLE-BENCHMARK "/Users/sebastianx/.conan/data/google-benchmark/1.4.1/mpusz/stable/package/8f9b8e08c4cb1614fe3d1afab681c35743000170/include")
set(CONAN_LIB_DIRS_GOOGLE-BENCHMARK "/Users/sebastianx/.conan/data/google-benchmark/1.4.1/mpusz/stable/package/8f9b8e08c4cb1614fe3d1afab681c35743000170/lib")
set(CONAN_BIN_DIRS_GOOGLE-BENCHMARK )
set(CONAN_RES_DIRS_GOOGLE-BENCHMARK )
set(CONAN_SRC_DIRS_GOOGLE-BENCHMARK )
set(CONAN_BUILD_DIRS_GOOGLE-BENCHMARK "/Users/sebastianx/.conan/data/google-benchmark/1.4.1/mpusz/stable/package/8f9b8e08c4cb1614fe3d1afab681c35743000170/")
set(CONAN_FRAMEWORK_DIRS_GOOGLE-BENCHMARK )
set(CONAN_LIBS_GOOGLE-BENCHMARK benchmark)
set(CONAN_PKG_LIBS_GOOGLE-BENCHMARK benchmark)
set(CONAN_SYSTEM_LIBS_GOOGLE-BENCHMARK )
set(CONAN_FRAMEWORKS_GOOGLE-BENCHMARK )
set(CONAN_FRAMEWORKS_FOUND_GOOGLE-BENCHMARK "")  # Will be filled later
set(CONAN_DEFINES_GOOGLE-BENCHMARK )
set(CONAN_BUILD_MODULES_PATHS_GOOGLE-BENCHMARK )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_GOOGLE-BENCHMARK )

set(CONAN_C_FLAGS_GOOGLE-BENCHMARK "")
set(CONAN_CXX_FLAGS_GOOGLE-BENCHMARK "")
set(CONAN_SHARED_LINKER_FLAGS_GOOGLE-BENCHMARK "")
set(CONAN_EXE_LINKER_FLAGS_GOOGLE-BENCHMARK "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_GOOGLE-BENCHMARK_LIST "")
set(CONAN_CXX_FLAGS_GOOGLE-BENCHMARK_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_GOOGLE-BENCHMARK_LIST "")
set(CONAN_EXE_LINKER_FLAGS_GOOGLE-BENCHMARK_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_GOOGLE-BENCHMARK "${CONAN_FRAMEWORKS_GOOGLE-BENCHMARK}" "_GOOGLE-BENCHMARK")
# Append to aggregated values variable
set(CONAN_LIBS_GOOGLE-BENCHMARK ${CONAN_PKG_LIBS_GOOGLE-BENCHMARK} ${CONAN_SYSTEM_LIBS_GOOGLE-BENCHMARK} ${CONAN_FRAMEWORKS_FOUND_GOOGLE-BENCHMARK})


#################
###  ZLIB
#################
set(CONAN_ZLIB_ROOT "/Users/sebastianx/.conan/data/zlib/1.2.11/conan/stable/package/f74366f76f700cc6e991285892ad7a23c30e6d47")
set(CONAN_INCLUDE_DIRS_ZLIB "/Users/sebastianx/.conan/data/zlib/1.2.11/conan/stable/package/f74366f76f700cc6e991285892ad7a23c30e6d47/include")
set(CONAN_LIB_DIRS_ZLIB "/Users/sebastianx/.conan/data/zlib/1.2.11/conan/stable/package/f74366f76f700cc6e991285892ad7a23c30e6d47/lib")
set(CONAN_BIN_DIRS_ZLIB )
set(CONAN_RES_DIRS_ZLIB )
set(CONAN_SRC_DIRS_ZLIB )
set(CONAN_BUILD_DIRS_ZLIB "/Users/sebastianx/.conan/data/zlib/1.2.11/conan/stable/package/f74366f76f700cc6e991285892ad7a23c30e6d47/")
set(CONAN_FRAMEWORK_DIRS_ZLIB )
set(CONAN_LIBS_ZLIB z)
set(CONAN_PKG_LIBS_ZLIB z)
set(CONAN_SYSTEM_LIBS_ZLIB )
set(CONAN_FRAMEWORKS_ZLIB )
set(CONAN_FRAMEWORKS_FOUND_ZLIB "")  # Will be filled later
set(CONAN_DEFINES_ZLIB )
set(CONAN_BUILD_MODULES_PATHS_ZLIB )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_ZLIB )

set(CONAN_C_FLAGS_ZLIB "")
set(CONAN_CXX_FLAGS_ZLIB "")
set(CONAN_SHARED_LINKER_FLAGS_ZLIB "")
set(CONAN_EXE_LINKER_FLAGS_ZLIB "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_ZLIB_LIST "")
set(CONAN_CXX_FLAGS_ZLIB_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_ZLIB_LIST "")
set(CONAN_EXE_LINKER_FLAGS_ZLIB_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_ZLIB "${CONAN_FRAMEWORKS_ZLIB}" "_ZLIB")
# Append to aggregated values variable
set(CONAN_LIBS_ZLIB ${CONAN_PKG_LIBS_ZLIB} ${CONAN_SYSTEM_LIBS_ZLIB} ${CONAN_FRAMEWORKS_FOUND_ZLIB})


### Definition of global aggregated variables ###

set(CONAN_PACKAGE_NAME None)
set(CONAN_PACKAGE_VERSION None)

set(CONAN_SETTINGS_ARCH "x86_64")
set(CONAN_SETTINGS_ARCH_BUILD "x86_64")
set(CONAN_SETTINGS_BUILD_TYPE "Release")
set(CONAN_SETTINGS_COMPILER "apple-clang")
set(CONAN_SETTINGS_COMPILER_LIBCXX "libc++")
set(CONAN_SETTINGS_COMPILER_VERSION "11.0")
set(CONAN_SETTINGS_OS "Macos")
set(CONAN_SETTINGS_OS_BUILD "Macos")

set(CONAN_DEPENDENCIES Catch2 clara CTRE libpng date range-v3 google-benchmark zlib)
# Storing original command line args (CMake helper) flags
set(CONAN_CMD_CXX_FLAGS ${CONAN_CXX_FLAGS})

set(CONAN_CMD_SHARED_LINKER_FLAGS ${CONAN_SHARED_LINKER_FLAGS})
set(CONAN_CMD_C_FLAGS ${CONAN_C_FLAGS})
# Defining accumulated conan variables for all deps

set(CONAN_INCLUDE_DIRS "/Users/sebastianx/.conan/data/Catch2/2.9.1/catchorg/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/Users/sebastianx/.conan/data/clara/1.1.5/bincrafters/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/Users/sebastianx/.conan/data/CTRE/v2.6.4/ctre/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/Users/sebastianx/.conan/data/libpng/1.6.37/bincrafters/stable/package/eb50d18a5a5d59bd0c332464a4c348ab65e353bf/include"
			"/Users/sebastianx/.conan/data/date/2.4.1/bincrafters/stable/package/2dc1828fba0450ea29af0550264baf795e452ce6/include"
			"/Users/sebastianx/.conan/data/range-v3/0.9.1/ericniebler/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/Users/sebastianx/.conan/data/google-benchmark/1.4.1/mpusz/stable/package/8f9b8e08c4cb1614fe3d1afab681c35743000170/include"
			"/Users/sebastianx/.conan/data/zlib/1.2.11/conan/stable/package/f74366f76f700cc6e991285892ad7a23c30e6d47/include" ${CONAN_INCLUDE_DIRS})
set(CONAN_LIB_DIRS "/Users/sebastianx/.conan/data/Catch2/2.9.1/catchorg/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib"
			"/Users/sebastianx/.conan/data/libpng/1.6.37/bincrafters/stable/package/eb50d18a5a5d59bd0c332464a4c348ab65e353bf/lib"
			"/Users/sebastianx/.conan/data/date/2.4.1/bincrafters/stable/package/2dc1828fba0450ea29af0550264baf795e452ce6/lib"
			"/Users/sebastianx/.conan/data/range-v3/0.9.1/ericniebler/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib"
			"/Users/sebastianx/.conan/data/google-benchmark/1.4.1/mpusz/stable/package/8f9b8e08c4cb1614fe3d1afab681c35743000170/lib"
			"/Users/sebastianx/.conan/data/zlib/1.2.11/conan/stable/package/f74366f76f700cc6e991285892ad7a23c30e6d47/lib" ${CONAN_LIB_DIRS})
set(CONAN_BIN_DIRS "/Users/sebastianx/.conan/data/libpng/1.6.37/bincrafters/stable/package/eb50d18a5a5d59bd0c332464a4c348ab65e353bf/bin" ${CONAN_BIN_DIRS})
set(CONAN_RES_DIRS  ${CONAN_RES_DIRS})
set(CONAN_FRAMEWORK_DIRS  ${CONAN_FRAMEWORK_DIRS})
set(CONAN_LIBS png16 tz benchmark z ${CONAN_LIBS})
set(CONAN_PKG_LIBS png16 tz benchmark z ${CONAN_PKG_LIBS})
set(CONAN_SYSTEM_LIBS  ${CONAN_SYSTEM_LIBS})
set(CONAN_FRAMEWORKS  ${CONAN_FRAMEWORKS})
set(CONAN_FRAMEWORKS_FOUND "")  # Will be filled later
set(CONAN_DEFINES "-DUSE_AUTOLOAD=0"
			"-DHAS_REMOTE_API=0" ${CONAN_DEFINES})
set(CONAN_BUILD_MODULES_PATHS  ${CONAN_BUILD_MODULES_PATHS})
set(CONAN_CMAKE_MODULE_PATH "/Users/sebastianx/.conan/data/Catch2/2.9.1/catchorg/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/Users/sebastianx/.conan/data/clara/1.1.5/bincrafters/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/Users/sebastianx/.conan/data/CTRE/v2.6.4/ctre/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/Users/sebastianx/.conan/data/libpng/1.6.37/bincrafters/stable/package/eb50d18a5a5d59bd0c332464a4c348ab65e353bf/"
			"/Users/sebastianx/.conan/data/date/2.4.1/bincrafters/stable/package/2dc1828fba0450ea29af0550264baf795e452ce6/"
			"/Users/sebastianx/.conan/data/range-v3/0.9.1/ericniebler/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/Users/sebastianx/.conan/data/google-benchmark/1.4.1/mpusz/stable/package/8f9b8e08c4cb1614fe3d1afab681c35743000170/"
			"/Users/sebastianx/.conan/data/zlib/1.2.11/conan/stable/package/f74366f76f700cc6e991285892ad7a23c30e6d47/" ${CONAN_CMAKE_MODULE_PATH})

set(CONAN_CXX_FLAGS " ${CONAN_CXX_FLAGS}")
set(CONAN_SHARED_LINKER_FLAGS " ${CONAN_SHARED_LINKER_FLAGS}")
set(CONAN_EXE_LINKER_FLAGS " ${CONAN_EXE_LINKER_FLAGS}")
set(CONAN_C_FLAGS " ${CONAN_C_FLAGS}")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND "${CONAN_FRAMEWORKS}" "")
# Append to aggregated values variable: Use CONAN_LIBS instead of CONAN_PKG_LIBS to include user appended vars
set(CONAN_LIBS ${CONAN_LIBS} ${CONAN_SYSTEM_LIBS} ${CONAN_FRAMEWORKS_FOUND})


###  Definition of macros and functions ###

macro(conan_define_targets)
    if(${CMAKE_VERSION} VERSION_LESS "3.1.2")
        message(FATAL_ERROR "TARGETS not supported by your CMake version!")
    endif()  # CMAKE > 3.x
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CONAN_CMD_CXX_FLAGS}")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${CONAN_CMD_C_FLAGS}")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} ${CONAN_CMD_SHARED_LINKER_FLAGS}")


    set(_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES "${CONAN_SYSTEM_LIBS_CATCH2} ${CONAN_FRAMEWORKS_FOUND_CATCH2} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CATCH2_DEPENDENCIES "${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CATCH2}" "${CONAN_LIB_DIRS_CATCH2}"
                                  CONAN_PACKAGE_TARGETS_CATCH2 "${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES}"
                                  "" Catch2)
    set(_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_CATCH2_DEBUG} ${CONAN_FRAMEWORKS_FOUND_CATCH2_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CATCH2_DEBUG}" "${CONAN_LIB_DIRS_CATCH2_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_CATCH2_DEBUG "${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_DEBUG}"
                                  "debug" Catch2)
    set(_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_CATCH2_RELEASE} ${CONAN_FRAMEWORKS_FOUND_CATCH2_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CATCH2_RELEASE}" "${CONAN_LIB_DIRS_CATCH2_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_CATCH2_RELEASE "${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_RELEASE}"
                                  "release" Catch2)
    set(_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_CATCH2_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_CATCH2_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CATCH2_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_CATCH2_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_CATCH2_RELWITHDEBINFO "${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" Catch2)
    set(_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_CATCH2_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_CATCH2_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CATCH2_MINSIZEREL}" "${CONAN_LIB_DIRS_CATCH2_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_CATCH2_MINSIZEREL "${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" Catch2)

    add_library(CONAN_PKG::Catch2 INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::Catch2 PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_CATCH2} ${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CATCH2_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CATCH2_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_CATCH2_RELEASE} ${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CATCH2_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CATCH2_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_CATCH2_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CATCH2_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CATCH2_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_CATCH2_MINSIZEREL} ${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CATCH2_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CATCH2_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_CATCH2_DEBUG} ${_CONAN_PKG_LIBS_CATCH2_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CATCH2_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CATCH2_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::Catch2 PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_CATCH2}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_CATCH2_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_CATCH2_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_CATCH2_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_CATCH2_DEBUG}>)
    set_property(TARGET CONAN_PKG::Catch2 PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_CATCH2}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_CATCH2_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_CATCH2_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_CATCH2_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_CATCH2_DEBUG}>)
    set_property(TARGET CONAN_PKG::Catch2 PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_CATCH2_LIST} ${CONAN_CXX_FLAGS_CATCH2_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_CATCH2_RELEASE_LIST} ${CONAN_CXX_FLAGS_CATCH2_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_CATCH2_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_CATCH2_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_CATCH2_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_CATCH2_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_CATCH2_DEBUG_LIST}  ${CONAN_CXX_FLAGS_CATCH2_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_CLARA_DEPENDENCIES "${CONAN_SYSTEM_LIBS_CLARA} ${CONAN_FRAMEWORKS_FOUND_CLARA} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CLARA_DEPENDENCIES "${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CLARA}" "${CONAN_LIB_DIRS_CLARA}"
                                  CONAN_PACKAGE_TARGETS_CLARA "${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES}"
                                  "" clara)
    set(_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_CLARA_DEBUG} ${CONAN_FRAMEWORKS_FOUND_CLARA_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CLARA_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CLARA_DEBUG}" "${CONAN_LIB_DIRS_CLARA_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_CLARA_DEBUG "${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_DEBUG}"
                                  "debug" clara)
    set(_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_CLARA_RELEASE} ${CONAN_FRAMEWORKS_FOUND_CLARA_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CLARA_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CLARA_RELEASE}" "${CONAN_LIB_DIRS_CLARA_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_CLARA_RELEASE "${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_RELEASE}"
                                  "release" clara)
    set(_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_CLARA_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_CLARA_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CLARA_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CLARA_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_CLARA_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_CLARA_RELWITHDEBINFO "${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" clara)
    set(_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_CLARA_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_CLARA_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CLARA_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CLARA_MINSIZEREL}" "${CONAN_LIB_DIRS_CLARA_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_CLARA_MINSIZEREL "${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" clara)

    add_library(CONAN_PKG::clara INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::clara PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_CLARA} ${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CLARA_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CLARA_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_CLARA_RELEASE} ${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CLARA_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CLARA_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_CLARA_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CLARA_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CLARA_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_CLARA_MINSIZEREL} ${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CLARA_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CLARA_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_CLARA_DEBUG} ${_CONAN_PKG_LIBS_CLARA_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CLARA_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CLARA_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::clara PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_CLARA}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_CLARA_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_CLARA_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_CLARA_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_CLARA_DEBUG}>)
    set_property(TARGET CONAN_PKG::clara PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_CLARA}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_CLARA_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_CLARA_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_CLARA_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_CLARA_DEBUG}>)
    set_property(TARGET CONAN_PKG::clara PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_CLARA_LIST} ${CONAN_CXX_FLAGS_CLARA_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_CLARA_RELEASE_LIST} ${CONAN_CXX_FLAGS_CLARA_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_CLARA_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_CLARA_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_CLARA_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_CLARA_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_CLARA_DEBUG_LIST}  ${CONAN_CXX_FLAGS_CLARA_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_CTRE_DEPENDENCIES "${CONAN_SYSTEM_LIBS_CTRE} ${CONAN_FRAMEWORKS_FOUND_CTRE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CTRE_DEPENDENCIES "${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CTRE}" "${CONAN_LIB_DIRS_CTRE}"
                                  CONAN_PACKAGE_TARGETS_CTRE "${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES}"
                                  "" CTRE)
    set(_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_CTRE_DEBUG} ${CONAN_FRAMEWORKS_FOUND_CTRE_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CTRE_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CTRE_DEBUG}" "${CONAN_LIB_DIRS_CTRE_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_CTRE_DEBUG "${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_DEBUG}"
                                  "debug" CTRE)
    set(_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_CTRE_RELEASE} ${CONAN_FRAMEWORKS_FOUND_CTRE_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CTRE_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CTRE_RELEASE}" "${CONAN_LIB_DIRS_CTRE_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_CTRE_RELEASE "${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_RELEASE}"
                                  "release" CTRE)
    set(_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_CTRE_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_CTRE_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CTRE_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CTRE_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_CTRE_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_CTRE_RELWITHDEBINFO "${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" CTRE)
    set(_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_CTRE_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_CTRE_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CTRE_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CTRE_MINSIZEREL}" "${CONAN_LIB_DIRS_CTRE_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_CTRE_MINSIZEREL "${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" CTRE)

    add_library(CONAN_PKG::CTRE INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::CTRE PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_CTRE} ${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CTRE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CTRE_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_CTRE_RELEASE} ${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CTRE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CTRE_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_CTRE_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CTRE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CTRE_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_CTRE_MINSIZEREL} ${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CTRE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CTRE_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_CTRE_DEBUG} ${_CONAN_PKG_LIBS_CTRE_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CTRE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CTRE_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::CTRE PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_CTRE}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_CTRE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_CTRE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_CTRE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_CTRE_DEBUG}>)
    set_property(TARGET CONAN_PKG::CTRE PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_CTRE}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_CTRE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_CTRE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_CTRE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_CTRE_DEBUG}>)
    set_property(TARGET CONAN_PKG::CTRE PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_CTRE_LIST} ${CONAN_CXX_FLAGS_CTRE_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_CTRE_RELEASE_LIST} ${CONAN_CXX_FLAGS_CTRE_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_CTRE_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_CTRE_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_CTRE_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_CTRE_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_CTRE_DEBUG_LIST}  ${CONAN_CXX_FLAGS_CTRE_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBPNG} ${CONAN_FRAMEWORKS_FOUND_LIBPNG} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG}" "${CONAN_LIB_DIRS_LIBPNG}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES}"
                                  "" libpng)
    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBPNG_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBPNG_DEBUG} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG_DEBUG}" "${CONAN_LIB_DIRS_LIBPNG_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_DEBUG "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG}"
                                  "debug" libpng)
    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBPNG_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBPNG_RELEASE} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG_RELEASE}" "${CONAN_LIB_DIRS_LIBPNG_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_RELEASE "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE}"
                                  "release" libpng)
    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBPNG_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBPNG_RELWITHDEBINFO} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBPNG_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libpng)
    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBPNG_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBPNG_MINSIZEREL} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBPNG_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_MINSIZEREL "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libpng)

    add_library(CONAN_PKG::libpng INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBPNG} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBPNG_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBPNG_RELEASE} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBPNG_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBPNG_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBPNG_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBPNG_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBPNG_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBPNG_DEBUG} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBPNG_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBPNG}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBPNG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBPNG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBPNG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBPNG_DEBUG}>)
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBPNG}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_DEBUG}>)
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBPNG_LIST} ${CONAN_CXX_FLAGS_LIBPNG_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBPNG_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBPNG_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBPNG_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBPNG_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBPNG_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBPNG_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBPNG_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBPNG_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_DATE_DEPENDENCIES "${CONAN_SYSTEM_LIBS_DATE} ${CONAN_FRAMEWORKS_FOUND_DATE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DATE_DEPENDENCIES "${_CONAN_PKG_LIBS_DATE_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DATE}" "${CONAN_LIB_DIRS_DATE}"
                                  CONAN_PACKAGE_TARGETS_DATE "${_CONAN_PKG_LIBS_DATE_DEPENDENCIES}"
                                  "" date)
    set(_CONAN_PKG_LIBS_DATE_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_DATE_DEBUG} ${CONAN_FRAMEWORKS_FOUND_DATE_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DATE_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_DATE_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DATE_DEBUG}" "${CONAN_LIB_DIRS_DATE_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_DATE_DEBUG "${_CONAN_PKG_LIBS_DATE_DEPENDENCIES_DEBUG}"
                                  "debug" date)
    set(_CONAN_PKG_LIBS_DATE_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_DATE_RELEASE} ${CONAN_FRAMEWORKS_FOUND_DATE_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DATE_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_DATE_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DATE_RELEASE}" "${CONAN_LIB_DIRS_DATE_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_DATE_RELEASE "${_CONAN_PKG_LIBS_DATE_DEPENDENCIES_RELEASE}"
                                  "release" date)
    set(_CONAN_PKG_LIBS_DATE_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_DATE_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_DATE_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DATE_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_DATE_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DATE_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_DATE_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_DATE_RELWITHDEBINFO "${_CONAN_PKG_LIBS_DATE_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" date)
    set(_CONAN_PKG_LIBS_DATE_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_DATE_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_DATE_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DATE_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_DATE_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DATE_MINSIZEREL}" "${CONAN_LIB_DIRS_DATE_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_DATE_MINSIZEREL "${_CONAN_PKG_LIBS_DATE_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" date)

    add_library(CONAN_PKG::date INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::date PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_DATE} ${_CONAN_PKG_LIBS_DATE_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DATE_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_DATE_RELEASE} ${_CONAN_PKG_LIBS_DATE_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DATE_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_DATE_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_DATE_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DATE_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_DATE_MINSIZEREL} ${_CONAN_PKG_LIBS_DATE_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DATE_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_DATE_DEBUG} ${_CONAN_PKG_LIBS_DATE_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DATE_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::date PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_DATE}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_DATE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_DATE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_DATE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DATE_DEBUG}>)
    set_property(TARGET CONAN_PKG::date PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_DATE}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_DATE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_DATE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_DATE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_DATE_DEBUG}>)
    set_property(TARGET CONAN_PKG::date PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_DATE_LIST} ${CONAN_CXX_FLAGS_DATE_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_DATE_RELEASE_LIST} ${CONAN_CXX_FLAGS_DATE_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_DATE_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_DATE_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_DATE_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_DATE_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_DATE_DEBUG_LIST}  ${CONAN_CXX_FLAGS_DATE_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES "${CONAN_SYSTEM_LIBS_RANGE-V3} ${CONAN_FRAMEWORKS_FOUND_RANGE-V3} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES "${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_RANGE-V3}" "${CONAN_LIB_DIRS_RANGE-V3}"
                                  CONAN_PACKAGE_TARGETS_RANGE-V3 "${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES}"
                                  "" range-v3)
    set(_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_RANGE-V3_DEBUG} ${CONAN_FRAMEWORKS_FOUND_RANGE-V3_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_RANGE-V3_DEBUG}" "${CONAN_LIB_DIRS_RANGE-V3_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_RANGE-V3_DEBUG "${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_DEBUG}"
                                  "debug" range-v3)
    set(_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_RANGE-V3_RELEASE} ${CONAN_FRAMEWORKS_FOUND_RANGE-V3_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_RANGE-V3_RELEASE}" "${CONAN_LIB_DIRS_RANGE-V3_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_RANGE-V3_RELEASE "${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_RELEASE}"
                                  "release" range-v3)
    set(_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_RANGE-V3_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_RANGE-V3_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_RANGE-V3_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_RANGE-V3_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_RANGE-V3_RELWITHDEBINFO "${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" range-v3)
    set(_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_RANGE-V3_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_RANGE-V3_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_RANGE-V3_MINSIZEREL}" "${CONAN_LIB_DIRS_RANGE-V3_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_RANGE-V3_MINSIZEREL "${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" range-v3)

    add_library(CONAN_PKG::range-v3 INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::range-v3 PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_RANGE-V3} ${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RANGE-V3_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_RANGE-V3_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_RANGE-V3_RELEASE} ${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RANGE-V3_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_RANGE-V3_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_RANGE-V3_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RANGE-V3_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_RANGE-V3_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_RANGE-V3_MINSIZEREL} ${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RANGE-V3_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_RANGE-V3_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_RANGE-V3_DEBUG} ${_CONAN_PKG_LIBS_RANGE-V3_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RANGE-V3_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_RANGE-V3_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::range-v3 PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_RANGE-V3}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_RANGE-V3_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_RANGE-V3_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_RANGE-V3_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_RANGE-V3_DEBUG}>)
    set_property(TARGET CONAN_PKG::range-v3 PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_RANGE-V3}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_RANGE-V3_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_RANGE-V3_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_RANGE-V3_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_RANGE-V3_DEBUG}>)
    set_property(TARGET CONAN_PKG::range-v3 PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_RANGE-V3_LIST} ${CONAN_CXX_FLAGS_RANGE-V3_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_RANGE-V3_RELEASE_LIST} ${CONAN_CXX_FLAGS_RANGE-V3_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_RANGE-V3_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_RANGE-V3_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_RANGE-V3_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_RANGE-V3_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_RANGE-V3_DEBUG_LIST}  ${CONAN_CXX_FLAGS_RANGE-V3_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES "${CONAN_SYSTEM_LIBS_GOOGLE-BENCHMARK} ${CONAN_FRAMEWORKS_FOUND_GOOGLE-BENCHMARK} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES "${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GOOGLE-BENCHMARK}" "${CONAN_LIB_DIRS_GOOGLE-BENCHMARK}"
                                  CONAN_PACKAGE_TARGETS_GOOGLE-BENCHMARK "${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES}"
                                  "" google-benchmark)
    set(_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_GOOGLE-BENCHMARK_DEBUG} ${CONAN_FRAMEWORKS_FOUND_GOOGLE-BENCHMARK_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEBUG}" "${CONAN_LIB_DIRS_GOOGLE-BENCHMARK_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_GOOGLE-BENCHMARK_DEBUG "${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_DEBUG}"
                                  "debug" google-benchmark)
    set(_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_GOOGLE-BENCHMARK_RELEASE} ${CONAN_FRAMEWORKS_FOUND_GOOGLE-BENCHMARK_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GOOGLE-BENCHMARK_RELEASE}" "${CONAN_LIB_DIRS_GOOGLE-BENCHMARK_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_GOOGLE-BENCHMARK_RELEASE "${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_RELEASE}"
                                  "release" google-benchmark)
    set(_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_GOOGLE-BENCHMARK_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_GOOGLE-BENCHMARK_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GOOGLE-BENCHMARK_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_GOOGLE-BENCHMARK_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_GOOGLE-BENCHMARK_RELWITHDEBINFO "${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" google-benchmark)
    set(_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_GOOGLE-BENCHMARK_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_GOOGLE-BENCHMARK_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GOOGLE-BENCHMARK_MINSIZEREL}" "${CONAN_LIB_DIRS_GOOGLE-BENCHMARK_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_GOOGLE-BENCHMARK_MINSIZEREL "${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" google-benchmark)

    add_library(CONAN_PKG::google-benchmark INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::google-benchmark PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_GOOGLE-BENCHMARK} ${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GOOGLE-BENCHMARK_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GOOGLE-BENCHMARK_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_GOOGLE-BENCHMARK_RELEASE} ${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GOOGLE-BENCHMARK_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GOOGLE-BENCHMARK_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_GOOGLE-BENCHMARK_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GOOGLE-BENCHMARK_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GOOGLE-BENCHMARK_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_GOOGLE-BENCHMARK_MINSIZEREL} ${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GOOGLE-BENCHMARK_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GOOGLE-BENCHMARK_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_GOOGLE-BENCHMARK_DEBUG} ${_CONAN_PKG_LIBS_GOOGLE-BENCHMARK_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GOOGLE-BENCHMARK_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GOOGLE-BENCHMARK_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::google-benchmark PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_GOOGLE-BENCHMARK}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_GOOGLE-BENCHMARK_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_GOOGLE-BENCHMARK_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_GOOGLE-BENCHMARK_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_GOOGLE-BENCHMARK_DEBUG}>)
    set_property(TARGET CONAN_PKG::google-benchmark PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_GOOGLE-BENCHMARK}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_GOOGLE-BENCHMARK_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_GOOGLE-BENCHMARK_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_GOOGLE-BENCHMARK_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_GOOGLE-BENCHMARK_DEBUG}>)
    set_property(TARGET CONAN_PKG::google-benchmark PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_GOOGLE-BENCHMARK_LIST} ${CONAN_CXX_FLAGS_GOOGLE-BENCHMARK_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_GOOGLE-BENCHMARK_RELEASE_LIST} ${CONAN_CXX_FLAGS_GOOGLE-BENCHMARK_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_GOOGLE-BENCHMARK_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_GOOGLE-BENCHMARK_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_GOOGLE-BENCHMARK_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_GOOGLE-BENCHMARK_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_GOOGLE-BENCHMARK_DEBUG_LIST}  ${CONAN_CXX_FLAGS_GOOGLE-BENCHMARK_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES "${CONAN_SYSTEM_LIBS_ZLIB} ${CONAN_FRAMEWORKS_FOUND_ZLIB} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB}" "${CONAN_LIB_DIRS_ZLIB}"
                                  CONAN_PACKAGE_TARGETS_ZLIB "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES}"
                                  "" zlib)
    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_ZLIB_DEBUG} ${CONAN_FRAMEWORKS_FOUND_ZLIB_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB_DEBUG}" "${CONAN_LIB_DIRS_ZLIB_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_DEBUG "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG}"
                                  "debug" zlib)
    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_ZLIB_RELEASE} ${CONAN_FRAMEWORKS_FOUND_ZLIB_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB_RELEASE}" "${CONAN_LIB_DIRS_ZLIB_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_RELEASE "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE}"
                                  "release" zlib)
    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_ZLIB_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_ZLIB_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_ZLIB_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" zlib)
    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_ZLIB_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_ZLIB_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB_MINSIZEREL}" "${CONAN_LIB_DIRS_ZLIB_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_MINSIZEREL "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" zlib)

    add_library(CONAN_PKG::zlib INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_ZLIB} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZLIB_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_ZLIB_RELEASE} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZLIB_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_ZLIB_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZLIB_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_ZLIB_MINSIZEREL} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZLIB_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_ZLIB_DEBUG} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZLIB_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_ZLIB}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_ZLIB_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_ZLIB_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_ZLIB_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_ZLIB_DEBUG}>)
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_ZLIB}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_ZLIB_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_ZLIB_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_ZLIB_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_ZLIB_DEBUG}>)
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_ZLIB_LIST} ${CONAN_CXX_FLAGS_ZLIB_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_ZLIB_RELEASE_LIST} ${CONAN_CXX_FLAGS_ZLIB_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_ZLIB_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_ZLIB_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_ZLIB_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_ZLIB_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_ZLIB_DEBUG_LIST}  ${CONAN_CXX_FLAGS_ZLIB_DEBUG_LIST}>)

    set(CONAN_TARGETS CONAN_PKG::Catch2 CONAN_PKG::clara CONAN_PKG::CTRE CONAN_PKG::libpng CONAN_PKG::date CONAN_PKG::range-v3 CONAN_PKG::google-benchmark CONAN_PKG::zlib)

endmacro()


macro(conan_basic_setup)
    set(options TARGETS NO_OUTPUT_DIRS SKIP_RPATH KEEP_RPATHS SKIP_STD SKIP_FPIC)
    cmake_parse_arguments(ARGUMENTS "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN} )

    if(CONAN_EXPORTED)
        conan_message(STATUS "Conan: called by CMake conan helper")
    endif()

    if(CONAN_IN_LOCAL_CACHE)
        conan_message(STATUS "Conan: called inside local cache")
    endif()

    if(NOT ARGUMENTS_NO_OUTPUT_DIRS)
        conan_message(STATUS "Conan: Adjusting output directories")
        conan_output_dirs_setup()
    endif()

    if(NOT ARGUMENTS_TARGETS)
        conan_message(STATUS "Conan: Using cmake global configuration")
        conan_global_flags()
    else()
        conan_message(STATUS "Conan: Using cmake targets configuration")
        conan_define_targets()
    endif()

    if(ARGUMENTS_SKIP_RPATH)
        # Change by "DEPRECATION" or "SEND_ERROR" when we are ready
        conan_message(WARNING "Conan: SKIP_RPATH is deprecated, it has been renamed to KEEP_RPATHS")
    endif()

    if(NOT ARGUMENTS_SKIP_RPATH AND NOT ARGUMENTS_KEEP_RPATHS)
        # Parameter has renamed, but we keep the compatibility with old SKIP_RPATH
        conan_set_rpath()
    endif()

    if(NOT ARGUMENTS_SKIP_STD)
        conan_set_std()
    endif()

    if(NOT ARGUMENTS_SKIP_FPIC)
        conan_set_fpic()
    endif()

    conan_check_compiler()
    conan_set_libcxx()
    conan_set_vs_runtime()
    conan_set_find_paths()
    conan_include_build_modules()
    conan_set_find_library_paths()
endmacro()


macro(conan_set_find_paths)
    # CMAKE_MODULE_PATH does not have Debug/Release config, but there are variables
    # CONAN_CMAKE_MODULE_PATH_DEBUG to be used by the consumer
    # CMake can find findXXX.cmake files in the root of packages
    set(CMAKE_MODULE_PATH ${CONAN_CMAKE_MODULE_PATH} ${CMAKE_MODULE_PATH})

    # Make find_package() to work
    set(CMAKE_PREFIX_PATH ${CONAN_CMAKE_MODULE_PATH} ${CMAKE_PREFIX_PATH})

    # Set the find root path (cross build)
    set(CMAKE_FIND_ROOT_PATH ${CONAN_CMAKE_FIND_ROOT_PATH} ${CMAKE_FIND_ROOT_PATH})
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_PROGRAM)
        set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_PROGRAM})
    endif()
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_LIBRARY)
        set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_LIBRARY})
    endif()
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_INCLUDE)
        set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_INCLUDE})
    endif()
endmacro()


macro(conan_set_find_library_paths)
    # CMAKE_INCLUDE_PATH, CMAKE_LIBRARY_PATH does not have Debug/Release config, but there are variables
    # CONAN_INCLUDE_DIRS_DEBUG/RELEASE CONAN_LIB_DIRS_DEBUG/RELEASE to be used by the consumer
    # For find_library
    set(CMAKE_INCLUDE_PATH ${CONAN_INCLUDE_DIRS} ${CMAKE_INCLUDE_PATH})
    set(CMAKE_LIBRARY_PATH ${CONAN_LIB_DIRS} ${CMAKE_LIBRARY_PATH})
endmacro()


macro(conan_set_vs_runtime)
    if(CONAN_LINK_RUNTIME)
        conan_get_policy(CMP0091 policy_0091)
        if(policy_0091 STREQUAL "NEW")
            if(CONAN_LINK_RUNTIME MATCHES "MTd")
                set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDebug")
            elseif(CONAN_LINK_RUNTIME MATCHES "MDd")
                set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDebugDLL")
            elseif(CONAN_LINK_RUNTIME MATCHES "MT")
                set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded")
            elseif(CONAN_LINK_RUNTIME MATCHES "MD")
                set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDLL")
            endif()
        else()
            foreach(flag CMAKE_C_FLAGS_RELEASE CMAKE_CXX_FLAGS_RELEASE
                         CMAKE_C_FLAGS_RELWITHDEBINFO CMAKE_CXX_FLAGS_RELWITHDEBINFO
                         CMAKE_C_FLAGS_MINSIZEREL CMAKE_CXX_FLAGS_MINSIZEREL)
                if(DEFINED ${flag})
                    string(REPLACE "/MD" ${CONAN_LINK_RUNTIME} ${flag} "${${flag}}")
                endif()
            endforeach()
            foreach(flag CMAKE_C_FLAGS_DEBUG CMAKE_CXX_FLAGS_DEBUG)
                if(DEFINED ${flag})
                    string(REPLACE "/MDd" ${CONAN_LINK_RUNTIME} ${flag} "${${flag}}")
                endif()
            endforeach()
        endif()
    endif()
endmacro()


macro(conan_flags_setup)
    # Macro maintained for backwards compatibility
    conan_set_find_library_paths()
    conan_global_flags()
    conan_set_rpath()
    conan_set_vs_runtime()
    conan_set_libcxx()
endmacro()


function(conan_message MESSAGE_OUTPUT)
    if(NOT CONAN_CMAKE_SILENT_OUTPUT)
        message(${ARGV${0}})
    endif()
endfunction()


function(conan_get_policy policy_id policy)
    if(POLICY "${policy_id}")
        cmake_policy(GET "${policy_id}" _policy)
        set(policy "${_policy}" PARENT_SCOPE)
    else()
        set(policy "" PARENT_SCOPE)
    endif()
endfunction()


function(conan_find_libraries_abs_path libraries package_libdir libraries_abs_path)
    foreach(_LIBRARY_NAME ${libraries})
        find_library(CONAN_FOUND_LIBRARY NAME ${_LIBRARY_NAME} PATHS ${package_libdir}
                     NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
        if(CONAN_FOUND_LIBRARY)
            conan_message(STATUS "Library ${_LIBRARY_NAME} found ${CONAN_FOUND_LIBRARY}")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${CONAN_FOUND_LIBRARY})
        else()
            conan_message(STATUS "Library ${_LIBRARY_NAME} not found in package, might be system one")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIBRARY_NAME})
        endif()
        unset(CONAN_FOUND_LIBRARY CACHE)
    endforeach()
    set(${libraries_abs_path} ${CONAN_FULLPATH_LIBS} PARENT_SCOPE)
endfunction()


function(conan_package_library_targets libraries package_libdir libraries_abs_path deps build_type package_name)
    unset(_CONAN_ACTUAL_TARGETS CACHE)
    unset(_CONAN_FOUND_SYSTEM_LIBS CACHE)
    foreach(_LIBRARY_NAME ${libraries})
        find_library(CONAN_FOUND_LIBRARY NAME ${_LIBRARY_NAME} PATHS ${package_libdir}
                     NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
        if(CONAN_FOUND_LIBRARY)
            conan_message(STATUS "Library ${_LIBRARY_NAME} found ${CONAN_FOUND_LIBRARY}")
            set(_LIB_NAME CONAN_LIB::${package_name}_${_LIBRARY_NAME}${build_type})
            add_library(${_LIB_NAME} UNKNOWN IMPORTED)
            set_target_properties(${_LIB_NAME} PROPERTIES IMPORTED_LOCATION ${CONAN_FOUND_LIBRARY})
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIB_NAME})
            set(_CONAN_ACTUAL_TARGETS ${_CONAN_ACTUAL_TARGETS} ${_LIB_NAME})
        else()
            conan_message(STATUS "Library ${_LIBRARY_NAME} not found in package, might be system one")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIBRARY_NAME})
            set(_CONAN_FOUND_SYSTEM_LIBS "${_CONAN_FOUND_SYSTEM_LIBS};${_LIBRARY_NAME}")
        endif()
        unset(CONAN_FOUND_LIBRARY CACHE)
    endforeach()

    # Add all dependencies to all targets
    string(REPLACE " " ";" deps_list "${deps}")
    foreach(_CONAN_ACTUAL_TARGET ${_CONAN_ACTUAL_TARGETS})
        set_property(TARGET ${_CONAN_ACTUAL_TARGET} PROPERTY INTERFACE_LINK_LIBRARIES "${_CONAN_FOUND_SYSTEM_LIBS};${deps_list}")
    endforeach()

    set(${libraries_abs_path} ${CONAN_FULLPATH_LIBS} PARENT_SCOPE)
endfunction()


macro(conan_set_libcxx)
    if(DEFINED CONAN_LIBCXX)
        conan_message(STATUS "Conan: C++ stdlib: ${CONAN_LIBCXX}")
        if(CONAN_COMPILER STREQUAL "clang" OR CONAN_COMPILER STREQUAL "apple-clang")
            if(CONAN_LIBCXX STREQUAL "libstdc++" OR CONAN_LIBCXX STREQUAL "libstdc++11" )
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libstdc++")
            elseif(CONAN_LIBCXX STREQUAL "libc++")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
            endif()
        endif()
        if(CONAN_COMPILER STREQUAL "sun-cc")
            if(CONAN_LIBCXX STREQUAL "libCstd")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=Cstd")
            elseif(CONAN_LIBCXX STREQUAL "libstdcxx")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stdcxx4")
            elseif(CONAN_LIBCXX STREQUAL "libstlport")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stlport4")
            elseif(CONAN_LIBCXX STREQUAL "libstdc++")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stdcpp")
            endif()
        endif()
        if(CONAN_LIBCXX STREQUAL "libstdc++11")
            add_definitions(-D_GLIBCXX_USE_CXX11_ABI=1)
        elseif(CONAN_LIBCXX STREQUAL "libstdc++")
            add_definitions(-D_GLIBCXX_USE_CXX11_ABI=0)
        endif()
    endif()
endmacro()


macro(conan_set_std)
    conan_message(STATUS "Conan: Adjusting language standard")
    # Do not warn "Manually-specified variables were not used by the project"
    set(ignorevar "${CONAN_STD_CXX_FLAG}${CONAN_CMAKE_CXX_STANDARD}${CONAN_CMAKE_CXX_EXTENSIONS}")
    if (CMAKE_VERSION VERSION_LESS "3.1" OR
        (CMAKE_VERSION VERSION_LESS "3.12" AND ("${CONAN_CMAKE_CXX_STANDARD}" STREQUAL "20" OR "${CONAN_CMAKE_CXX_STANDARD}" STREQUAL "gnu20")))
        if(CONAN_STD_CXX_FLAG)
            conan_message(STATUS "Conan setting CXX_FLAGS flags: ${CONAN_STD_CXX_FLAG}")
            set(CMAKE_CXX_FLAGS "${CONAN_STD_CXX_FLAG} ${CMAKE_CXX_FLAGS}")
        endif()
    else()
        if(CONAN_CMAKE_CXX_STANDARD)
            conan_message(STATUS "Conan setting CPP STANDARD: ${CONAN_CMAKE_CXX_STANDARD} WITH EXTENSIONS ${CONAN_CMAKE_CXX_EXTENSIONS}")
            set(CMAKE_CXX_STANDARD ${CONAN_CMAKE_CXX_STANDARD})
            set(CMAKE_CXX_EXTENSIONS ${CONAN_CMAKE_CXX_EXTENSIONS})
        endif()
    endif()
endmacro()


macro(conan_set_rpath)
    conan_message(STATUS "Conan: Adjusting default RPATHs Conan policies")
    if(APPLE)
        # https://cmake.org/Wiki/CMake_RPATH_handling
        # CONAN GUIDE: All generated libraries should have the id and dependencies to other
        # dylibs without path, just the name, EX:
        # libMyLib1.dylib:
        #     libMyLib1.dylib (compatibility version 0.0.0, current version 0.0.0)
        #     libMyLib0.dylib (compatibility version 0.0.0, current version 0.0.0)
        #     /usr/lib/libc++.1.dylib (compatibility version 1.0.0, current version 120.0.0)
        #     /usr/lib/libSystem.B.dylib (compatibility version 1.0.0, current version 1197.1.1)
        set(CMAKE_SKIP_RPATH 1)  # AVOID RPATH FOR *.dylib, ALL LIBS BETWEEN THEM AND THE EXE
                                 # SHOULD BE ON THE LINKER RESOLVER PATH (./ IS ONE OF THEM)
        # Policy CMP0068
        # We want the old behavior, in CMake >= 3.9 CMAKE_SKIP_RPATH won't affect the install_name in OSX
        set(CMAKE_INSTALL_NAME_DIR "")
    endif()
endmacro()


macro(conan_set_fpic)
    if(DEFINED CONAN_CMAKE_POSITION_INDEPENDENT_CODE)
        conan_message(STATUS "Conan: Adjusting fPIC flag (${CONAN_CMAKE_POSITION_INDEPENDENT_CODE})")
        set(CMAKE_POSITION_INDEPENDENT_CODE ${CONAN_CMAKE_POSITION_INDEPENDENT_CODE})
    endif()
endmacro()


macro(conan_output_dirs_setup)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})

    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})

    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
endmacro()


macro(conan_split_version VERSION_STRING MAJOR MINOR)
    #make a list from the version string
    string(REPLACE "." ";" VERSION_LIST "${VERSION_STRING}")

    #write output values
    list(LENGTH VERSION_LIST _version_len)
    list(GET VERSION_LIST 0 ${MAJOR})
    if(${_version_len} GREATER 1)
        list(GET VERSION_LIST 1 ${MINOR})
    endif()
endmacro()


macro(conan_error_compiler_version)
    message(FATAL_ERROR "Detected a mismatch for the compiler version between your conan profile settings and CMake: \n"
                        "Compiler version specified in your conan profile: ${CONAN_COMPILER_VERSION}\n"
                        "Compiler version detected in CMake: ${VERSION_MAJOR}.${VERSION_MINOR}\n"
                        "Please check your conan profile settings (conan profile show [default|your_profile_name])"
           )
endmacro()

set(_CONAN_CURRENT_DIR ${CMAKE_CURRENT_LIST_DIR})

function(conan_get_compiler CONAN_INFO_COMPILER CONAN_INFO_COMPILER_VERSION)
    conan_message(STATUS "Current conanbuildinfo.cmake directory: " ${_CONAN_CURRENT_DIR})
    if(NOT EXISTS ${_CONAN_CURRENT_DIR}/conaninfo.txt)
        conan_message(STATUS "WARN: conaninfo.txt not found")
        return()
    endif()

    file (READ "${_CONAN_CURRENT_DIR}/conaninfo.txt" CONANINFO)

    # MATCHALL will match all, including the last one, which is the full_settings one
    string(REGEX MATCH "full_settings.*" _FULL_SETTINGS_MATCHED ${CONANINFO})
    string(REGEX MATCH "compiler=([-A-Za-z0-9_ ]+)" _MATCHED ${_FULL_SETTINGS_MATCHED})
    if(DEFINED CMAKE_MATCH_1)
        string(STRIP "${CMAKE_MATCH_1}" _CONAN_INFO_COMPILER)
        set(${CONAN_INFO_COMPILER} ${_CONAN_INFO_COMPILER} PARENT_SCOPE)
    endif()

    string(REGEX MATCH "compiler.version=([-A-Za-z0-9_.]+)" _MATCHED ${_FULL_SETTINGS_MATCHED})
    if(DEFINED CMAKE_MATCH_1)
        string(STRIP "${CMAKE_MATCH_1}" _CONAN_INFO_COMPILER_VERSION)
        set(${CONAN_INFO_COMPILER_VERSION} ${_CONAN_INFO_COMPILER_VERSION} PARENT_SCOPE)
    endif()
endfunction()


function(check_compiler_version)
    conan_split_version(${CMAKE_CXX_COMPILER_VERSION} VERSION_MAJOR VERSION_MINOR)
    if(DEFINED CONAN_SETTINGS_COMPILER_TOOLSET)
       conan_message(STATUS "Conan: Skipping compiler check: Declared 'compiler.toolset'")
       return()
    endif()
    if(CMAKE_CXX_COMPILER_ID MATCHES MSVC)
        # MSVC_VERSION is defined since 2.8.2 at least
        # https://cmake.org/cmake/help/v2.8.2/cmake.html#variable:MSVC_VERSION
        # https://cmake.org/cmake/help/v3.14/variable/MSVC_VERSION.html
        if(
            # 1920-1929 = VS 16.0 (v142 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "16" AND NOT((MSVC_VERSION GREATER 1919) AND (MSVC_VERSION LESS 1930))) OR
            # 1910-1919 = VS 15.0 (v141 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "15" AND NOT((MSVC_VERSION GREATER 1909) AND (MSVC_VERSION LESS 1920))) OR
            # 1900      = VS 14.0 (v140 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "14" AND NOT(MSVC_VERSION EQUAL 1900)) OR
            # 1800      = VS 12.0 (v120 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "12" AND NOT VERSION_MAJOR STREQUAL "18") OR
            # 1700      = VS 11.0 (v110 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "11" AND NOT VERSION_MAJOR STREQUAL "17") OR
            # 1600      = VS 10.0 (v100 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "10" AND NOT VERSION_MAJOR STREQUAL "16") OR
            # 1500      = VS  9.0 (v90 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "9" AND NOT VERSION_MAJOR STREQUAL "15") OR
            # 1400      = VS  8.0 (v80 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "8" AND NOT VERSION_MAJOR STREQUAL "14") OR
            # 1310      = VS  7.1, 1300      = VS  7.0
            (CONAN_COMPILER_VERSION STREQUAL "7" AND NOT VERSION_MAJOR STREQUAL "13") OR
            # 1200      = VS  6.0
            (CONAN_COMPILER_VERSION STREQUAL "6" AND NOT VERSION_MAJOR STREQUAL "12") )
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "gcc")
        set(_CHECK_VERSION ${VERSION_MAJOR}.${VERSION_MINOR})
        if(NOT ${CONAN_COMPILER_VERSION} VERSION_LESS 5.0)
            conan_message(STATUS "Conan: Compiler GCC>=5, checking major version ${CONAN_COMPILER_VERSION}")
            conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
            if("${CONAN_COMPILER_MINOR}" STREQUAL "")
                set(_CHECK_VERSION ${VERSION_MAJOR})
            endif()
        endif()
        conan_message(STATUS "Conan: Checking correct version: ${_CHECK_VERSION}")
        if(NOT ${_CHECK_VERSION} VERSION_EQUAL CONAN_COMPILER_VERSION)
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "clang")
        set(_CHECK_VERSION ${VERSION_MAJOR}.${VERSION_MINOR})
        if(NOT ${CONAN_COMPILER_VERSION} VERSION_LESS 8.0)
            conan_message(STATUS "Conan: Compiler Clang>=8, checking major version ${CONAN_COMPILER_VERSION}")
            conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
            if("${CONAN_COMPILER_MINOR}" STREQUAL "")
                set(_CHECK_VERSION ${VERSION_MAJOR})
            endif()
        endif()
        conan_message(STATUS "Conan: Checking correct version: ${_CHECK_VERSION}")
        if(NOT ${_CHECK_VERSION} VERSION_EQUAL CONAN_COMPILER_VERSION)
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "apple-clang" OR CONAN_COMPILER STREQUAL "sun-cc")
        conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
        if(NOT ${VERSION_MAJOR}.${VERSION_MINOR} VERSION_EQUAL ${CONAN_COMPILER_MAJOR}.${CONAN_COMPILER_MINOR})
           conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "intel")
        if(NOT ${CONAN_COMPILER_VERSION} VERSION_LESS 19.1)
            conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
            if(NOT ${VERSION_MAJOR}.${VERSION_MINOR} VERSION_EQUAL ${CONAN_COMPILER_MAJOR}.${CONAN_COMPILER_MINOR})
               conan_error_compiler_version()
            endif()
        else()
            if(NOT ${VERSION_MAJOR} VERSION_EQUAL ${CONAN_COMPILER_VERSION})
               conan_error_compiler_version()
            endif()
        endif()
    else()
        conan_message(STATUS "WARN: Unknown compiler '${CONAN_COMPILER}', skipping the version check...")
    endif()
endfunction()


function(conan_check_compiler)
    if(CONAN_DISABLE_CHECK_COMPILER)
        conan_message(STATUS "WARN: Disabled conan compiler checks")
        return()
    endif()
    if(NOT DEFINED CMAKE_CXX_COMPILER_ID)
        if(DEFINED CMAKE_C_COMPILER_ID)
            conan_message(STATUS "This project seems to be plain C, using '${CMAKE_C_COMPILER_ID}' compiler")
            set(CMAKE_CXX_COMPILER_ID ${CMAKE_C_COMPILER_ID})
            set(CMAKE_CXX_COMPILER_VERSION ${CMAKE_C_COMPILER_VERSION})
        else()
            message(FATAL_ERROR "This project seems to be plain C, but no compiler defined")
        endif()
    endif()
    if(NOT CMAKE_CXX_COMPILER_ID AND NOT CMAKE_C_COMPILER_ID)
        # This use case happens when compiler is not identified by CMake, but the compilers are there and work
        conan_message(STATUS "*** WARN: CMake was not able to identify a C or C++ compiler ***")
        conan_message(STATUS "*** WARN: Disabling compiler checks. Please make sure your settings match your environment ***")
        return()
    endif()
    if(NOT DEFINED CONAN_COMPILER)
        conan_get_compiler(CONAN_COMPILER CONAN_COMPILER_VERSION)
        if(NOT DEFINED CONAN_COMPILER)
            conan_message(STATUS "WARN: CONAN_COMPILER variable not set, please make sure yourself that "
                          "your compiler and version matches your declared settings")
            return()
        endif()
    endif()

    if(NOT CMAKE_HOST_SYSTEM_NAME STREQUAL ${CMAKE_SYSTEM_NAME})
        set(CROSS_BUILDING 1)
    endif()

    # If using VS, verify toolset
    if (CONAN_COMPILER STREQUAL "Visual Studio")
        if (CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "LLVM" OR
            CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "clang")
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "Clang")
        elseif (CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "Intel")
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "Intel")
        else()
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "MSVC")
        endif()

        if (NOT CMAKE_CXX_COMPILER_ID MATCHES ${EXPECTED_CMAKE_CXX_COMPILER_ID})
            message(FATAL_ERROR "Incorrect '${CONAN_COMPILER}'. Toolset specifies compiler as '${EXPECTED_CMAKE_CXX_COMPILER_ID}' "
                                "but CMake detected '${CMAKE_CXX_COMPILER_ID}'")
        endif()

    # Avoid checks when cross compiling, apple-clang crashes because its APPLE but not apple-clang
    # Actually CMake is detecting "clang" when you are using apple-clang, only if CMP0025 is set to NEW will detect apple-clang
    elseif((CONAN_COMPILER STREQUAL "gcc" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "GNU") OR
        (CONAN_COMPILER STREQUAL "apple-clang" AND NOT CROSS_BUILDING AND (NOT APPLE OR NOT CMAKE_CXX_COMPILER_ID MATCHES "Clang")) OR
        (CONAN_COMPILER STREQUAL "clang" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "Clang") OR
        (CONAN_COMPILER STREQUAL "sun-cc" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "SunPro") )
        message(FATAL_ERROR "Incorrect '${CONAN_COMPILER}', is not the one detected by CMake: '${CMAKE_CXX_COMPILER_ID}'")
    endif()


    if(NOT DEFINED CONAN_COMPILER_VERSION)
        conan_message(STATUS "WARN: CONAN_COMPILER_VERSION variable not set, please make sure yourself "
                             "that your compiler version matches your declared settings")
        return()
    endif()
    check_compiler_version()
endfunction()


macro(conan_set_flags build_type)
    set(CMAKE_CXX_FLAGS${build_type} "${CMAKE_CXX_FLAGS${build_type}} ${CONAN_CXX_FLAGS${build_type}}")
    set(CMAKE_C_FLAGS${build_type} "${CMAKE_C_FLAGS${build_type}} ${CONAN_C_FLAGS${build_type}}")
    set(CMAKE_SHARED_LINKER_FLAGS${build_type} "${CMAKE_SHARED_LINKER_FLAGS${build_type}} ${CONAN_SHARED_LINKER_FLAGS${build_type}}")
    set(CMAKE_EXE_LINKER_FLAGS${build_type} "${CMAKE_EXE_LINKER_FLAGS${build_type}} ${CONAN_EXE_LINKER_FLAGS${build_type}}")
endmacro()


macro(conan_global_flags)
    if(CONAN_SYSTEM_INCLUDES)
        include_directories(SYSTEM ${CONAN_INCLUDE_DIRS}
                                   "$<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_RELEASE}>"
                                   "$<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_RELWITHDEBINFO}>"
                                   "$<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_MINSIZEREL}>"
                                   "$<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DEBUG}>")
    else()
        include_directories(${CONAN_INCLUDE_DIRS}
                            "$<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_RELEASE}>"
                            "$<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_RELWITHDEBINFO}>"
                            "$<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_MINSIZEREL}>"
                            "$<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DEBUG}>")
    endif()

    link_directories(${CONAN_LIB_DIRS})

    conan_find_libraries_abs_path("${CONAN_LIBS_DEBUG}" "${CONAN_LIB_DIRS_DEBUG}"
                                  CONAN_LIBS_DEBUG)
    conan_find_libraries_abs_path("${CONAN_LIBS_RELEASE}" "${CONAN_LIB_DIRS_RELEASE}"
                                  CONAN_LIBS_RELEASE)
    conan_find_libraries_abs_path("${CONAN_LIBS_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_RELWITHDEBINFO}"
                                  CONAN_LIBS_RELWITHDEBINFO)
    conan_find_libraries_abs_path("${CONAN_LIBS_MINSIZEREL}" "${CONAN_LIB_DIRS_MINSIZEREL}"
                                  CONAN_LIBS_MINSIZEREL)

    add_compile_options(${CONAN_DEFINES}
                        "$<$<CONFIG:Debug>:${CONAN_DEFINES_DEBUG}>"
                        "$<$<CONFIG:Release>:${CONAN_DEFINES_RELEASE}>"
                        "$<$<CONFIG:RelWithDebInfo>:${CONAN_DEFINES_RELWITHDEBINFO}>"
                        "$<$<CONFIG:MinSizeRel>:${CONAN_DEFINES_MINSIZEREL}>")

    conan_set_flags("")
    conan_set_flags("_RELEASE")
    conan_set_flags("_DEBUG")

endmacro()


macro(conan_target_link_libraries target)
    if(CONAN_TARGETS)
        target_link_libraries(${target} ${CONAN_TARGETS})
    else()
        target_link_libraries(${target} ${CONAN_LIBS})
        foreach(_LIB ${CONAN_LIBS_RELEASE})
            target_link_libraries(${target} optimized ${_LIB})
        endforeach()
        foreach(_LIB ${CONAN_LIBS_DEBUG})
            target_link_libraries(${target} debug ${_LIB})
        endforeach()
    endif()
endmacro()


macro(conan_include_build_modules)
    if(CMAKE_BUILD_TYPE)
        if(${CMAKE_BUILD_TYPE} MATCHES "Debug")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_DEBUG} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "Release")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_RELEASE} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "RelWithDebInfo")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_RELWITHDEBINFO} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "MinSizeRel")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_MINSIZEREL} ${CONAN_BUILD_MODULES_PATHS})
        endif()
    endif()

    foreach(_BUILD_MODULE_PATH ${CONAN_BUILD_MODULES_PATHS})
        include(${_BUILD_MODULE_PATH})
    endforeach()
endmacro()


### Definition of user declared vars (user_info) ###

