# $NetBSD: Makefile,v 1.50 2007/07/04 20:54:49 jlam Exp $

DISTNAME=		samba-${SAMBA_VERSION}-ja-${JA_VERSION}
PKGNAME=		ja-samba-${SAMBA_VERSION}.${JA_PKG_VERSION}
CATEGORIES=		net
MASTER_SITES=		${JA_SAMBA_MASTER_SITES:S/$/beta\//}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		tech-pkg-ja@jp.NetBSD.org
HOMEPAGE=		http://www.samba.gr.jp/project/samba-ja/index.html.en
COMMENT=		Samba supporting I18N swat and L10N for Japanese

CONFLICTS+=		samba-[0-9]* pam-smbpass-[0-9]* tdb-[0-9]* winbind-[0-9]*
WRKSRC?=		${WRKDIR}/${DISTNAME}/source
GNU_CONFIGURE=		yes

SAMBA_VERSION=		2.2.12
JA_VERSION=		1.0beta1
JA_PKG_VERSION=		0.9.1

.include "../../mk/bsd.prefs.mk"

PKG_SYSCONFSUBDIR?=	samba
PKG_SYSCONFVAR=		samba

SAMBA_USER?=		samba
SAMBA_GROUP?=		samba

PKG_GROUPS_VARS+=	SAMBA_GROUP
PKG_USERS_VARS+=	SAMBA_USER

SAMBA_ETCDIR?=		${PKG_SYSCONFDIR}
SAMBA_LIBDIR?=		${PREFIX}/lib/samba
SAMBA_LOCKDIR?=		${SAMBA_VARDIR}/db/samba
SAMBA_LOGDIR?=		${SAMBA_VARDIR}/log
SAMBA_PIDDIR?=		${SAMBA_VARDIR}/run
SAMBA_PRIVATE?=		${SAMBA_ETCDIR}/private
SAMBA_VARDIR?=		${VARBASE}
BUILD_DEFS+=		SAMBA_ETCDIR SAMBA_LIBDIR SAMBA_LOCKDIR SAMBA_LOGDIR
BUILD_DEFS+=		SAMBA_PIDDIR SAMBA_PRIVATE SAMBA_VARDIR VARBASE

FILES_SUBST+=		SAMBA_ETCDIR=${SAMBA_ETCDIR:Q}
FILES_SUBST+=		SAMBA_LOCKDIR=${SAMBA_LOCKDIR:Q}
FILES_SUBST+=		SAMBA_LOGDIR=${SAMBA_LOGDIR:Q}
FILES_SUBST+=		SAMBA_PIDDIR=${SAMBA_PIDDIR:Q}
FILES_SUBST+=		SAMBA_PRIVATE=${SAMBA_PRIVATE:Q}
FILES_SUBST+=		SAMBA_VARDIR=${SAMBA_VARDIR:Q}

CONFIGURE_ARGS+=	--with-configdir=${SAMBA_ETCDIR:Q}
CONFIGURE_ARGS+=	--with-libdir=${SAMBA_LIBDIR:Q}
CONFIGURE_ARGS+=	--with-lockdir=${SAMBA_LOCKDIR:Q}
CONFIGURE_ARGS+=	--with-logfilebase=${SAMBA_LOGDIR:Q}
CONFIGURE_ARGS+=	--with-piddir=${SAMBA_PIDDIR:Q}
CONFIGURE_ARGS+=	--with-privatedir=${SAMBA_PRIVATE:Q}
CONFIGURE_ARGS+=	--localstatedir=${SAMBA_VARDIR:Q}

CONFIGURE_ARGS+=	--with-codepagedir=${SAMBA_LIBDIR}/codepages
CONFIGURE_ARGS+=	--with-swatdir=${PREFIX}/share/samba/swat
CONFIGURE_ARGS+=	--with-libsmbclient
CONFIGURE_ARGS+=	--with-msdfs
CONFIGURE_ARGS+=	--with-winbind

CONFIGURE_ARGS+=	--with-i18n-swat

.include "../../converters/libiconv/buildlink3.mk"
CONFIGURE_ARGS+=	--with-libiconv=${BUILDLINK_PREFIX.iconv}

## Force the use of the included gettext library this doesn't seem to link
## with the gettext-lib package.
##
CONFIGURE_ARGS+=	--with-included-gettext

USE_GNU_READLINE=	yes	# uses rl_event_hook interface to GNU readline
.include "../../devel/readline/buildlink3.mk"
CONFIGURE_ARGS+=	--with-readline=${BUILDLINK_PREFIX.readline}

CONFIGURE_ENV+=		ac_cv_lib_curses_tgetent=no

.include "options.mk"

# mktemp is useful for the replacement adduser script, but don't require
# a full dependency since it's not actually needed by samba.
#
USE_TOOLS+=		mktemp

#
# findsmb script use perl
#
USE_TOOLS+=		perl

.if !defined(PWD_MKDB)
PWD_MKDB!=	${TYPE} pwd_mkdb 2>&1 | \
		${AWK} '/not found/ { print "pwd_mkdb"; exit } { print $$3 }'
MAKEFLAGS+=	PWD_MKDB=${PWD_MKDB:Q}
.endif
FILES_SUBST+=	MKTEMP=${MKTEMP:Q}
FILES_SUBST+=	PWD_MKDB=${PWD_MKDB:Q}

.if !empty(NSS_WINBIND)
PLIST_SUBST+=	NSS_WINBIND=lib/${NSS_WINBIND}
.else
PLIST_SUBST+=	NSS_WINBIND="@comment no NSS winbind module"
.endif
.if !empty(NSS_WINS)
PLIST_SUBST+=	NSS_WINS=lib/${NSS_WINS}
.else
PLIST_SUBST+=	NSS_WINS="@comment no NSS WINS module"
.endif

DOCDIR=		${PREFIX}/share/doc/samba
EGDIR=		${PREFIX}/share/examples/samba

USE_PKGLOCALEDIR=	YES
USE_LIBTOOL=		yes
SHLIBTOOL_OVERRIDE=	# empty

CONF_FILES=		${EGDIR}/smb.conf.default ${SAMBA_ETCDIR}/smb.conf
CONF_FILES_PERMS+=	${EGDIR}/adduser.sh ${SAMBA_ETCDIR}/adduser \
			${ROOT_USER} ${ROOT_GROUP} 0555
CONF_FILES_PERMS+=	${EGDIR}/deluser.sh ${SAMBA_ETCDIR}/deluser \
			${ROOT_USER} ${ROOT_GROUP} 0555
#CONF_FILES_PERMS=	${SMBPASSWD_FILE}
MAKE_DIRS=		${SAMBA_VARDIR} ${SAMBA_LOGDIR} ${SAMBA_PIDDIR}
OWN_DIRS=		${SAMBA_ETCDIR} ${SAMBA_LOCKDIR}
OWN_DIRS_PERMS=		${SAMBA_PRIVATE} ${ROOT_USER} ${ROOT_GROUP} 0500
RCD_SCRIPTS=		samba nmbd smbd winbindd

PKG_GROUPS=		${SAMBA_GROUP}
PKG_USERS=		${SAMBA_USER}:${SAMBA_GROUP}

PKG_GECOS.${SAMBA_USER}=	Samba pseudo-user

MAKE_FLAGS+=		CFLAGS='-DGUEST_ACCOUNT=\"${SAMBA_USER:Q}\"'

INSTALL_LIBRARY=	\
	${INSTALL} ${COPY} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE}

