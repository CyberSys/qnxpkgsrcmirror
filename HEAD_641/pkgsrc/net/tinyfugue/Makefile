# $NetBSD: Makefile,v 1.24 2009/06/30 00:07:21 joerg Exp $

DISTNAME=	tf-40s1
PKGNAME=	tf-4.0s1
PKGREVISION=	5
CATEGORIES=	net games
MASTER_SITES=	ftp://laurel.actlab.utexas.edu/pub/tinyfugue/ \
		${MASTER_SITE_SOURCEFORGE:=tinyfugue/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://tinyfugue.sourceforge.net/
COMMENT=	Popular programmable MUD client, with macro support and more

MAKE_JOBS_SAFE=		no

MAKE_FILE=	${WRKSRC}/unix/Makefile
MAKE_ENV+=	TFVER=${DISTNAME:S/^tf-//:Q}

PATCH_SITES=	http://discworld.imaginary.com/external/taffyd/
PATCHFILES=	tf-40s1-mccp-patch.gz
PATCH_DIST_STRIP=-p1

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
