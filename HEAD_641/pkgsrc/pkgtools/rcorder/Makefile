# $NetBSD: Makefile,v 1.13 2009/04/09 00:48:14 joerg Exp $
#

DISTNAME=		rcorder-20031013
CATEGORIES=		pkgtools sysutils
MASTER_SITES=		# empty
DISTFILES=		# empty

MAINTAINER=		schmonz@NetBSD.org
HOMEPAGE=		http://www.NetBSD.org/
COMMENT=		Print a dependency ordering of interdependent files

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_FEATURES=		nbcompat

do-extract:
	${CP} -R ${FILESDIR} ${WRKSRC}

.include "../../mk/bsd.pkg.mk"
