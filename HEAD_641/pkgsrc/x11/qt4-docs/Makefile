# $NetBSD: Makefile,v 1.5 2009/07/22 09:40:37 wiz Exp $

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../x11/qt4-libs/Makefile.common"

PKGNAME=	qt4-docs-${QTVERSION}
COMMENT=	Documentation for the QT C++ X GUI toolkit

NO_CONFIGURE=		yes
NO_BUILD=		yes
PLIST_SRC=		${WRKDIR}/PLIST

INSTALLATION_DIRS=	${QTPREFIX}

do-install:
	cp -R ${WRKSRC}/doc ${DESTDIR}${QTPREFIX}
	cd ${DESTDIR}${PREFIX}; find qt4/doc -type f -print > ${WRKDIR}/PLIST

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
