# $NetBSD: Makefile,v 1.3 2007/08/04 12:52:56 joerg Exp $
#

DISTNAME=	espeak-1.28-source
PKGNAME=	espeak-1.28
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=espeak/}
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://espeak.sourceforge.net/
COMMENT=	Speech synthesizer

USE_LANGUAGES=	c++
USE_TOOLS+=	gmake
WRKSRC=		${WRKDIR}/espeak-1.28-source/src

#LICENSE=	GPLv3

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/espeak ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/libespeak.so.1.1.28 ${PREFIX}/lib
	${LN} -sf ${PREFIX}/lib/libespeak.so.1.1.28 ${PREFIX}/lib/libespeak.so.1
	${LN} -sf ${PREFIX}/lib/libespeak.so.1.1.28 ${PREFIX}/lib/libespeak.so
	${INSTALL_DATA} ${WRKSRC}/libespeak.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/speak_lib.h ${PREFIX}/include
	${CP} -r ${WRKDIR}/espeak-1.28-source/espeak-data ${PREFIX}/share

.include "../../audio/portaudio/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
