# $NetBSD: Makefile,v 1.15 2008/11/10 17:21:35 wiz Exp $

DISTNAME=	xemeraldia-0.3
PKGNAME=	xemeraldia-0.31
PKGREVISION=	4
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/Usenet/fj.sources/1995/mar/

PATCH_SITES=	ftp://ftp.lab.kdd.co.jp/Usenet/fj.sources/1995/apr/
PATCHFILES=	xemeraldia-0.3to0.31.patch.gz
PATCH_DIST_STRIP=	-p1

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Game of breaking blocks

PKG_DESTDIR_SUPPORT=	user-destdir

USE_IMAKE=	yes
BUILD_TARGET=	xemeraldia

GAMES_DIR=	share/games
MAKE_ENV+=	GAMES_DIR=${GAMES_DIR:Q}
PLIST_SUBST=	GAMES_DIR=${GAMES_DIR:Q}

CONF_FILES_PERMS+=	/dev/null ${PREFIX}/${GAMES_DIR}/xemeraldia/xemeraldia.scores \
			${ROOT_USER} games 664

.include "../../x11/libXaw/buildlink3.mk"
.include "../../x11/libXp/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
