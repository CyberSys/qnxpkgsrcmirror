# $NetBSD: Makefile,v 1.13 2006/12/27 13:37:36 joerg Exp $

DISTNAME=	crack-attack-1.1.14
PKGREVISION=	3
CATEGORIES=	games
MASTER_SITES=	http://savannah.nongnu.org/download/crack-attack/

MAINTAINER=	snj@NetBSD.org
HOMEPAGE=	http://savannah.nongnu.org/projects/crack-attack
COMMENT=	Tetris Attack inspired game

GNU_CONFIGURE=	YES
USE_LANGUAGES=	c c++
USE_TOOLS+=	pkg-config

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/html/${PKGBASE}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/html/${PKGBASE}
	${INSTALL_DATA} ${WRKSRC}/doc/*.jpg ${PREFIX}/share/doc/html/${PKGBASE}

.include "../../graphics/Mesa/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
