# $NetBSD: Makefile,v 1.3 2007/03/20 15:10:01 joerg Exp $

DISTNAME=	xf86-video-wsfb-0.2.1
CATEGORIES=	x11
MASTER_SITES=	http://xorg.freedesktop.org/releases/individual/driver/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	reed@NetBSD.org
COMMENT=	Modular Xorg wsdisplay framebuffer video driver

ONLY_FOR_PLATFORM=	NetBSD-*-* OpenBSD-*-*

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=	YES
GNU_CONFIGURE=	YES
USE_TOOLS+=	pkg-config

.include "../../x11/modular-xorg-server/buildlink3.mk"
.include "../../x11/xproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
