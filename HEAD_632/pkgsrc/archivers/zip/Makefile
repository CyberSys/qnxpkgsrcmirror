# $NetBSD: Makefile,v 1.53 2007/06/05 06:02:46 wiz Exp $

DISTNAME=	zip232
PKGNAME=	zip-2.32
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.info-zip.org/pub/infozip/src/
EXTRACT_SUFX=	.tgz

MAINTAINER=	wiz@NetBSD.org
HOMEPAGE=	http://www.info-zip.org/pub/infozip/Zip.html
COMMENT=	Create/update ZIP files compatible with pkzip

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

MAKE_FILE=	unix/Makefile
WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}

.include "../../mk/bsd.prefs.mk"

MAKE_FLAGS+=	LOCAL_ZIP=${CFLAGS:M*:Q}
MAKE_FLAGS+=	LFLAGS1=${_STRIPFLAG_CC:Q}
.if ${OPSYS} == "NetBSD" && ${MACHINE_ARCH} == "powerpc"
CFLAGS+=	-O0
.endif

.include "../../mk/compiler.mk"

.if !empty(CC_VERSION:Mgcc*)
BUILD_TARGET=	generic_gcc
.else
BUILD_TARGET=	generic
CFLAGS+=	-O
.endif

.if ${OPSYS} == "Linux"
CFLAGS+=	-DHAVE_DIRENT_H
.endif

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	cd ${WRKSRC} && \
	    ${INSTALL_PROGRAM} zip zipnote zipsplit zipcloak ${DESTDIR}${PREFIX}/bin
	cd ${WRKSRC}/man && \
	    ${INSTALL_MAN} zip.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${LN} -f -s zip.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/zipcloak.1
	${LN} -f -s zip.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/zipnote.1
	${LN} -f -s zip.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/zipsplit.1

.include "../../mk/bsd.pkg.mk"
