# $NetBSD: Makefile,v 1.4 2009/01/23 21:14:17 jschauma Exp $
#

DISTNAME=	bbkeys-0.9.0
PKGNAME=	bbkeys09-0.9.0
CATEGORIES=	x11 wm
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bbkeys/}

MAINTAINER=	pkgsrc-users@@NetBSD.org
HOMEPAGE=	http://bbkeys.sourceforge.net/
COMMENT=	General X Window keygrabber

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS+=	bbkeys<=0.9

GNU_CONFIGURE=	YES
USE_LANGUAGES=	c c++
USE_TOOLS+=	perl:run pkg-config

BUILDLINK_DEPMETHOD.libXt?=	build

.include "../../wm/blackbox70/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
