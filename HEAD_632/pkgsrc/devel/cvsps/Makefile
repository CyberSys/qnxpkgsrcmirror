# $NetBSD: Makefile,v 1.20 2007/02/17 20:59:48 wiz Exp $
#

DISTNAME=	cvsps-2.1
PKGREVISION=	1
CATEGORIES=	devel scm
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	schmonz@NetBSD.org
HOMEPAGE=	http://www.cobite.com/cvsps/
COMMENT=	Generates 'patchset' information from a CVS repository

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_TOOLS+=		gmake

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

LIBS.SunOS+=		-lnsl -lsocket
MAKE_ENV+=		LIBS=${LIBS:M*:Q}

.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
