# $NetBSD: Makefile,v 1.16 2007/03/19 16:40:26 tv Exp $
#

DISTNAME=	nulibdist-203
PKGNAME=	nulib2-2.0.3
CATEGORIES=	archivers
MASTER_SITES=	http://www.nulib.com/downloads/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.nulib.com/
COMMENT=	Handles Apple II ShrinkIt (NuFX) file/disk archives

PKG_INSTALLATION_TYPES=	overwrite pkgviews

WRKSRC=		${WRKDIR}/${DISTNAME:S/dist/2/}
GNU_CONFIGURE=	yes

.include "../../mk/bsd.prefs.mk"

CONFIGURE_ARGS+=--cache-file=${WRKDIR}/config.cache

CFLAGS+=	-D__unix__

.include "../../mk/bsd.pkg.mk"
