# $NetBSD: Makefile,v 1.10 2007/02/22 19:01:26 wiz Exp $
#

DISTNAME=	luaexpat-1.0a
PKGNAME=	${DISTNAME:S/lua/lua-/}
PKGREVISION=	4
CATEGORIES=	textproc
MASTER_SITES=	http://www.keplerproject.org/luaexpat/

MAINTAINER=	pancake@phreaker.net
HOMEPAGE=	http://www.keplerproject.org/luaexpat/
COMMENT=	XML parser for LUA based on expat

USE_TOOLS+=	gmake
MAKE_FILE=	makefile

INSTALLATION_DIRS=	lib

do-install:
	${INSTALL_DATA} ${WRKSRC}/liblxp.so ${PREFIX}/lib/liblualxp.so
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lua
	${INSTALL_DATA} ${WRKSRC}/test.lua ${PREFIX}/share/examples/lua/lxp.lua

.include "../../textproc/expat/buildlink3.mk"
.include "../../lang/lua/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
