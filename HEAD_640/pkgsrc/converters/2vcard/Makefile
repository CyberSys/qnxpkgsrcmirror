# $NetBSD: Makefile,v 1.9 2009/01/23 21:14:18 jschauma Exp $
#

DISTNAME=	2vcard-0.5
CATEGORIES=	converters
MASTER_SITES=	http://www.netmeister.org/apps/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@@NetBSD.org
HOMEPAGE=	http://www.netmeister.org/apps/2vcard/
COMMENT=	Convert an addressbook to the popular VCARD file format

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	perl:run
REPLACE_PERL=	src/2vcard

NO_BUILD=	yes

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/2vcard ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/2vcard.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/doc/html/2vcard
	${INSTALL_DATA} ${WRKSRC}/doc/html/* \
		${DESTDIR}${PREFIX}/share/doc/html/2vcard

.include "../../mk/bsd.pkg.mk"
