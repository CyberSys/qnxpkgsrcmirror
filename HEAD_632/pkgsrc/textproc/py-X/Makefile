# $NetBSD: Makefile,v 1.4 2007/11/08 23:47:03 joerg Exp $
#

DISTNAME=	PyX-0.9
PKGNAME=	${PYPKGPREFIX}-X-0.9
PKGREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyx/}

DEPENDS+=	teTeX-bin-[0-9]*:../../print/teTeX3-bin

PYTHON_VERSIONS_ACCEPTED=	24 23
PYBINMODULE=	yes
PYDISTUTILSPKG=	yes

MAINTAINER=	adrianp@NetBSD.org
HOMEPAGE=	http://pyx.sourceforge.net/
COMMENT=	Package for the creation of PostScript and PDF files

CONF_FILES=	${PREFIX}/share/examples/PyX/pyxrc \
		${PKG_SYSCONFDIR}/pyxrc

SUBST_CLASSES+=		conf
SUBST_STAGE.conf=	post-patch
SUBST_MESSAGE.conf=	Fixing configuration files.
SUBST_FILES.conf=	setup.py
SUBST_SED.conf+=	-e "s|@PKG_SYSCONFDIR@|${PKG_SYSCONFDIR}|g"

pre-install:
	${CP} ${WRKSRC}/pyxrc ${WRKSRC}/pyxrc.default
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/PyX

post-install:
	${CP} ${WRKSRC}/pyxrc.default ${PREFIX}/share/examples/PyX/pyxrc

.include "../../lang/python/extension.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
