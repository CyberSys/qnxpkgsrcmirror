# $NetBSD: Makefile,v 1.19 2009/02/27 22:53:47 wiz Exp $
#

DISTNAME=	trickle-1.06
PKGREVISION=	10
CATEGORIES=	net
MASTER_SITES=	http://monkey.org/~marius/trickle/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://monkey.org/~marius/trickle/
COMMENT=	Portable lightweight userspace bandwidth shaper

USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}

EGDIR=		${PREFIX}/share/examples/trickle
CONF_FILES=	${EGDIR}/trickled.conf ${PKG_SYSCONFDIR}/trickled.conf

RCD_SCRIPTS=	trickled

pre-install:
	${INSTALL_DATA_DIR} ${EGDIR}
	${INSTALL_DATA} ${FILESDIR}/trickled.conf ${EGDIR}

.include "../../devel/libevent/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
