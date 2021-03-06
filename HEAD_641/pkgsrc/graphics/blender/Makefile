# $NetBSD: Makefile,v 1.65 2009/04/28 21:36:42 zafer Exp $

DISTNAME=	blender-2.45
PKGREVISION=	4
CATEGORIES=	graphics
MASTER_SITES=	http://download.blender.org/source/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.blender.org/
COMMENT=	Fully integrated 3D graphics creation suite

USE_TOOLS+=		gmake
USE_LANGUAGES=		c c++
USE_CMAKE=		yes
CMAKE_ARG_PATH=		..
CONFIGURE_DIRS=		_build
PKG_DESTDIR_SUPPORT=	user-destdir

LDFLAGS+=		-lcrypto

.include "options.mk"

INSTALLATION_DIRS=	bin

CMAKE_ARGS+=	-DFREETYPE_INC:PATH=${BUILDLINK_PREFIX.freetype2}/include/freetype2
CMAKE_ARGS+=	-DSDL_INCLUDE_DIR:PATH=${BUILDLINK_PREFIX.SDL}/include/SDL

CHECK_INTERPRETER_SKIP= share/blender/scripts/*.py share/blender/scripts/*/*.py

pre-configure:
	${MKDIR} ${WRKSRC}/_build

WRKSRCBIN=	${WRKSRC}/_build/bin

post-build:
	${CP} -f ${WRKSRCBIN}/blender ${WRKSRCBIN}/blender-bin
	${SED} -e "s|__PREFIX__|${PREFIX}|g" files/blender > ${WRKSRCBIN}/blender
	${CHMOD} +x ${WRKSRCBIN}/blender
	${CHMOD} -x ${WRKSRCBIN}/.blender/scripts/*.py
	${CHMOD} -x ${WRKSRCBIN}/.blender/scripts/*/*.py

do-install:
	${INSTALL_PROGRAM} ${WRKSRCBIN}/blender-bin ${DESTDIR}${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRCBIN}/blender ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/blender
	${CP} -R ${WRKSRCBIN}/.blender/scripts \
		${DESTDIR}${PREFIX}/share/blender/
	${CP} -R ${WRKSRCBIN}/.blender/locale \
		${DESTDIR}${PREFIX}/share/blender/
	${INSTALL_DATA} ${WRKSRCBIN}/.blender/.Blanguages \
		${DESTDIR}${PREFIX}/share/blender
	${INSTALL_DATA} ${WRKSRCBIN}/.blender/.bfont.ttf \
		${DESTDIR}${PREFIX}/share/blender
	${INSTALL_DATA} ${WRKSRCBIN}/BlenderQuickStart.pdf \
		${DESTDIR}${PREFIX}/share/blender

.include "../../devel/SDL/buildlink3.mk"
.include "../../graphics/Mesa/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"

.include "../../lang/python/pyversion.mk"

.include "../../mk/bsd.pkg.mk"
