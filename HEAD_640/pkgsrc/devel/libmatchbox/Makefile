# $NetBSD: Makefile,v 1.19 2008/07/14 12:56:02 joerg Exp $
#

DISTNAME=	libmatchbox-1.9
CATEGORIES=	devel
MASTER_SITES=	http://projects.o-hand.com/matchbox/sources/libmatchbox/1.9/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://projects.o-hand.com/matchbox/
COMMENT=	Library for matchbox window manager for computers with small displays

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config

.include "../../graphics/png/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
