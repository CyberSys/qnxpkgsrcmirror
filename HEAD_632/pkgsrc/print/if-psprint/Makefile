# $NetBSD: Makefile,v 1.20 2007/01/07 09:14:09 rillig Exp $
#

DISTNAME=	if-psprint-1.7
PKGREVISION=	2
CATEGORIES=	print
MASTER_SITES=	http://www.mono.org/abs/tools/if-psprint/

MAINTAINER=	abs@NetBSD.org
HOMEPAGE=	http://www.mono.org/abs/tools/if-psprint/
COMMENT=	Print text or postscript to arbitrary printer, can use smb

DEPENDS+=	enscript>=1.6.3nb1:../../print/enscript

USE_TOOLS+=	gs:run perl:run

INSTALLATION_DIRS=	libexec ${PKGMANDIR}/man1

do-build:
	${SED} -e 's|/usr/local|${PREFIX}|g'		\
		< ${WRKSRC}/if-psprint.pl		\
		> ${WRKSRC}/if-psprint
	pod2man ${WRKSRC}/if-psprint > ${WRKSRC}/if-psprint.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/if-psprint ${PREFIX}/libexec/if-psprint
	${INSTALL_MAN} ${WRKSRC}/if-psprint.1 ${PREFIX}/${PKGMANDIR}/man1/if-psprint.1

.include "../../mk/bsd.pkg.mk"
