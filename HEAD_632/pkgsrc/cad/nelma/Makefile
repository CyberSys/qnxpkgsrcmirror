# $NetBSD: Makefile,v 1.2 2007/03/02 12:20:47 dmcmahill Exp $
#

DISTNAME=	nelma-3.0
PKGREVISION=	1
CATEGORIES=	cad
MASTER_SITES=	http://www.tablix.org/~avian/nelma/releases/

MAINTAINER=	dmcmahill@NetBSD.org
HOMEPAGE=	http://www.tablix.org/~avian/nelma/
COMMENT=	Circuit board capacitance extraction tool

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_TOOLS+=	pkg-config


.include "../../devel/confuse/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
