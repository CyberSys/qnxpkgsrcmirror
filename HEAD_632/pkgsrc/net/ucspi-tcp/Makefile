# $NetBSD: Makefile,v 1.32 2007/02/02 13:00:36 schmonz Exp $

DISTNAME=		ucspi-tcp-0.88
PKGREVISION=		2
CATEGORIES=		sysutils net
MASTER_SITES=		http://cr.yp.to/ucspi-tcp/ ftp://cr.yp.to/ucspi-tcp/
DISTFILES=		${DISTNAME}.tar.gz ${MANPAGES}

MAINTAINER=		schmonz@NetBSD.org
HOMEPAGE=		http://cr.yp.to/ucspi-tcp.html
COMMENT=		Command-line tools for building TCP client-server applications

MANPAGES=		${DISTNAME}-man-20020317.tar.gz
SITES.${MANPAGES}=	http://smarden.org/pape/djb/manpages/

DJB_RESTRICTED=		YES

PKG_INSTALLATION_TYPES=	overwrite pkgviews

INSTALLATION_DIRS=	bin man ${PKGMANDIR}/man1

post-install:
	cd ${WRKDIR}/*-man; for i in 1; do		 		\
	for j in *.$$i; do ${INSTALL_MAN} $$j ${PREFIX}/${PKGMANDIR}/man$$i; done \
	done

.include "../../mk/djbware.mk"
.include "../../mk/bsd.pkg.mk"
