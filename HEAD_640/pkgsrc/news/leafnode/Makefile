# $NetBSD: Makefile,v 1.40 2008/10/25 13:19:10 obache Exp $

DISTNAME=		leafnode-1.11.3.rel
PKGNAME=		${DISTNAME:S/.rel//}
PKGREVISION=		1
CATEGORIES=		news
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=leafnode/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		cjep@NetBSD.org
HOMEPAGE=		http://leafnode.sourceforge.net/
COMMENT=		NNTP server for small (dialup) sites

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS+=		cyrus-imapd<2.2.10nb2

WRKSRC=			${WRKDIR}/${DISTNAME}

LEAFNODE_SPOOL?=	/var/spool/leafnode
LEAFNODE_LOCKDIR?=	/var/spool/lock/leafnode
LEAFNODE_CONFDIR?=	${PKG_SYSCONFDIR}/leafnode

# Default data dir, login and group are the same as used by inn
#
BUILD_DEFS+=		LEAFNODE_DATA_DIR
PKG_GROUPS=		${LEAFNODE_GROUP}
PKG_USERS=		${LEAFNODE_USER}:${LEAFNODE_GROUP}
LEAFNODE_HOME?=		${INN_DATA_DIR}

PKG_GECOS.${LEAFNODE_USER}=	Internet News
PKG_HOME.${LEAFNODE_USER}=	${LEAFNODE_DATA_DIR}
PKG_SHELL.${LEAFNODE_USER}=	${SH}

PKG_GROUPS_VARS+=	LEAFNODE_GROUP
PKG_USERS_VARS+=	LEAFNODE_USER

FILES_SUBST+=		LEAFNODE_SPOOL=${LEAFNODE_SPOOL:Q}
FILES_SUBST+=		LEAFNODE_CONFDIR=${LEAFNODE_CONFDIR:Q}
FILES_SUBST+=		LEAFNODE_LOCKDIR=${LEAFNODE_LOCKDIR:Q}
FILES_SUBST+=		LEAFNODE_HOME=${LEAFNODE_HOME:Q}
MESSAGE_SUBST+=		LEAFNODE_CONFDIR=${LEAFNODE_CONFDIR}

USE_FEATURES=		snprintf vsnprintf

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-spooldir=${LEAFNODE_SPOOL:Q}
CONFIGURE_ARGS+=	--with-lockfile=${LEAFNODE_LOCKDIR}/fetchnews.lck
CONFIGURE_ARGS+=	--sysconfdir=${LEAFNODE_CONFDIR:Q}
CONFIGURE_ARGS+=	--with-user=${LEAFNODE_USER:Q}
CONFIGURE_ARGS+=	--with-group=${LEAFNODE_GROUP:Q}
USE_TOOLS+=		gmake

PKG_OPTIONS_VAR=	PKG_OPTIONS.leafnode
PKG_SUPPORTED_OPTIONS=	inet6

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Minet6)
CONFIGURE_ARGS+=	--with-ipv6
.else
CONFIGURE_ARGS+=	--without-ipv6
.endif

TEST_TARGET=		check

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/examples/leafnode
	${INSTALL_DATA} ${WRKSRC}/config.example 			\
				${DESTDIR}${PREFIX}/share/examples/leafnode
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/doc/leafnode

	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/README-FQDN 		\
			${WRKSRC}/README-MAINTAINER			\
			${WRKSRC}/README-daemontools			\
			${WRKSRC}/README.FIRST				\
				${DESTDIR}${PREFIX}/share/doc/leafnode

.include "../../devel/pcre/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
