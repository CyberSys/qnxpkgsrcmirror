# $NetBSD: Makefile,v 1.18 2006/12/19 13:28:20 rillig Exp $
#

DISTNAME=	shlock-20020114
CATEGORIES=	pkgtools sysutils
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=
COMMENT=	Shell utility to perform dot-locking

WRKSRC=		${WRKDIR}
EXTRACT_ONLY=	#empty
NO_CHECKSUM=	yes
MANCOMPRESSED_IF_MANZ=	yes
PLIST_SRC=	${WRKDIR}/PLIST
BUILD_DEFS+=	MANINSTALL

MAKE_ENV+=	${BSD_MAKE_ENV}

.include "../../mk/bsd.prefs.mk"

PKGSRC_LOCKTYPE=	none	# avoid "bootstrapping problem"

.if !empty(OPSYS:MSunOS) || !empty(OPSYS:MDarwin) ||			\
    !empty(OPSYS:MDragonFly) || !empty(OPSYS:MFreeBSD) ||		\
    !empty(OPSYS:MLinux)
MANINSTALL=
.endif

post-extract:
	@for FILE in Makefile shlock.c shlock.1; do			\
		${CP} ${FILESDIR}/$$FILE ${WRKSRC};			\
	done

pre-install:
	@${RM} -f ${PLIST_SRC}
	@${CP} ${PKGDIR}/PLIST ${PLIST_SRC}
	@if [ -n "${MANINSTALL:Mcatinstall}" ]; then			\
		${ECHO} man/cat1/shlock.0 >> ${PLIST_SRC};		\
	fi
	@if [ -n "${MANINSTALL:Mmaninstall}" ]; then			\
		${ECHO} man/man1/shlock.1 >> ${PLIST_SRC};		\
	fi

.include "../../mk/bsd.pkg.mk"
