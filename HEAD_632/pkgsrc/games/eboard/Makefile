# $NetBSD: Makefile,v 1.5 2007/03/19 01:27:17 rillig Exp $
#

DISTNAME=		eboard-1.0.3
CATEGORIES=		games
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=eboard/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		rillig@NetBSD.org
HOMEPAGE=		http://eboard.sourceforge.net/
COMMENT=		Graphical user interface for playing chess

USE_PKGLOCALEDIR=	yes
HAS_CONFIGURE=		yes
CONFIGURE_ENV+=		PKGMANDIR=${PKGMANDIR}
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--man-prefix=${PREFIX}/${PKGMANDIR}
USE_LANGUAGES=		c c++
USE_TOOLS+=		perl gmake pkg-config
CONFIG_SHELL=		perl
REPLACE_PERL+=		configure
LDFLAGS+=		${LIBOSSAUDIO}

SUBST_CLASSES+=		mf
SUBST_STAGE.mf=		post-configure
SUBST_MESSAGE.mf=	Fixing autogenerated Makefile
SUBST_FILES.mf=		Makefile
SUBST_SED.mf=		-e 's/^CXXFLAGS.*=/CXXFLAGS += $${CPPFLAGS} /'
SUBST_SED.mf+=		-e 's/^LDFLAGS.*=/LDFLAGS += $${CXXFLAGS}/'

.include "../../mk/oss.buildlink3.mk"
.include "../../graphics/imlib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
