# $NetBSD: Makefile,v 1.10 2006/04/07 19:54:17 jlam Exp $

DISTNAME=	sed-3.02
PKGNAME=	ja-sed-3.02
PKGREVISION=	2
CATEGORIES=	japanese textproc
MASTER_SITES=	${MASTER_SITE_GNU:=sed/}

PATCH_SITES=	http://www.hinadori.atnifty.com/~wills/program/
PATCHFILES=	sedmb109.diff.gz
PATCH_DIST_STRIP=	-p1

MAINTAINER=	tech-pkg-ja@jp.NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/sed/sed.html
COMMENT=	GNU sed + multi-byte extension

CONFLICTS+=	gsed-[0-9]*

USE_TOOLS+=	gmake
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--program-transform-name='s,^,j,'
INFO_FILES=	# PLIST

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ja-sed
	@${INSTALL_DATA} ${WRKSRC}/OREADME.MB ${PREFIX}/share/doc/ja-sed
	@${INSTALL_DATA} ${WRKSRC}/README.MB ${PREFIX}/share/doc/ja-sed

.include "../../mk/bsd.pkg.mk"
