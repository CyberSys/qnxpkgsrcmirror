# $NetBSD: Makefile,v 1.12 2006/12/27 13:37:46 joerg Exp $

DISTNAME=	xscribble
PKGNAME=	xscribble-20000616
PKGREVISION=	1
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.handhelds.org/pub/apps/src/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.handhelds.org/projects/xscribble.html
COMMENT=	Handwriting recognition (like graffiti)

USE_IMAKE=	YES
NO_INSTALL_MANPAGES=	YES

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
SYS_LIBRARIES=	-lmx
MAKE_ENV+=	SYS_LIBRARIES=${SYS_LIBRARIES:Q}
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xscribble
	${INSTALL_DATA} ${WRKSRC}/classifiers/*.cl ${PREFIX}/share/examples/xscribble

.include "../../x11/libXaw/buildlink3.mk"
.include "../../x11/libXp/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/libXtst/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
