# $NetBSD: Makefile,v 1.1.1.1 2006/11/15 14:57:54 joerg Exp $
#

DISTNAME=		font-mutt-misc-1.0.0
CATEGORIES=		fonts
MASTER_SITES=		http://xorg.freedesktop.org/releases/individual/font/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		100dpi PCF versions of the ClearlyU fonts

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake pkg-config bdftopcf ucs2any

FONTS_DIRS.x11=		lib/X11/fonts/misc

INSTALLATION_DIRS=	share/doc/font-mutt-misc

post-install:
	${INSTALL_DATA} ${WRKSRC}/COPYING ${DESTDIR}${PREFIX}/share/doc/font-mutt-misc

.include "../../fonts/font-util/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
