# $NetBSD: Makefile,v 1.2 2009/01/07 23:42:04 wiz Exp $
#

DISTNAME=	fotoxx-5.8
CATEGORIES=	graphics
MASTER_SITES=	http://kornelix.squarespace.com/storage/downloads/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://kornelix.squarespace.com/fotoxx/
COMMENT=	Program for editing image files from a digital camera

DEPENDS+=	exiv2-[0-9]*:../../graphics/exiv2
DEPENDS+=	xdg-utils-[0-9]*:../../misc/xdg-utils

WRKSRC=		${WRKDIR}/fotoxx
USE_LANGUAGES=	c++
USE_TOOLS+=	gmake pkg-config

BUILD_TARGET=	fotoxx

.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
