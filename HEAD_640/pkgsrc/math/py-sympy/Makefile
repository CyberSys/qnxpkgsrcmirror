# $NetBSD: Makefile,v 1.4 2008/06/26 15:55:18 drochner Exp $
#

DISTNAME=	sympy-0.5.15
PKGNAME=	${PYPKGPREFIX}-sympy-0.5.15
CATEGORIES=	math
MASTER_SITES=	http://sympy.googlecode.com/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://code.google.com/p/sympy/
COMMENT=	Python library for symbolic mathematics

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# none
PYDISTUTILSPKG=	yes
PYTHON_VERSIONS_ACCEPTED= 24 25
PLIST_SUBST+=	PYVERSSUFFIX=${PYVERSSUFFIX}

post-extract:
	${CP} ${WRKSRC}/bin/isympy ${WRKSRC}/bin/isympy${PYVERSSUFFIX}
	${CP} ${WRKSRC}/doc/man/isympy.1 \
		${WRKSRC}/doc/man/isympy${PYVERSSUFFIX}.1

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
