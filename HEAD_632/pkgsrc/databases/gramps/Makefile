# $NetBSD: Makefile,v 1.31 2007/09/21 13:03:30 wiz Exp $
#

DISTNAME=		gramps-1.0.11
PKGREVISION=		10
CATEGORIES=		databases
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gramps/}

MAINTAINER=	drochner@NetBSD.org
HOMEPAGE=	http://gramps-project.org/
COMMENT=	Genealogical Research and Analysis Management Programming System

DEPENDS+=	yelp>=2.2:../../misc/yelp

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		msgconv msgfmt pkg-config

CONFIGURE_ENV+=		PYTHON=${PYTHONBIN:Q}
PYTHON_VERSIONS_ACCEPTED=	24

MESSAGE_SUBST+=		PYPKGPREFIX=${PYPKGPREFIX}

.include "../../sysutils/gnome-vfs/buildlink3.mk"
.include "../../textproc/scrollkeeper/omf.mk"
.include "../../graphics/py-imaging/buildlink3.mk"
.include "../../textproc/py-xml/buildlink3.mk"
.include "../../x11/py-gtk2/buildlink3.mk"
.include "../../x11/py-gnome2/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
