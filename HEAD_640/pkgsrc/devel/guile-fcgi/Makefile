# $NetBSD: Makefile,v 1.18 2008/07/14 12:56:01 joerg Exp $

DISTNAME=	guile-fcgi-0.1
PKGREVISION=	7
CATEGORIES=	devel www
MASTER_SITES=	${MASTER_SITE_LOCAL}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	# AWOL since 2003
COMMENT=	Guile interface to FastCGI

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	YES

CONFIGURE_ARGS+=--with-fcgi-includes=${BUILDLINK_PREFIX.fcgi}/include
CONFIGURE_ARGS+=--with-fcgi-lib=${BUILDLINK_PREFIX.fcgi}/lib

do-build:
	${_PKG_SILENT}${_PKG_DEBUG}cd ${WRKSRC}/src && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} guile-fcgi.x
	${_PKG_SILENT}${_PKG_DEBUG}cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${BUILD_TARGET}

.include "../../lang/guile/buildlink3.mk"
.include "../../www/fcgi/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