MESSAGE_SUBST+=		SAMBA_PRIVATE=${SAMBA_PRIVATE}
MESSAGE_SUBST+=		ROOT_GROUP=${ROOT_GROUP}
MESSAGE_SUBST+=		ROOT_USER=${ROOT_USER}

# mktemp is useful for the replacement adduser script, but don't require
# a full dependency since it's not actually needed by samba.
#
USE_TOOLS+=		mktemp

.if !defined(PWD_MKDB)
PWD_MKDB!=	${TYPE} pwd_mkdb 2>&1 | \
		${AWK} '/not found/ { print "pwd_mkdb"; exit } { print $$3 }'
MAKEFLAGS+=	PWD_MKDB=${PWD_MKDB:Q}
.endif
FILES_SUBST+=	MKTEMP=${MKTEMP:Q}
FILES_SUBST+=	PWD_MKDB=${PWD_MKDB:Q}

REPLACE_PERL=		script/findsmb.in

SUBST_CLASSES+=		paths
SUBST_STAGE.paths=	post-patch
SUBST_FILES.paths=	${WRKDIR}/adduser.sh ${WRKDIR}/deluser.sh
SUBST_SED.paths=	-e 's,@AWK@,${AWK},g'
SUBST_SED.paths+=	-e 's,@CAT@,${CAT},g'
SUBST_SED.paths+=	-e 's,@MKTEMP@,${MKTEMP},g'
SUBST_SED.paths+=	-e 's,@RM@,${RM},g'
SUBST_SED.paths+=	-e 's,@PWD_MKDB@,${PWD_MKDB},g'
SUBST_SED.paths+=	-e 's,@SH@,${SH},g'

