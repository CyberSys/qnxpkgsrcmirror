# $NetBSD: Makefile,v 1.8 2008/05/26 02:13:24 joerg Exp $
#

DISTNAME=	pdumpfs-${VER}
PKGREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	http://0xcc.net/pdumpfs/

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://0xcc.net/pdumpfs/
COMMENT=	Simple daily backup system similar to Plan9's dumpfs

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	pax

VER=		1.3
BUILD_TARGET=	pdumpfs

REPLACE_RUBY=	pdumpfs.in

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man8 ${PKGMANDIR}/ja_JP.EUC/man8 \
			share/doc/pdumpfs

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pdumpfs ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/man8/pdumpfs.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8
	${INSTALL_MAN} ${WRKSRC}/man/ja/man8/pdumpfs.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/ja_JP.EUC/man8
	cd ${WRKSRC}/doc && \
		pax -rw -pp -pm . ${DESTDIR}${PREFIX}/share/doc/pdumpfs

.include "../../lang/ruby/modules.mk"
.include "../../mk/bsd.pkg.mk"
