# $NetBSD: Makefile,v 1.2 2008/05/24 21:45:16 tnn Exp $
#

DISTNAME=		resourceproto-1.0.2
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_XORG:=proto/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		Resource extension headers from X.org

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS+=		resourceext-[0-9]*

GNU_CONFIGURE=		yes
PKGCONFIG_OVERRIDE+=	resourceproto.pc.in
USE_LANGUAGES=		# empty

.include "../../mk/bsd.pkg.mk"
