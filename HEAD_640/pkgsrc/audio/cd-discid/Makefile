# $NetBSD: Makefile,v 1.13 2008/03/02 06:10:31 jlam Exp $

DISTNAME=	cd-discid_0.9.orig
PKGNAME=	cd-discid-0.9
CATEGORIES=	audio
MASTER_SITES=	http://lly.org/~rcw/cd-discid/

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Read CD to obtain CDDB discid information

NOT_FOR_PLATFORM=	Interix-*-*

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-build:
	cd ${WRKSRC} && ${CC} -O -o cd-discid cd-discid.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cd-discid ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/cd-discid.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../mk/bsd.pkg.mk"
