# $NetBSD: Makefile,v 1.13 2007/06/26 09:01:49 rillig Exp $
#

DISTNAME=		rss2html-0.8.2
CATEGORIES=		converters
MASTER_SITES=		ftp://ftp.nopcode.org/prj/rss2html/

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://www.nopcode.org/blog/rss2html.html
COMMENT=		RSS to HTML converter

PKG_INSTALLATION_TYPES=	overwrite pkgviews
GNU_CONFIGURE=	YES
USE_TOOLS+=		gmake

INSTALLATION_DIRS+=	bin

LIBS.SunOS+=		-lnsl -lsocket
MAKE_ENV+=		LIBS=${LIBS:M*:Q}

.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
