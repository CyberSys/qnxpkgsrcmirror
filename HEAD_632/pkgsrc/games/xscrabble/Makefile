# $NetBSD: Makefile,v 1.20 2006/12/27 13:37:37 joerg Exp $
#

DISTNAME=	xscrabble-1.0
PKGREVISION=	4
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_LOCAL}

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	X version of the popular board game, for 1 to 4 players

WRKSRC=		${WRKDIR}/xscrabble
USE_IMAKE=	YES

INSTALLATION_DIRS=	bin lib/X11/app-defaults

SUBST_CLASSES+=		xscrabble
SUBST_FILES.xscrabble=	XScrabble.ad
SUBST_STAGE.xscrabble=	pre-configure
SUBST_SED.xscrabble=	-e 's,/usr/local/lib/xscrabble\.scores,${VARBASE}/games/xscrabble.scores,g'
SUBST_SED.xscrabble+=	-e 's,/usr/local/lib,${PREFIX}/share/games/xscrabble,g'

MAKE_DIRS=		${VARBASE}/games
EGDIR=			${PREFIX}/share/games/xscrabble
CONF_FILES_PERMS=	${EGDIR}/xscrabble.scores.dist ${VARBASE}/games/xscrabble.scores ${GAMEOWN} ${GAMEGRP} ${GAMEDATAMODE}
SETGIDGAME=		yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/xscrabble ${PREFIX}/bin
	${INSTALL_GAME} ${WRKSRC}/src/xscrab ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/games
	${INSTALL_DATA_DIR} ${PREFIX}/share/games/xscrabble
	${INSTALL_DATA} ${WRKSRC}/OSPD3.gz ${EGDIR}/
	${INSTALL_DATA} ${WRKSRC}/scrabble_permutations ${EGDIR}/
	${INSTALL_DATA} ${WRKSRC}/xscrabble.scores ${EGDIR}/xscrabble.scores.dist
	${INSTALL_DATA} ${WRKSRC}/XScrabble.ad ${PREFIX}/lib/X11/app-defaults/XScrabble

.include "../../x11/libXaw/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.include "../../x11/libXp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
