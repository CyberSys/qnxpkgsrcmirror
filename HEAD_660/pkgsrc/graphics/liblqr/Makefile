# $NetBSD: Makefile,v 1.8 2012/10/06 14:11:05 asau Exp $
#

DISTNAME=		liblqr-1-0.4.1
PKGNAME=		liblqr-0.4.1
PKGREVISION=		5
CATEGORIES=		graphics
MASTER_SITES=		http://liblqr.wikidot.com/local--files/en:download-page/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://liblqr.wikidot.com/
COMMENT=		Content-aware image resizing library
# examples are GPL, library is LGPL, AFAICT
LICENSE=		gnu-gpl-v3 AND gnu-lgpl-v3

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config
USE_LIBTOOL=		yes
PKGCONFIG_OVERRIDE=	lqr-1.pc.in

.include "../../devel/glib2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
