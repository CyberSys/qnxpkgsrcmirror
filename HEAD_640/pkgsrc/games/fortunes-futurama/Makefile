# $NetBSD: Makefile,v 1.5 2009/01/23 21:14:18 jschauma Exp $
#

DISTNAME=	fortunes-futurama-0.2
CATEGORIES=	games
MASTER_SITES=	http://www.netmeister.org/apps/
EXTRACT_SUFX=	.gz

MAINTAINER=	pkgsrc-users@@NetBSD.org
HOMEPAGE=	http://www.netmeister.org/misc.html
COMMENT=	Fortunes from the Futurama animated TV series

BUILD_DEPENDS+=	fortune-strfile-[0-9]*:../../games/fortune-strfile

PKG_DESTDIR_SUPPORT=	user-destdir

STRFILE=	${LOCALBASE}/bin/strfile
WRKSRC=		${WRKDIR}

do-build:
	${STRFILE} ${WRKDIR}/${DISTNAME}

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/games/fortune/
	${INSTALL_DATA} ${WRKSRC}/${DISTNAME} \
		${DESTDIR}${PREFIX}/share/games/fortune/futurama
	${INSTALL_DATA} ${WRKSRC}/${DISTNAME}.dat \
		${DESTDIR}${PREFIX}/share/games/fortune/futurama.dat

.include "../../mk/bsd.pkg.mk"
