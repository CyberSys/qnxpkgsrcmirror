# $NetBSD: Makefile,v 1.14 2008/03/04 18:12:59 jlam Exp $

DISTNAME=		libffm.0.28
PKGNAME=		libffm-0.28
PKGREVISION=		1
CATEGORIES=		math
MASTER_SITES=		ftp://ftp.unix-ag.org/user/nils/

MAINTAINER=		pkgsrc-users@NetBSD.org
COMMENT=		Fast alpha-optimized replacement for some libm routines

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake

ONLY_FOR_PLATFORM=	NetBSD-*-alpha

INSTALLATION_DIRS=	lib include

do-install:
	${INSTALL_DATA} ${WRKSRC}/libffm.a ${DESTDIR}${PREFIX}/lib/libffm.a
	${INSTALL_DATA} ${WRKSRC}/libffm.h ${DESTDIR}${PREFIX}/include/libffm.h
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/doc/libffm
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/share/doc/libffm

.include "../../mk/bsd.pkg.mk"
