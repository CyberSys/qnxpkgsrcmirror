# $NetBSD: Makefile,v 1.33 2007/11/21 20:29:46 gdt Exp $

DISTNAME=	milter-greylist-4.0
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.espci.fr/pub/milter-greylist/
EXTRACT_SUFX=	.tgz

MAINTAINER=	tron@NetBSD.org
HOMEPAGE=	http://hcpnet.free.fr/milter-greylist/
COMMENT=	Easy-to-use greylist milter for sendmail


GNU_CONFIGURE=		YES
CONFIGURE_ARGS+=	--with-user=smmsp

BUILD_TARGET=		milter-greylist

PKG_GROUPS=		smmsp
PKG_USERS=		smmsp:smmsp
PKG_GECOS.smmsp=	Sendmail Message Submission Program

RCD_SCRIPTS=	milter-greylist

.include "options.mk"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/milter-greylist
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/milter-greylist
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/milter-greylist
	${INSTALL_DATA} ${WRKSRC}/greylist.conf \
	  ${PREFIX}/share/examples/milter-greylist

.include "../../mail/libmilter/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
