# $NetBSD: Makefile,v 1.9 2007/01/07 09:14:10 rillig Exp $
#

DISTNAME=	sign-1.0.4
PKGREVISION=	2
CATEGORIES=	security
MASTER_SITES=	http://swapped.cc/sign/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://swapped.cc/sign/
COMMENT=	File signing and signature verification utility

USE_TOOLS+=	gmake

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/sign ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/sign.1 ${PREFIX}/${PKGMANDIR}/man1
	${LN} -sf ${PREFIX}/bin/sign ${PREFIX}/bin/unsign

.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
