# $NetBSD: Makefile,v 1.10 2008/06/12 02:14:38 joerg Exp $
#

DISTNAME=	6tunnel-0.09
CATEGORIES=	net
MASTER_SITES=	ftp://amba.bydg.pdi.net/pub/wojtekka/

MAINTAINER=	zuntum@NetBSD.org
COMMENT=	v4/v6 protocol translation

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/6tunnel

NOT_FOR_PLATFORM+= Interix-*-* # no IPv6 support

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "SunOS"
LDFLAGS+=	-lsocket -lnsl
.endif

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-build:
	${CC} ${CFLAGS} -o ${WRKSRC}/6tunnel ${WRKSRC}/6tunnel.c ${LDFLAGS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/6tunnel ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/6tunnel.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../mk/bsd.pkg.mk"
