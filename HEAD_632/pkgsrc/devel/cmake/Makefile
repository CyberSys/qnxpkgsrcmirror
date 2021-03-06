# $NetBSD: Makefile,v 1.32 2007/03/12 06:42:12 wiz Exp $

DISTNAME=	cmake-2.4.6
PKGREVISION=	3
CATEGORIES=	devel
MASTER_SITES=	http://www.cmake.org/files/v2.4/

MAINTAINER=	wiz@NetBSD.org
HOMEPAGE=	http://www.cmake.org/
COMMENT=	Cross platform make

USE_TOOLS+=		gmake
USE_LANGUAGES=		c c++
USE_NCURSES=		yes
GNU_CONFIGURE=		yes
CONFIGURE_HAS_MANDIR=	no
CONFIGURE_ARGS+=	--mandir=/${PKGMANDIR}
# to add /share; take care on major version bumps!
CONFIGURE_ARGS+=	--docdir=/share/doc/cmake-2.4
CONFIGURE_ARGS+=	--system-libs
BUILD_TARGET=		default_target

# as of 2.4.6, x11 and fortran tests fail in pkgsrc
TEST_TARGET=		test

SUBST_CLASSES+=		cmake
SUBST_STAGE.cmake=	pre-configure
SUBST_MESSAGE.cmake=	Fixing hard-coded prefix.
SUBST_FILES.cmake=	Modules/FindCurses.cmake Modules/FindX11.cmake
SUBST_SED.cmake=	-e "s|@prefix@|${PREFIX}|g"
SUBST_SED.cmake+=	-e "s|@x11base@|${X11BASE}|g"

post-extract:
	cp ${WRKSRC}/Modules/Platform/FreeBSD.cmake \
		${WRKSRC}/Modules/Platform/DragonFly.cmake

.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../textproc/xmlrpc-c/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
