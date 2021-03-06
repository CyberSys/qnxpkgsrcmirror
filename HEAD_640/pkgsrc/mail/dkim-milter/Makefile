# $NetBSD: Makefile,v 1.18 2009/01/29 17:12:57 joerg Exp $

DISTNAME=	dkim-milter-2.8.1
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dkim-milter/}

MAINTAINER=	imil@gcu.info
HOMEPAGE=	http://sourceforge.net/projects/dkim-milter/
COMMENT=	Open source DKIM filter software from Sendmail, Inc

BUILDLINK_API_DEPENDS.libmilter+=	libmilter>=8.13.0
BUILDLINK_API_DEPENDS.openssl+=		openssl>=0.9.8

LICENSE=		sendmail-open-source-license

MAKE_ENV+=		M4=${M4:Q}
RCD_SCRIPTS=		dkim-filter
USE_BUILTIN.libmilter=	no
USE_TOOLS+=		gm4
EGDIR=			${PREFIX}/share/examples/dkim-milter
FILES_SUBST+=		DKIM_USER=${DKIM_USER:Q} DKIM_GROUP=${DKIM_GROUP:Q}
BUILD_DEFS+=		VARBASE DKIM_USER DKIM_GROUP

DKIM_USER?=		dkim
DKIM_GROUP?=		dkim
PKG_GROUPS=		${DKIM_USER}
PKG_USERS=		${DKIM_USER}:${DKIM_GROUP}
PKG_GROUPS_VARS+=	DKIM_GROUP
PKG_USERS_VARS+=	DKIM_USER
OWN_DIRS_PERMS+=	${VARBASE}/run/dkim-filter \
			${DKIM_USER} ${DKIM_GROUP} 0750

.include "options.mk"

SUBST_CLASSES+=		libs
SUBST_STAGE.libs=	pre-configure
SUBST_FILES.libs=	devtools/Site/site.config.m4
SUBST_FILES.libs+=	dkim-filter/dkim-filter.conf.5 dkim-filter/dkim-stats.8
SUBST_FILES.libs+=	dkim-filter/Makefile.m4
SUBST_SED.libs+=	-e 's|@SSLBASE@|${BUILDLINK_PREFIX.openssl}|g'
SUBST_SED.libs+=	-e 's|@LMBASE@|${BUILDLINK_PREFIX.libmilter}|g'
SUBST_SED.libs+=	-e 's|@PTHREAD@|${BUILDLINK_PREFIX.pthread}|g'
SUBST_SED.libs+=	-e 's|@PTHREAD_LDFLAGS@|${PTHREAD_LDFLAGS} ${PTHREAD_LIBS}|g'
SUBST_SED.libs+=	-e 's|@PREFIX@|${PREFIX}|g'
SUBST_SED.libs+=	-e 's|@PKGMANDIR@|${PKGMANDIR}|g'
SUBST_SED.libs+=	-e 's|/etc/mail|${PKG_SYSCONFDIR}|g'
SUBST_SED.libs+=	-e 's|.I /etc/dkim-filter.conf|.I ${PKG_SYSCONFDIR}/dkim-filter.conf|g'
SUBST_MESSAGE.libs=	Fixing Makefile references and man pages.

CONF_FILES=		${EGDIR}/dkim-filter.conf.sample \
			${PKG_SYSCONFDIR}/dkim-filter.conf

INSTALLATION_DIRS=	${PKGMANDIR}/man5 ${PKGMANDIR}/man8 \
			share/doc/dkim-milter ${EGDIR} \
			share/doc/dkim-milter/libdkim

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD"
CPPFLAGS+=	-DSM_CONF_STDBOOL_H=1
.endif

post-extract:
	${CP} ${WRKSRC}/site.config.m4.dist \
		${WRKSRC}/devtools/Site/site.config.m4

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ./Build

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ./Build install

post-install:
	${INSTALL_DATA} ${WRKSRC}/dkim-filter/dkim-filter.conf.sample ${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/FEATURES ${PREFIX}/share/doc/dkim-milter
	${INSTALL_DATA} ${WRKSRC}/INSTALL ${PREFIX}/share/doc/dkim-milter
	${INSTALL_DATA} ${WRKSRC}/KNOWNBUGS ${PREFIX}/share/doc/dkim-milter
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dkim-milter
	${INSTALL_DATA} ${WRKSRC}/RELEASE_NOTES ${PREFIX}/share/doc/dkim-milter

	cd ${WRKSRC} && for f in draft-*.txt; do \
		${INSTALL_DATA} $${f} \
			${PREFIX}/share/doc/dkim-milter; \
	done

	cd ${WRKSRC} && for f in rfc*.txt; do \
		${INSTALL_DATA} $${f} \
			${PREFIX}/share/doc/dkim-milter; \
	done

	cd ${WRKSRC}/libdkim/docs/ && for f in *.html; do \
		${INSTALL_DATA} $${f} \
			${PREFIX}/share/doc/dkim-milter/libdkim; \
	done

	${CHMOD} ${SHAREMODE} ${PREFIX}/include/dkim.h

.	if !empty(PKG_OPTIONS:Mdkim-milter-arlib)
	cd ${WRKSRC}/obj.`uname -s`.`uname -r`.`uname -m`/libar && \
		${INSTALL_LIB} libar.a ${PREFIX}/lib && \
		${INSTALL_MAN} ar.3 ${PREFIX}/${PKGMANDIR}/man3
.	endif

.	if !empty(PKG_OPTIONS:Mdkim-stats)
	cd ${WRKSRC}/obj.`uname -s`.`uname -r`.`uname -m`/dkim-filter && \
		${INSTALL_PROGRAM} dkim-stats ${PREFIX}/bin && \
		${INSTALL_MAN} ${WRKSRC}/dkim-filter/dkim-stats.8 \
			${PREFIX}/${PKGMANDIR}/man8
.	endif

.include "../../security/openssl/buildlink3.mk"
.include "../../mail/libmilter/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
