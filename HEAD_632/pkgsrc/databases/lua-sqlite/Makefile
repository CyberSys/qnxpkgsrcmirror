# $NetBSD: Makefile,v 1.9 2007/06/04 07:37:58 rillig Exp $
#

DISTNAME=	lsqlite_src
PKGNAME=	lua-sqlite-20030228
PKGREVISION=	5
CATEGORIES=	databases
MASTER_SITES=	http://lua-users.org/files/wiki_insecure/binary_modules/luasqlite/
EXTRACT_SUFX=	.zip

MAINTAINER=	pancake@phreaker.net
HOMEPAGE=	http://lua-users.org/wiki/LuaSqlite
COMMENT=	SQLite binding for LUA

WRKSRC=		${WRKDIR}

CFLAGS+=	-fPIC
LIBS+=		-llua -lsqlite

INSTALLATION_DIRS_FROM_PLIST=	yes

do-build:
	cd ${WRKSRC}; ${CC} -shared ${CFLAGS} ${LDFLAGS} lsqlite.c	\
		-o libluasqlite.so ${LIBS}

do-install:
	${INSTALL_DATA} ${WRKSRC}/libluasqlite.so ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/lua-sqlite
	${INSTALL_DATA} ${WRKSRC}/test.lua ${PREFIX}/share/examples/lua-sqlite

.include "../../databases/sqlite/buildlink3.mk"
.include "../../lang/lua/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
