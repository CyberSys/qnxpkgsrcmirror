# $NetBSD: Makefile,v 1.2 2008/01/27 05:13:01 heinz Exp $
#

DISTNAME=	SDL_Pango-0.1.2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlpango/}

MAINTAINER=	heinz@NetBSD.org
HOMEPAGE=	http://sdlpango.sourceforge.net/
COMMENT=	Connects the text rendering engine of GNOME 2.x. with SDL

#LICENSE=	gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config

PKGCONFIG_OVERRIDE+=	SDL_Pango.pc.in

CONFIGURE_ARGS+=	--with-sdl-prefix=${LOCALBASE}

.include "../../devel/pango/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
