# $NetBSD: Makefile,v 1.22 2008/03/03 15:21:07 jlam Exp $

DISTNAME=		fbsql.c
PKGNAME=		tcl-fbsql-1.06
PKGREVISION=		3
CATEGORIES=		databases
MASTER_SITES=		http://www.fastbase.co.nz/fbsql/
EXTRACT_SUFX=

MAINTAINER=		bouyer@NetBSD.org
HOMEPAGE=		http://www.fastbase.co.nz/fbsql/index.html
COMMENT=		Tcl interface to MySQL

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}/src
USE_LIBTOOL=		YES
DIST_SUBDIR=		${PKGNAME_NOREV}
INSTALLATION_DIRS=	lib/tcl

do-extract:
	${MKDIR} ${WRKSRC}
	${CP} ${FILESDIR}/Makefile ${WRKSRC}/
	${CP} ${_DISTDIR}/fbsql.c ${WRKSRC}/

do-install:
	${INSTALL_LIB} ${WRKSRC}/fbsql.so ${DESTDIR}${PREFIX}/lib/tcl

.include "../../mk/mysql.buildlink3.mk"
.include "../../lang/tcl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
