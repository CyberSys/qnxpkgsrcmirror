# $NetBSD: Makefile,v 1.5 2014/01/27 18:42:11 wiz Exp $

DISTNAME=	python-ecdsa-0.10
PKGNAME=	${PYPKGPREFIX}-ecdsa-0.10
EGG_NAME=	ecdsa-0.0.0
PKGREVISION=	1
CATEGORIES=	security
MASTER_SITES=	https://github.com/warner/python-ecdsa/archive/

MAINTAINER=	gls@NetBSD.org
HOMEPAGE=	https://github.com/warner/python-ecdsa/
COMMENT=	Easy-to-use implementation of ECDSA cryptography
LICENSE=	mit

WRKSRC=		${WRKDIR}/python-ecdsa-${DISTNAME}
USE_LANGUAGES=	# none

REPLACE_PYTHON=	ecdsa/ecdsa.py ecdsa/ellipticcurve.py ecdsa/numbertheory.py

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
