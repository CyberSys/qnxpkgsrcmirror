# $NetBSD: Makefile,v 1.2 2009/06/07 21:12:11 joerg Exp $

PKGNAME=	${DISTNAME:S/evas/evas-buffer/}

COMMENT=	Evas buffer engine

EVAS_ENGINES=	buffer

.include "../../graphics/evas/Makefile.common"

BUILD_DIRS=	src/modules/engines/buffer
MAKE_FLAGS+=	module_la_LIBADD=${BUILDLINK_PREFIX.evas}/lib/libevas.la \
		module_la_DEPENDENCIES=

INSTALLATION_DIRS+=	lib/pkgconfig
PKGCONFIG_OVERRIDE=	evas-software-buffer.pc.in

.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/evas/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"

post-install:
	${INSTALL_DATA} ${WRKSRC}/evas-software-buffer.pc \
		${DESTDIR}${PREFIX}/lib/pkgconfig

.include "../../mk/bsd.pkg.mk"
