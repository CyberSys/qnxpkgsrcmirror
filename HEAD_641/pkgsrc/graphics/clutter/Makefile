# $NetBSD: Makefile,v 1.3 2009/05/19 08:59:16 wiz Exp $
#

DISTNAME=	clutter-0.8.8
CATEGORIES=	graphics
MASTER_SITES=	http://www.clutter-project.org/sources/clutter/0.8/

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://clutter-project.org/
COMMENT=	Open GL based interactive canvas library
LICENSE=	gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config

CONFIGURE_ARGS+=	--with-json=check

PKGCONFIG_OVERRIDE+=	clutter/x11/clutter-x11.pc.in
PKGCONFIG_OVERRIDE+=	clutter/win32/clutter-win32.pc.in
PKGCONFIG_OVERRIDE+=	clutter.pc.in

.include "options.mk"

TEST_TARGET=	check

BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.14.0
.include "../../devel/glib2/buildlink3.mk"
BUILDLINK_API_DEPENDS.pango+=	pango>=1.18.0
.include "../../devel/pango/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
