# $NetBSD: Makefile,v 1.35 2006/12/15 20:32:56 joerg Exp $

DISTNAME=	xboard-4.2.7
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_GNU:=xboard/}

MAINTAINER=	simonb@NetBSD.org
HOMEPAGE=	http://www.tim-mann.org/xboard.html
COMMENT=	Graphical frontend for chess engines and servers

CONFIGURE_ARGS+=	--enable-xpm
CONFIGURE_ARGS+=	--enable-zippy	# interface to ICS
CONFIGURE_ENV+=		PERLPATH=${PERL5:Q}
GNU_CONFIGURE=		yes
USE_TOOLS+=		perl:run makeinfo
INFO_FILES=		yes
BUILD_TARGET=		default

.include "../../mk/bsd.prefs.mk"

BUILD_DEFS+=		XAW_TYPE
.if defined(XAW_TYPE) && (${XAW_TYPE} == "3d" || ${XAW_TYPE} == "xpm")
CONFIGURE_ARGS+=	--with-Xaw3d
.endif

.include "../../x11/libXpm/buildlink3.mk"
.include "../../mk/xaw.buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
