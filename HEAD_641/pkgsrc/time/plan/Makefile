# $NetBSD: Makefile,v 1.29 2008/06/12 02:14:53 joerg Exp $

DISTNAME=	plan-1.9
CATEGORIES=	x11 time
MASTER_SITES=	ftp://ftp.fu-berlin.de/unix/graphics/plan/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://me.in-berlin.de/~bitrot/plan.html
COMMENT=	Schedule planner based on X/Motif

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/${DISTNAME}/src
USE_TOOLS+=	yacc lex
USE_X11BASE=	YES
BUILD_TARGET=	${LOWER_OPSYS}

INSTALLATION_DIRS=	libexec/plan ${PKGMANDIR}/man1 ${PKGMANDIR}/man4 \
			share/plan/holiday

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "IRIX"
BUILD_TARGET=	${LOWER_VENDOR}${OS_VERSION:C/.[0-9]//}
.endif

.include "../../mk/compiler.mk"

.if !empty(CC_VERSION:Mgcc-3.*)
post-configure:
	${TOUCH} ${BUILDLINK_DIR}/include/varargs.h
.endif

pre-install:
	${RM} -f ${WRKDIR}/${DISTNAME}/holiday/holiday_*.orig
	for f in ${WRKDIR}/${DISTNAME}/holiday/holiday_*; do		\
		${INSTALL_DATA} $$f ${DESTDIR}${PREFIX}/share/plan/holiday/;	\
	done
	for f in HISTORY README; do					\
		${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/$$f ${DESTDIR}${PREFIX}/share/plan; \
	done

.include "../../mk/motif.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
