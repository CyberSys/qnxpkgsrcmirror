# $NetBSD: Makefile,v 1.18 2013/02/06 23:21:43 jperkin Exp $

DISTNAME=	postal-0.70
PKGREVISION=	1
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.coker.com.au/postal/
EXTRACT_SUFX=	.tgz

MAINTAINER=	david@silicium.ath.cx
HOMEPAGE=	http://www.coker.com.au/postal/
COMMENT=	Tool for benchmarking SMTP/POP servers
LICENSE=	gnu-gpl-v3

PKG_INSTALLATION_TYPES=	overwrite pkgviews

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake

.include "../../security/openssl/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
