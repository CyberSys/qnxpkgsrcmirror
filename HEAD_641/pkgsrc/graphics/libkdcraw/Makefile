# $NetBSD: Makefile,v 1.13 2009/05/19 08:59:17 wiz Exp $
#

DISTNAME=	libkdcraw-0.1.9
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kipi/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.kipi-plugins.org/
COMMENT=	C++ interface around dcraw
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config msgfmt
USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes

# needed by **** libjpeg detection
CONFIGURE_ARGS+=	--includedir=${BUILDLINK_PREFIX.jpeg:Q}/include

PKGCONFIG_OVERRIDE+=	libkdcraw/libkdcraw.pc.in

BUILDLINK_API_DEPENDS.qt3-libs+=	qt3-libs>=3.3
.include "../../x11/qt3-libs/buildlink3.mk"
.include "../../x11/qt3-tools/buildlink3.mk"
.include "../../x11/kdelibs3/buildlink3.mk"
BUILDLINK_API_DEPENDS.lcms+=		lcms>=1.14
.include "../../graphics/lcms/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
