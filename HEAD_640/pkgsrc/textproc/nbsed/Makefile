# $NetBSD: Makefile,v 1.19 2008/06/19 18:36:52 joerg Exp $

DISTNAME=		nbsed-20040821
PKGREVISION=		1
CATEGORIES=		textproc pkgtools
MASTER_SITES=		# empty
DISTFILES=		# empty

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.NetBSD.org/
COMMENT=		NetBSD-current's sed(1)

PKG_DESTDIR_SUPPORT=	user-destdir
BOOTSTRAP_PKG=	yes

NO_CHECKSUM=		yes
NO_MTREE=		yes
USE_FEATURES=		nbcompat
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--program-transform-name="s,sed,nbsed,"

do-extract:
	@${CP} -R ${FILESDIR} ${WRKSRC}

.include "../../mk/bsd.pkg.mk"
