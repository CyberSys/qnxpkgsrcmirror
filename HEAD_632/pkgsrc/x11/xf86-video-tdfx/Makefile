# $NetBSD: Makefile,v 1.2 2007/08/15 17:55:41 joerg Exp $
#

DISTNAME=	xf86-video-tdfx-1.3.0
CATEGORIES=	x11
MASTER_SITES=	http://xorg.freedesktop.org/releases/individual/driver/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	joerg@NetBSD.org
COMMENT=	Modular Xorg 3Dfx video driver

PKG_DESTDIR_SUPPORT=    user-destdir

CONFIGURE_ARGS+=	--enable-dri

USE_LIBTOOL=    yes
GNU_CONFIGURE=  yes
USE_TOOLS+=     pkg-config

.include "../../x11/modular-xorg-server/buildlink3.mk"
.include "../../x11/randrproto/buildlink3.mk"
.include "../../x11/renderproto/buildlink3.mk"
.include "../../x11/videoproto/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.include "../../x11/glproto/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
