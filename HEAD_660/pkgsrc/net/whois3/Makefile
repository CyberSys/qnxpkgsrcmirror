# $NetBSD: Makefile,v 1.5 2013/05/31 12:41:44 wiz Exp $
#

DISTNAME=	whois3-3.2.2
PKGREVISION=	2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=whois/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://whois.sourceforge.net/
COMMENT=	RIPE very simple and generic whois client

GNU_CONFIGURE=	YES
USE_TOOLS+=	perl
BUILD_DEFS+=	IPV6_READY

.include "../../mk/bsd.pkg.mk"
