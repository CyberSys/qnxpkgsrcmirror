# $NetBSD: Makefile,v 1.1.1.1 2009/08/02 19:49:16 minskim Exp $
#

PKGNAME=	${DISTNAME:S/lua-/${LUA_PKGPREFIX}-/}
DISTNAME=	lua-alt-getopt-0.6.0
CATEGORIES=	devel
MASTER_SITES=	http://luaforge.net/frs/download.php/4049/ \
		http://mova.org/~cheusov/pub/lua_alt_getopt/

MAINTAINER=	cheusov@tut.by
HOMEPAGE=	http://luaforge.net/projects/alt-getopt/
COMMENT=	getopt API for Lua similar to getopt_long(3) function
LICENSE=	mit

PKG_DESTDIR_SUPPORT=	user-destdir

USE_BSD_MAKEFILE=	yes

NO_BUILD=		yes
NO_CONFIGURE=		yes

INSTALLATION_DIRS+=	${LUA_LDIR}

INSTALL_MAKE_FLAGS+=	LUAMODDIR=${PREFIX}/${LUA_LDIR}

.include "../../lang/lua/module.mk"
.include "../../mk/bsd.pkg.mk"
