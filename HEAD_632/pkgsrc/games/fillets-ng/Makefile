# $NetBSD: Makefile,v 1.15 2006/10/04 21:43:00 wiz Exp $
#

DISTNAME=	fillets-ng-0.7.3
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fillets/}

MAINTAINER=	salo@NetBSD.org
HOMEPAGE=	http://fillets.sourceforge.net/
COMMENT=	Puzzle game about witty fish saving the world sokoban style

DEPENDS+=	fillets-ng-data-0.7.1:../../games/fillets-ng-data

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++

SUBST_CLASSES+=		man
SUBST_STAGE.man=	post-patch
SUBST_FILES.man=	fillets.6
SUBST_MESSAGE.man=	Fixing documentation path in the manual page.
SUBST_SED.man=		"s,/usr/share/doc/fillets-ng/html/manual.html,${PREFIX}/share/doc/html/fillets-ng/manual.html,"

.include "../../audio/SDL_mixer/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../devel/SDL_ttf/buildlink3.mk"
.include "../../graphics/SDL_image/buildlink3.mk"
.include "../../lang/lua/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
