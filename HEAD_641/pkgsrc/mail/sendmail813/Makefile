# $NetBSD: Makefile,v 1.8 2008/05/25 21:42:21 joerg Exp $

PKG_DESTDIR_SUPPORT=	destdir

.include "../../mail/sendmail813/Makefile.common"

PKGNAME=	sendmail-${DIST_VERS}
PKGREVISION=	4
COMMENT=	The well known Mail Transport Agent

USE_TOOLS+=	pax

CONFLICTS+=	courier-mta-[0-9]* fastforward>=0.51nb2 postfix-[0-9]*

MESSAGE_SRC=	${WRKDIR}/.MESSAGE_SRC
PLIST_SRC=	${WRKDIR}/.PLIST_SRC

SMRSH_CMDDIR?=	${PREFIX}/libexec/sm.bin
PLIST_SUBST+=	SMRSH_CMDDIR=${SMRSH_CMDDIR:Q}
RCD_SCRIPTS=	sendmail smmsp

# Not OWN_DIRS, so that the admin doesn't get a suggestion to delete the
# queue dirs if they are nonempty at deinstall (probably undesirable).
#
MAKE_DIRS_PERMS+=	/var/spool/clientmqueue smmsp smmsp 0770
MAKE_DIRS_PERMS+=	/var/spool/mqueue ${ROOT_USER} ${ROOT_GROUP} 0700

PKG_GROUPS=		smmsp
PKG_USERS=		smmsp:smmsp
PKG_GECOS.smmsp=	Sendmail Message Submission Program

SUBST_CLASSES+=		paths
SUBST_STAGE.paths=	pre-configure
SUBST_FILES.paths=	../mailer.conf include/sm/conf.h smrsh/smrsh.8 cf/cf/Makefile
SUBST_SED.paths+=	-e "s|@@BINGRP@@|${BINGRP}|g"
SUBST_SED.paths+=	-e "s|@@BINOWN@@|${BINOWN}|g"
SUBST_SED.paths+=	-e "s|@@INSTALL@@|${INSTALL}|g"
SUBST_SED.paths+=	-e "s|@@PREFIX@@|${PREFIX}|g"
SUBST_SED.paths+=	-e "s|@@SMRSH_CMDDIR@@|${SMRSH_CMDDIR}|g"
SUBST_MESSAGE.paths=	Fixing paths.

REPLACE_PERL=		contrib/socketmapClient.pl contrib/socketmapServer.pl

INSTALLATION_DIRS=	bin lib sbin
INSTALLATION_DIRS+=	${PKGMANDIR}/man1 ${PKGMANDIR}/man5 ${PKGMANDIR}/man8
INSTALLATION_DIRS+=	${PREFIX}/libexec/sendmail ${SMRSH_CMDDIR}
INSTALLATION_DIRS+=	${PREFIX}/share/examples/sendmail
INSTALLATION_DIRS+=	${PREFIX}/share/sendmail ${PREFIX}/share/doc/sendmail

post-patch: make-sendmail-siteconfig
.if !empty(PKG_OPTIONS:Mtcpwrappers)
	cat ${FILESDIR}/site.config.m4-tcpwrappers >>${SITECONFIG}
.endif
.if !empty(PKG_OPTIONS:Mldap)
	cat ${FILESDIR}/site.config.m4-ldap >>${SITECONFIG}
.endif
.if !empty(PKG_OPTIONS:Mdb2)
	cat ${FILESDIR}/site.config.m4-db2 >>${SITECONFIG}
.endif
.if !empty(PKG_OPTIONS:Mdb4)
	cat ${FILESDIR}/site.config.m4-db4 >>${SITECONFIG}
.endif
.if !empty(PKG_OPTIONS:Mtls)
	cat ${FILESDIR}/site.config.m4-starttls >>${SITECONFIG}
.endif
.if !empty(PKG_OPTIONS:Msasl)
	cat ${FILESDIR}/site.config.m4-sasl2 >>${SITECONFIG}
.endif

post-extract:
	cp ${FILESDIR}/mailer.conf ${WRKDIR}/mailer.conf

do-build:
	cd ${WRKSRC} && env ${MAKE_ENV} ./Build

post-build:
	cp ${PKGDIR}/MESSAGE ${MESSAGE_SRC}
	cp ${PKGDIR}/PLIST ${WRKDIR}/.PLIST_SRC

post-install:
	${INSTALL_DATA} ${WRKDIR}/mailer.conf \
		${DESTDIR:Q}${PREFIX}/share/examples/sendmail/
	cd ${WRKSRC}/cf && pax -rw -pp -pm -s',^.*\.orig$$,,' . ${DESTDIR:Q}${PREFIX}/share/sendmail
	chown -R ${BINOWN}:${BINGRP} ${DESTDIR:Q}${PREFIX}/share/sendmail

	${INSTALL_DATA} ${WRKSRC}/obj.`${UNAME} -srm | tr \  . | tr \/ - | sed s/sun4./sun4/`/libsm/libsm.a \
		${DESTDIR:Q}${PREFIX}/lib

	${INSTALL_DATA} \
		${WRKSRC}/obj.`${UNAME} -srm | tr \  . | tr \/ - | sed s/sun4./sun4/`/libsmutil/libsmutil.a \
		${DESTDIR:Q}${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/socketmap*.pl \
		${DESTDIR:Q}${PREFIX}/share/examples/sendmail/
	${INSTALL_DATA} ${WRKSRC}/RELEASE_NOTES ${DESTDIR:Q}${PREFIX}/share/doc/sendmail
	${INSTALL_DATA} ${WRKSRC}/cf/README ${DESTDIR:Q}${PREFIX}/share/doc/sendmail
	${INSTALL_DATA} ${WRKSRC}/sendmail/SECURITY ${DESTDIR:Q}${PREFIX}/share/doc/sendmail
	${INSTALL_DATA} ${WRKSRC}/doc/op/op.me ${DESTDIR:Q}${PREFIX}/share/doc/sendmail
	${INSTALL_DATA} ${WRKSRC}/doc/op/op.ps ${DESTDIR:Q}${PREFIX}/share/doc/sendmail

.include "../../mk/bsd.pkg.mk"

# has to be below include for bsd.pkg.mk, else substition fails
OBJDIR!=	${ECHO} obj.`${UNAME} -srm | tr \  . | tr \/ -`
