# $NetBSD: Makefile,v 1.14 2009/06/30 00:07:17 joerg Exp $
#

DISTNAME=		lprof-1.10.1
PKGREVISION=		8
CATEGORIES=		graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=lprof/}

MAINTAINER=		gdt@NetBSD.org
HOMEPAGE=		http://lprof.sourceforge.net/
COMMENT=		ICC Profile generation tool (for IT8.7 targets)

MAKE_JOBS_SAFE=		no

USE_TOOLS+=	gmake

MAKE_ENV+=	BASEDIR=${PREFIX:Q} QTDIR=${PREFIX}/qt3
MAKE_ENV+=	LDFLAGS=${LDFLAGS:M*:Q}

PTHREAD_AUTO_VARS=	yes

.include "../../x11/qt3-libs/buildlink3.mk"
.include "../../x11/qt3-tools/buildlink3.mk"
.include "../../graphics/lcms/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
