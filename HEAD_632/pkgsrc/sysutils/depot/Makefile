# $NetBSD: Makefile,v 1.19 2007/03/04 11:29:58 wiz Exp $
#

DISTNAME=	depot-5.14
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.andrew.cmu.edu/pub/depot/alpha/

MAINTAINER=	pkgsrc-users@NetBSD.org
# "Most of the content here is being removed and archived."
# HOMEPAGE=	http://asg.web.cmu.edu/depot/
COMMENT=	Maps several separate packages into a tree without merging them

GNU_CONFIGURE=	yes
USE_TOOLS+=	lex yacc

CONFIGURE_ENV+=	INSTALL="" CC=${CC:Q}
MAKE_ENV+=	CC=${CC:Q}

do-install:
	cd ${WRKSRC}/src/cmd && ${MAKE} DESTDIR=${PREFIX} install
	cd ${WRKSRC}/man/man1 && ${MAKE} MANDIR=${PREFIX}/${PKGMANDIR} install
	cd ${WRKSRC}/man/man5 && ${MAKE} MANDIR=${PREFIX}/${PKGMANDIR} install

.include "../../mk/bsd.pkg.mk"
