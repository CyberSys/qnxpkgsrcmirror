# $NetBSD: Makefile,v 1.8 2006/02/05 23:09:10 joerg Exp $
#

DISTNAME=	mkfontalias.py
PKGNAME=	mkfontalias-20000521
PKGREVISION=	1
CATEGORIES=	fonts
MASTER_SITES=	http://home.c2i.net/dark/
EXTRACT_SUFX=	# empty

MAINTAINER=	rxg@NetBSD.org
HOMEPAGE=	http://home.c2i.net/dark/linux.html#fuzzy
COMMENT=	Creates a fonts.alias from the fonts.dir for TrueType fonts

WRKSRC=		${WRKDIR}
EXTRACT_ONLY=	# empty
NO_BUILD=	yes

PYTHON_PATCH_SCRIPTS=	${DISTNAME}
INSTALLATION_DIRS=	bin

do-extract:
	${CP} ${_DISTDIR}/${DISTNAME} ${WRKSRC}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mkfontalias.py ${PREFIX}/bin/mkfontalias

.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