INSTALLATION_DIRS+=	bin include lib

# Remove irrelevant files for this package.
post-extract:
	${FIND} ${WRKDIR}/${DISTNAME} -name ".cvsignore" -print |	\
		${XARGS} ${RM} -f
	${RM} -r ${WRKDIR}/${DISTNAME}/docs/textdocs/outdated
	${RM} -r ${WRKDIR}/${DISTNAME}/examples/VFS
	${RM} -r ${WRKDIR}/${DISTNAME}/examples/appliance
	${RM} -r ${WRKDIR}/${DISTNAME}/examples/autofs
	${RM} -r ${WRKDIR}/${DISTNAME}/examples/dce-dfs
	${RM} -r ${WRKDIR}/${DISTNAME}/examples/libsmbclient
	${RM} -r ${WRKDIR}/${DISTNAME}/examples/smbchartool
	${RM} -r ${WRKDIR}/${DISTNAME}/examples/svr4-startup
	${CP} ${FILESDIR}/adduser.sh ${WRKDIR}/adduser.sh
	${CP} ${FILESDIR}/deluser.sh ${WRKDIR}/deluser.sh

post-install:
	cd ${PREFIX}/lib && ${LN} -s libsmbclient.so libsmbclient.so.0 || ${TRUE}
.if !empty(NSS_WINBIND)
	${INSTALL_LIBRARY} ${WRKSRC}/nsswitch/${NSS_WINBIND} ${PREFIX}/lib
.endif
.if !empty(PKG_OPTIONS:Mpam)
	${INSTALL_LIB_DIR} ${PREFIX}/lib/security
	${INSTALL_LIBRARY} ${WRKSRC}/bin/pam_smbpass.so ${PREFIX}/lib/security
	${INSTALL_LIBRARY} ${WRKSRC}/nsswitch/pam_winbind.so \
		${PREFIX}/lib/security
.endif
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKDIR}/${DISTNAME}/docs;					\
	for f in announce textdocs/* Registry/*.reg; do			\
		${INSTALL_DATA} $${f} ${DOCDIR};			\
	done

	# Install Samba examples.
	${INSTALL_DATA_DIR} ${EGDIR}
	${INSTALL_SCRIPT} ${WRKDIR}/adduser.sh ${EGDIR}/adduser.sh
	${INSTALL_SCRIPT} ${WRKDIR}/deluser.sh ${EGDIR}/deluser.sh
	cd ${WRKDIR}/${DISTNAME}/examples && pax -wr -pp . ${EGDIR}
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${EGDIR}
	${CHMOD} -R ugo-w ${EGDIR}

	${INSTALL_SCRIPT} ${WRKSRC}/script/convert_smbpasswd		\
		${EGDIR}/misc
	${INSTALL_SCRIPT} ${WRKSRC}/script/mksmbpasswd.sh		\
		${PREFIX}/sbin/mksmbpasswd

.include "../../mk/bsd.pkg.mk"
