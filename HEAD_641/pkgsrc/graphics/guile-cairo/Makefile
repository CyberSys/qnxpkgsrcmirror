# $NetBSD: Makefile,v 1.5 2009/05/20 00:58:18 wiz Exp $
#

DISTNAME=	guile-cairo-1.4.0
PKGREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	http://download.gna.org/guile-cairo/

MAINTAINER=	gdt@NetBSD.org
HOMEPAGE=	http://home.gna.org/guile-cairo/
COMMENT=	Guile wrapper for cairo

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

INFO_FILES=	YES

PKGCONFIG_OVERRIDE+=	guile-cairo.pc.in

.include "../../graphics/cairo/buildlink3.mk"
.include "../../lang/guile/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
