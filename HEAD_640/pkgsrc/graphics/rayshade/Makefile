# $NetBSD: Makefile,v 1.24 2008/09/01 06:57:58 dholland Exp $

DISTNAME=	rayshade.4.0
PKGNAME=	rayshade-4.0
PKGREVISION=	4
CATEGORIES=	graphics
MASTER_SITES=	ftp://graphics.stanford.edu/pub/rayshade/	\
		ftp://ftp.princeton.edu/pub/Graphics/rayshade.4.0/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Extensible system for creating ray-traced images

PKG_DESTDIR_SUPPORT=	user-destdir
NOT_FOR_BULK_PLATFORM=	HPUX-*-*

HAS_CONFIGURE=		yes
CONFIGURE_SCRIPT=	./Configure
BUILD_TARGET=
INSTALLATION_DIRS=	bin lib share/doc/rayshade share/examples/rayshade

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rayshade/rayshade ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/libray/libray.a ${DESTDIR}${PREFIX}/lib
	${RANLIB} ${DESTDIR}${PREFIX}/lib/libray.a
	${INSTALL_DATA} ${WRKSRC}/libshade/libshade.a ${DESTDIR}${PREFIX}/lib
	${RANLIB} ${DESTDIR}${PREFIX}/lib/libshade.a
	${INSTALL_DATA} ${WRKSRC}/Doc/Guide/* \
		${DESTDIR}${PREFIX}/share/doc/rayshade
	${INSTALL_DATA} ${WRKSRC}/Doc/quickref.txt \
		${DESTDIR}${PREFIX}/share/doc/rayshade
	${INSTALL_DATA} ${WRKSRC}/Examples/* \
		${DESTDIR}${PREFIX}/share/examples/rayshade

.include "../../graphics/urt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
