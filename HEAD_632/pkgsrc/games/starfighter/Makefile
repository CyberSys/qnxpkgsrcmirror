# $NetBSD: Makefile,v 1.15 2007/09/02 13:03:50 joerg Exp $
#

DISTNAME=	starfighter-1.1-1
PKGREVISION=	6
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.NetBSD.org/pub/NetBSD/misc/xtraeme/
DISTFILES=	${DISTNAME}.tar.gz starfighter-1.0-1.music.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.parallelrealities.co.uk/starfighter.php
COMMENT=	Old school 2D shoot them up

USE_TOOLS+=	gmake
USE_LANGUAGES=	c++
WRKSRC=		${WRKDIR}/${DISTNAME:S/-1$//}

MAKE_FILE=	makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/starfighter/music
	${CHMOD} 644 ${WRKDIR}/music/*
	cd ${WRKDIR}/music && ${PAX} -rw . \
		${PREFIX}/share/starfighter/music

.include "../../audio/SDL_mixer/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../graphics/SDL_image/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
