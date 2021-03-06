# $NetBSD: Makefile,v 1.2 2009/01/08 09:03:15 adrianp Exp $

DISTNAME=	bind-${BIND_VERSION}
PKGNAME=	${DISTNAME:S/-P1/pl1/}
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.isc.org/isc/bind9/${BIND_VERSION}/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.isc.org/sw/bind/
COMMENT=	Version 9 of the Berkeley Internet Name Daemon, implementation of DNS

CONFLICTS+=	bind<9.6.0

PKG_DESTDIR_SUPPORT=	user-destdir

BIND_VERSION=	9.6.0-P1

.include "../../mk/bsd.prefs.mk"

BUILD_DEFS+=	BIND_DIR VARBASE

.include "options.mk"

USE_TOOLS+=		pax perl
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
#CONFIG_SHELL=		sh -x

CONFIGURE_ARGS+=	--with-libtool
CONFIGURE_ARGS+=	--sysconfdir=/etc
CONFIGURE_ARGS+=	--localstatedir=${VARBASE:Q}
CONFIGURE_ARGS+=	--disable-openssl-version-check
CONFIGURE_ARGS+=	--with-openssl=${SSLBASE:Q}

PKG_GROUPS_VARS+=	BIND_GROUP
PKG_USERS_VARS+=	BIND_USER

PKG_GROUPS=		${BIND_GROUP}
PKG_USERS=		${BIND_USER}:${BIND_GROUP}

PKG_GECOS.${BIND_USER}=	Named pseudo-user
PKG_HOME.${BIND_USER}=	${BIND_DIR}

PTHREAD_OPTS+=		native
PTHREAD_AUTO_VARS=	yes

FILES_SUBST+=		BIND_GROUP=${BIND_GROUP:Q} \
			BIND_USER=${BIND_USER:Q} PAX=${PAX:Q}
MESSAGE_SUBST+=		BIND_DIR=${BIND_DIR} BIND_USER=${BIND_USER}
DOCDIR=			${DESTDIR}${PREFIX}/share/doc/bind9

RCD_SCRIPTS=		lwresd named9

INSTALLATION_DIRS=	${DOCDIR} share/doc/bind9/arm share/doc/bind9/draft \
			share/doc/bind9/rfc

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/NSEC3-NOTES ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/arm/*.html ${DOCDIR}/arm
	${INSTALL_DATA} ${WRKSRC}/doc/arm/*.html ${DOCDIR}/arm
	${INSTALL_DATA} ${WRKSRC}/doc/draft/draft-*.txt ${DOCDIR}/draft
	${INSTALL_DATA} ${WRKSRC}/doc/rfc/rfc*.txt ${DOCDIR}/rfc

.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
