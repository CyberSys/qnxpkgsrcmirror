# $NetBSD: Makefile,v 1.9 2008/03/04 19:21:11 jlam Exp $

DISTNAME=	jhd-2.3
CATEGORIES=	japanese misc
MASTER_SITES=	ftp://ftp.iamas.ac.jp/pub1/UNIX/File/

MAINTAINER=	tech-pkg-ja@jp.NetBSD.org
COMMENT=	Japanese Hexadecimal Dump

BUILD_DEPENDS+=	nkf>=1.7:../../converters/nkf

PKG_DESTDIR_SUPPORT=	user-destdir
INSTALLATION_DIRS=	bin ${PKGMANDIR}/ja_JP.EUC/man1

post-build:
	@(cd ${WRKSRC}; ${MV} jhd.1 jhd.1.org; nkf -e jhd.1.org > jhd.1)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jhd ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/jhd.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/ja_JP.EUC/man1

.include "../../mk/bsd.pkg.mk"
