# $NetBSD: Makefile,v 1.22 2006/10/04 21:53:18 wiz Exp $
#

DISTNAME=	sendfile-20010216
PKGNAME=	sendfile-2.1.0.2
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.belwue.de/pub/unix/sendfile/current/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.belwue.de/projekte/saft/
COMMENT=	Implementation of the Simple asynchronous file transfer protocol

WRKSRC=		${WRKDIR}/sendfile-2.1a

PKG_SYSCONFSUBDIR=	sendfile
EGDIR=		${PREFIX}/share/examples/sendfile
CONF_FILES=	${EGDIR}/sendfile.cf ${PKG_SYSCONFDIR}/sendfile.cf
CONF_FILES+=	${EGDIR}/sendfile.deny ${PKG_SYSCONFDIR}/sendfile.deny

pre-configure:
	@${CP} ${PKGSRCDIR}/mk/gnu-config/config.guess ${WRKSRC}/develop
	@${CP} ${PKGSRCDIR}/mk/gnu-config/config.sub ${WRKSRC}/develop
	cd ${WRKSRC} && \
	${SED}  -e 's,@PREFIX@,${PREFIX},g' \
		-e 's,@PKG_SYSCONFDIR@,${PKG_SYSCONFDIR},g' \
		< makeconfig > makeconfig.new; \
	${MV} makeconfig.new makeconfig; \
	${CHMOD} +x makeconfig

post-configure:
	cd ${WRKSRC} &&${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} config

.include "../../mk/bsd.pkg.mk"
