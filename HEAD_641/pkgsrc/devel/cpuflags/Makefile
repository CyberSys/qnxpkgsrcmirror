# $NetBSD: Makefile,v 1.148 2009/04/09 00:48:07 joerg Exp $

DISTNAME=	cpuflags-1.41
CATEGORIES=	devel sysutils
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	abs@NetBSD.org
COMMENT=	Determine compiler flags to best target current cpu

PKG_DESTDIR_SUPPORT=	user-destdir

ONLY_FOR_PLATFORM= NetBSD-*-* Linux-*-* SunOS-*-* FreeBSD-*-*

USE_LANGUAGES=	# empty
NO_CONFIGURE=	yes

SUBST_CLASSES+=		cpuflags
SUBST_STAGE.cpuflags=	post-patch
SUBST_FILES.cpuflags=	cpuflags.sh
SUBST_SED.cpuflags=	-e s,@@SH@@,${SH:Q},

do-extract:
	${MKDIR} ${WRKSRC}
	${CP} ${FILESDIR}/Makefile ${WRKSRC}
	${CP} ${FILESDIR}/c* ${WRKSRC}
	${CP} ${FILESDIR}/o* ${WRKSRC}
	${CP} ${FILESDIR}/s* ${WRKSRC}

.include "../../mk/bsd.pkg.mk"
