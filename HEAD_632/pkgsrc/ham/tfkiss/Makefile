# $NetBSD: Makefile,v 1.11 2006/02/05 23:09:42 joerg Exp $
#

DISTNAME=	tfkiss-1.2.4
PKGREVISION=	1
CATEGORIES=	ham
MASTER_SITES=	ftp://ftp.ping.net.au/pub/unix/ham/

MAINTAINER=	wulf@ping.net.au
HOMEPAGE=	http://www.bfl.at/mayer/ham/
COMMENT=	Software implementation of TheFirmware for use with TNT

USE_TOOLS+=	gmake
GNU_CONFIGURE=	yes

CONFIGURE_ARGS+=	--enable-xpid
CONFIGURE_ARGS+=	--enable-flexnet
CONFIGURE_ARGS+=	--enable-axip

.include "../../mk/bsd.pkg.mk"
