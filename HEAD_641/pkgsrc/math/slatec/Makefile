# $NetBSD: Makefile,v 1.20 2009/02/22 14:15:28 asau Exp $
#

DISTNAME=	slatec_src
PKGNAME=	slatec-4.1
PKGREVISION=	2
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_NETLIB:=slatec/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://www.netlib.org/slatec/
COMMENT=	Library of mathematical and statistical Fortran 77 subroutines

WRKSRC=			${WRKDIR}/src
USE_LANGUAGES=		fortran
USE_LIBTOOL=		YES

INSTALLATION_DIRS=	lib

post-extract:
	cd ${FILESDIR} && cp d1mach.f i1mach.f r1mach.f ${WRKSRC}

.include "../../mk/bsd.pkg.mk"
