# $NetBSD: Makefile,v 1.11 2006/03/04 21:29:30 jlam Exp $

DISTNAME=	stooop-4.1.1
CATEGORIES=	x11 tcl
MASTER_SITES=	http://jfontain.free.fr/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://jfontain.free.fr/
COMMENT=	Simple Tcl Only Object Oriented Programming scheme

DEPENDS+=	tcl>=8.3.2:../../lang/tcl

PKG_INSTALLATION_TYPES=	overwrite pkgviews

NO_CONFIGURE=	yes
NO_BUILD=	yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/tcl/stooop
	${INSTALL_DATA} ${WRKSRC}/pkgIndex.tcl ${PREFIX}/lib/tcl/stooop
	${INSTALL_DATA} ${WRKSRC}/stooop.tcl ${PREFIX}/lib/tcl/stooop
	${INSTALL_DATA} ${WRKSRC}/switched.tcl ${PREFIX}/lib/tcl/stooop
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcl/stooop
	${INSTALL_DATA} ${WRKSRC}/stooop.htm ${PREFIX}/share/doc/tcl/stooop
	${INSTALL_DATA} ${WRKSRC}/switched.htm ${PREFIX}/share/doc/tcl/stooop

.include "../../mk/bsd.pkg.mk"
