# $NetBSD: Makefile,v 1.28 2007/07/28 00:43:22 joerg Exp $

DISTNAME=	xteddy-2.0.1
PKGREVISION=	10
CATEGORIES=	x11 games
MASTER_SITES=	http://staffwww.itn.liu.se/~stegu/xteddy/

MAINTAINER=	johnam@mail.kemper.org
HOMEPAGE=	http://staffwww.itn.liu.se/~stegu/xteddy/
COMMENT=	Teddy bear for your desktop

CONFLICTS+=	xteddy-1.*

GNU_CONFIGURE=	yes

USE_TOOLS+=	ksh:run

REPLACE_KSH+=	xtoys

SUBST_CLASSES+=		prefix
SUBST_STAGE.prefix=	pre-configure
SUBST_FILES.prefix=	configure xteddy_test xtoys
SUBST_SED.prefix=	-e 's|@PREFIX@|${PREFIX}|g'

.include "../../graphics/imlib/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
