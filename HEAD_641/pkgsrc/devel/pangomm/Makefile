# $NetBSD: Makefile,v 1.5 2009/04/15 03:50:17 reed Exp $

DISTNAME=	pangomm-2.24.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/pangomm/2.24/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://www.gtkmm.org/
COMMENT=	C++ bindings for pangomm

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS+=		gtkmm<=2.13.5

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake pkg-config perl:run
PKGCONFIG_OVERRIDE+=	${WRKSRC}/pango/pangomm-1.4.pc.in
GNU_CONFIGURE=		yes

BUILDLINK_API_DEPENDS.glibmm+=	glibmm>=2.14.1
.include "../../devel/glibmm/buildlink3.mk"
BUILDLINK_API_DEPENDS.pango+=	pango>=1.23.0
.include "../../devel/pango/buildlink3.mk"
.include "../../graphics/cairomm/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
