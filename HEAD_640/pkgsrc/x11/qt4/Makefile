# $NetBSD: Makefile,v 1.4 2008/06/15 09:51:58 joerg Exp $

DISTNAME=	qt4-${QTVERSION}
CATEGORIES=	x11
MASTER_SITES=	# none

COMMENT=	"meta-package" for the QT GUI C++ toolkit

META_PACKAGE=	yes

.include "Makefile.common"

DEPENDS+=	qt4-libs-${QTVERSION}{,nb[0-9]*}:../../x11/qt4-libs
DEPENDS+=	qt4-tools-${QTVERSION}{,nb[0-9]*}:../../x11/qt4-tools
DEPENDS+=	qt4-docs-${QTVERSION}{,nb[0-9]*}:../../x11/qt4-docs

.include "../../mk/bsd.pkg.mk"
