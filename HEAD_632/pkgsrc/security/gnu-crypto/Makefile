# $NetBSD: Makefile,v 1.9 2007/03/19 16:40:28 tv Exp $
#

DISTNAME=		gnu-crypto-2.0.1-bin
PKGNAME=		${DISTNAME:S/-bin$//}
PKGREVISION=		1
CATEGORIES=		security
MASTER_SITES=		ftp://ftp.gnupg.org/GnuPG/gnu-crypto/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.gnu.org/software/gnu-crypto/
COMMENT=		GPL implementation of the Java Crypto Extensions

USE_JAVA2=		yes
INSTALLATION_DIRS=	info

do-build: # do nothing

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/java
	${INSTALL_DATA_DIR} ${PREFIX}/lib/java/gnu-crypto
	${INSTALL_DATA} ${WRKSRC}/lib/*.jar ${PREFIX}/lib/java/gnu-crypto/
	${INSTALL_MAN} ${WRKSRC}/docs/*.info* ${PREFIX}/info/

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
