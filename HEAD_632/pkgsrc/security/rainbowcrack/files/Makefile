# $NetBSD: Makefile,v 1.1.1.1 2006/10/21 07:47:25 adrianp Exp $
#

# System-specific configuration.

CRYPTOLIBS?=		-lcrypto

# Package-provided data.

PROGS=		rtgen rtdump rtsort rcrack

SRCS.rtgen=	Public.cpp ChainWalkContext.cpp HashAlgorithm.cpp HashRoutine.cpp RainbowTableGenerate.cpp
LIBS.rtgen=	${CRYPTOLIBS}

SRCS.rtdump=	Public.cpp ChainWalkContext.cpp HashAlgorithm.cpp HashRoutine.cpp RainbowTableDump.cpp
LIBS.rtdump=	${CRYPTOLIBS}

SRCS.rtsort=	Public.cpp RainbowTableSort.cpp
LIBS.rtsort=	# none

SRCS.rcrack=	Public.cpp ChainWalkContext.cpp HashAlgorithm.cpp HashRoutine.cpp HashSet.cpp MemoryPool.cpp ChainWalkSet.cpp CrackEngine.cpp RainbowCrack.cpp
LIBS.rcrack=	${CRYPTOLIBS}

#
# The code that makes the above work.
#

.for p in ${PROGS}

all: ${p}
${p}: ${SRCS.${p}}
	${CXX} ${CPPFLAGS} ${CXXFLAGS} ${LDFLAGS} ${LIBS} ${LIBS.${p}} ${SRCS.${p}} -o ${.TARGET}

install: install-${p}
install-${p}:
	${BSD_INSTALL_PROGRAM} ${p} ${PREFIX}/bin/${p}

.endfor
