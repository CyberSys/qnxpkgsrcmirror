# $NetBSD: Makefile,v 1.10 2006/03/21 06:00:50 jlam Exp $

DISTNAME=	dtd
PKGNAME=	tei-4
PKGREVISION=	5
CATEGORIES=	textproc
MASTER_SITES=	http://www.tei-c.org/P4X/DTD/
EXTRACT_SUFX=	.zip

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://www.tei-c.org/
COMMENT=	DTD of the Text Encoding Initiative

WRKSRC=		${WRKDIR}/dtd
DIST_SUBDIR=	${PKGNAME_NOREV}nb3
NO_CONFIGURE=	YES
NO_BUILD=	YES

DTDDIR=		${LOCALBASE}/share/xml/tei

XML_CATALOGS=	${DTDDIR}/teicatalog.xml

pre-install:
	${INSTALL_DATA_DIR} ${DTDDIR}

do-install:
	${INSTALL_DATA} ${WRKSRC}/*.dtd ${DTDDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ent ${DTDDIR}
	${INSTALL_DATA} ${WRKSRC}/*.dec ${DTDDIR}
	${INSTALL_DATA} ${WRKSRC}/teicatalog.xml ${DTDDIR}

.include "../../textproc/xmlcatmgr/catalogs.mk"
.include "../../mk/bsd.pkg.mk"
