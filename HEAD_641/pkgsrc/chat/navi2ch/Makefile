# $NetBSD: Makefile,v 1.23 2009/08/06 01:44:46 minskim Exp $

DISTNAME=	navi2ch-cvs_0.0.20070423-1
PKGNAME=	${EMACS_PKGNAME_PREFIX}navi2ch-1.7.5.99.20070423
PKGREVISION=	1
CATEGORIES=	chat
#MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=navi2ch/}
MASTER_SITES=	http://navi2ch.sourceforge.net/snapshot/

MAINTAINER=	uebayasi@NetBSD.org
HOMEPAGE=	http://navi2ch.sourceforge.net/
COMMENT=	2ch BBS browser for Emacs

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/${DISTNAME:C/cvs_0\.0\./cvs-/:C/-1$//}
GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake
INFO_FILES=	# PLIST
EMACS_MODULES=	base

# --with-emacs or --with-xemacs
CONFIGURE_ARGS+=--with-${EMACS_FLAVOR}
CONFIGURE_ARGS+=--with-icondir=${PREFIX}/share/navi2ch/icons
CONFIGURE_ARGS+=${CONFIGURE_ARGS.${EMACS_FLAVOR}}

CONFIGURE_ARGS.emacs=	--with-lispdir=${EMACS_LISPPREFIX}/navi2ch
CONFIGURE_ARGS.xemacs=	--with-packagedir=${EMACS_LISPPREFIX:C|/lisp$||}

.include "../../editors/emacs/modules.mk"

.include "../../mk/bsd.pkg.mk"
