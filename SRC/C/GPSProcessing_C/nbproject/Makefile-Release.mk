#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/file_handler.o \
	${OBJECTDIR}/gps_data/data_coordinator.o \
	${OBJECTDIR}/gps_data/date_manipulation.o \
	${OBJECTDIR}/gps_data/offset_handler.o \
	${OBJECTDIR}/gps_data/sentence_handler.o \
	${OBJECTDIR}/gps_data/stream_components.o \
	${OBJECTDIR}/gps_data/xml_creator.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/gpsprocessing_c

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/gpsprocessing_c: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.c} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/gpsprocessing_c ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/file_handler.o: file_handler.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/file_handler.o file_handler.c

${OBJECTDIR}/gps_data/data_coordinator.o: gps_data/data_coordinator.c 
	${MKDIR} -p ${OBJECTDIR}/gps_data
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/gps_data/data_coordinator.o gps_data/data_coordinator.c

${OBJECTDIR}/gps_data/date_manipulation.o: gps_data/date_manipulation.c 
	${MKDIR} -p ${OBJECTDIR}/gps_data
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/gps_data/date_manipulation.o gps_data/date_manipulation.c

${OBJECTDIR}/gps_data/offset_handler.o: gps_data/offset_handler.c 
	${MKDIR} -p ${OBJECTDIR}/gps_data
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/gps_data/offset_handler.o gps_data/offset_handler.c

${OBJECTDIR}/gps_data/sentence_handler.o: gps_data/sentence_handler.c 
	${MKDIR} -p ${OBJECTDIR}/gps_data
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/gps_data/sentence_handler.o gps_data/sentence_handler.c

${OBJECTDIR}/gps_data/stream_components.o: gps_data/stream_components.c 
	${MKDIR} -p ${OBJECTDIR}/gps_data
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/gps_data/stream_components.o gps_data/stream_components.c

${OBJECTDIR}/gps_data/xml_creator.o: gps_data/xml_creator.c 
	${MKDIR} -p ${OBJECTDIR}/gps_data
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/gps_data/xml_creator.o gps_data/xml_creator.c

${OBJECTDIR}/main.o: main.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/gpsprocessing_c

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
