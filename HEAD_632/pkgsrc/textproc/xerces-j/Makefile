# $NetBSD: Makefile,v 1.26 2006/10/04 22:01:00 wiz Exp $
#
# Note: we currently use the pre-built (-bin) distribution of Xerces-J,
# because although Xerces runs fine under JDK 1.1, JDK 1.2 or greater is
# required to build it.

DISTNAME=	Xerces-J-bin.1.2.0
PKGNAME=	xerces-j-1.2.0
PKGREVISION=	1
CATEGORIES=	textproc www
MASTER_SITES=	http://xerces.apache.org/dist/xerces-j/

MAINTAINER=	jwise@NetBSD.org
HOMEPAGE=	http://xerces.apache.org/xerces-j/
COMMENT=	The Apache Project's validating XML parser with DOM and SAX support

WRKSRC=		${WRKDIR}/xerces-1_2_0
USE_JAVA=	run
NO_CONFIGURE=	yes
NO_BUILD=	yes

post-extract:
	chmod -R u+w,go-w ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/java
	${INSTALL_DATA} ${WRKSRC}/xerces.jar ${PREFIX}/lib/java
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/java/xerces
	cd ${WRKSRC}/docs && ${PAX} -rw -pp . ${PREFIX}/share/doc/java/xerces
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/java/xerces
	${INSTALL_DATA} ${WRKSRC}/xercesSamples.jar ${PREFIX}/share/examples/java/xerces
	cd ${WRKSRC}/data && ${PAX} -rw -pp . ${PREFIX}/share/examples/java/xerces

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
