# $NetBSD: Makefile,v 1.42 2008/02/08 03:14:18 gdt Exp $
#

DISTNAME=	procmail-3.22
PKGREVISION=	2
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.procmail.org/pub/procmail/

MAINTAINER=	kim@tac.nyc.ny.us
HOMEPAGE=	http://www.procmail.org/
COMMENT=	Local mail delivery agent

PKG_INSTALLATION_TYPES=	overwrite pkgviews

MAKE_JOBS_SAFE=	no

MAKE_ENV+=	SHELL=${SH:Q} CHMOD=${CHMOD:Q}
INSTALL_TARGET=	install-suid install.man
UNLIMIT_RESOURCES=	datasize

.include "../../mk/bsd.prefs.mk"

BUILD_DEFS+=	PROCMAIL_MAILSPOOLHOME PROCMAIL_TRUSTED_IDS

PROCMAIL_TRUSTED_IDS?=\
"root","daemon","uucp","mail","x400","network","list","slist","lists","news",0

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 ${PKGMANDIR}/man5

pre-configure:
	${ECHO} "#define TRUSTED_IDS {${PROCMAIL_TRUSTED_IDS:Q}}"	\
	>> ${WRKSRC}/config.h
	${ECHO} "#undef ETCRC" >> ${WRKSRC}/config.h
	${ECHO} "#undef ETCRCS" >> ${WRKSRC}/config.h
	${ECHO} "#define ETCRC \"${PKG_SYSCONFDIR}/procmailrc\""	\
	>> ${WRKSRC}/config.h
	${ECHO} "#define ETCRCS \"${PKG_SYSCONFDIR}/procmailrcs/\""	\
	>> ${WRKSRC}/config.h
.if defined(PROCMAIL_MAILSPOOLHOME)
	${ECHO} "#define MAILSPOOLHOME \"/${PROCMAIL_MAILSPOOLHOME}\""	\
	>> ${WRKSRC}/src/authenticate.h
.endif

.if ${OPSYS} == "SunOS"
do-install:
	cd ${WRKSRC}/new;						\
	for f in procmail formail lockfile; do				\
		${INSTALL_PROGRAM} $$f ${PREFIX}/bin/$$f;		\
	done;								\
	${INSTALL_SCRIPT} mailstat ${PREFIX}/bin/mailstat;		\
	for f in procmail.1 formail.1 lockfile.1; do			\
		${INSTALL_MAN} $$f ${PREFIX}/${PKGMANDIR}/man1/$$f;		\
	done;								\
	for f in procmailex.5 procmailrc.5 procmailsc.5; do		\
		${INSTALL_MAN} $$f ${PREFIX}/${PKGMANDIR}/man5/$$f;		\
	done
	${SH} ${WRKSRC}/suid.sh
.endif

.include "../../mk/bsd.pkg.mk"
