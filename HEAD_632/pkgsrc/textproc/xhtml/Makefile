# $NetBSD: Makefile,v 1.6 2006/03/21 06:00:50 jlam Exp $
#

DISTNAME=	xhtml1
PKGNAME=	xhtml-1.0
PKGREVISION=	2
CATEGORIES=	textproc
MASTER_SITES=	http://www.w3.org/TR/xhtml1/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.w3.org/MarkUp/
COMMENT=	DTDs for the Extensible Hypertext Markup Language

NO_BUILD=	yes
NO_MTREE=	yes
USE_LANGUAGES=	# empty
WRKSRC=		${WRKDIR}/xhtml1-20020801

SGML_CATALOGS=	${PREFIX}/share/xml/xhtml/1.0/xhtml.soc
XML_CATALOGS=	${PREFIX}/share/xml/xhtml/1.0/catalog

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xml/xhtml/1.0
	cd ${WRKSRC}/DTD && ${PAX} -rwpppm . ${PREFIX}/share/xml/xhtml/1.0
	${INSTALL_DATA} ${FILESDIR}/catalog10 \
	    ${PREFIX}/share/xml/xhtml/1.0/catalog

.include "../../textproc/xmlcatmgr/catalogs.mk"
.include "../../mk/bsd.pkg.mk"
