# $NetBSD: Makefile,v 1.65 2009/07/18 20:35:27 wiz Exp $
#

DISTNAME=	pygtk-2.14.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/pygtk/gtk2/}
PKGREVISION=	1
CATEGORIES=	x11 python
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/pygtk/2.14/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	recht@NetBSD.org
HOMEPAGE=	http://www.pygtk.org/
COMMENT=	Python bindings for GTK+2

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=	${PYPKGPREFIX}-gtk<0.6.10

PY_PATCHPLIST=	YES
USE_LIBTOOL=	YES
PKGCONFIG_OVERRIDE+=	pygtk-2.0.pc.in
GNU_CONFIGURE=	YES
CONFIGURE_ENV+=	PYTHON=${PYTHONBIN:Q}
USE_TOOLS+=	gmake pkg-config
PLIST_VARS+=	py25

PYTHON_VERSIONS_ACCEPTED=	26 25 24

BUILDLINK_API_DEPENDS.pygobject+=	${PYPKGPREFIX}-gobject>=2.15.3
BUILDLINK_API_DEPENDS.gtk2+=		gtk2+>=2.16.0

.include "../../lang/python/extension.mk"
.include "../../lang/python/application.mk"

.include "../../devel/libglade/buildlink3.mk"
.include "../../graphics/py-cairo/buildlink3.mk"
.include "../../math/py-Numeric/buildlink3.mk"
.include "../../devel/py-gobject/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
