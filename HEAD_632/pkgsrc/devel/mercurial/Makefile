# $NetBSD: Makefile,v 1.15 2007/10/26 14:42:23 wiz Exp $
#

DISTNAME=	mercurial-0.9.5
CATEGORIES=	devel scm
MASTER_SITES=	http://www.selenic.com/mercurial/release/

MAINTAINER=	wiz@NetBSD.org
HOMEPAGE=	http://www.selenic.com/mercurial/wiki/index.cgi/Mercurial
COMMENT=	Fast, lightweight source control management system

BUILD_DEPENDS+=	xmlto-[0-9]*:../../textproc/xmlto
BUILD_DEPENDS+=	asciidoc-[0-9]*:../../textproc/asciidoc

PY_PATCHPLIST=	yes
PYDISTUTILSPKG=	yes
USE_TOOLS+=	gmake

PYTHON_VERSIONS_ACCEPTED=	24 23

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 ${PKGMANDIR}/man5

MAKE_ENV+=	PYTHONBIN=${PYTHONBIN:Q}

post-build:
	cd ${WRKSRC}/doc && ${MAKE_ENV} ${GMAKE} man

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/*.1  ${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_DATA} ${WRKSRC}/doc/*.5  ${PREFIX}/${PKGMANDIR}/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mercurial
	${INSTALL_DATA} ${WRKSRC}/README  ${PREFIX}/share/doc/mercurial

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
