# $NetBSD: Makefile,v 1.23 2007/02/02 17:12:56 joerg Exp $

DISTNAME=	zorro-1.1p8
PKGNAME=	zorro-1.1.8
PKGREVISION=	1
CATEGORIES=	misc tk
MASTER_SITES=	ftp://ftp.neosoft.com/pub/tcl/sorted/apps/zorro-1.1p8/

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Simple to-do list manager

DEPENDS+=	tk>=8.3.2:../../x11/tk

NO_BUILD=	yes

INSTALLATION_DIRS=	bin

post-patch:
	( cd ${WRKSRC} ; ${SED} 's|@PREFIX@|'${PREFIX}'|g' \
		<zorro >zorro.BAK ; ${MV} zorro.BAK zorro )

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/zorro ${PREFIX}/bin/zorro
	${INSTALL_DATA_DIR} ${PREFIX}/share/zorro
	${INSTALL_DATA} ${WRKSRC}/DOTzorrorc ${PREFIX}/share/zorro
	@${ECHO} ""
	@${ECHO} "Take a look at ${PREFIX}/share/zorro/DOTzorrorc"
	@${ECHO} ""

.include "../../mk/bsd.pkg.mk"
