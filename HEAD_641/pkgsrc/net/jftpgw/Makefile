# $NetBSD: Makefile,v 1.12 2008/07/14 12:56:10 joerg Exp $

DISTNAME=	    jftpgw-0.13.5
#PKGREVISION=	    1
CATEGORIES=	    net
MASTER_SITES=	    http://www.mcknight.de/jftpgw/

MAINTAINER=	    pkgsrc-users@NetBSD.org
HOMEPAGE=	    http://www.mcknight.de/jftpgw/
COMMENT=	    FTP gateway/proxy

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--with-logpath=${VARBASE}/log
CONFIGURE_ARGS+=	--enable-crypt
CONFIGURE_ARGS+=	--enable-sftp

RCD_SCRIPTS=		jftpgw
EGDIR=			${PREFIX}/share/examples/jftpgw
CONF_FILES=		${EGDIR}/jftpgw.conf ${PKG_SYSCONFDIR}/jftpgw.conf

SUBST_CLASSES+=		log
SUBST_STAGE.log=	post-patch
SUBST_FILES.log=	active.c bindport.c cache.c cmds.c config.c \
			ftpread.c fw_auth_cmds.c jftpgw.c log.c log.h \
			login.c openport.c passive.c states.c std_cmds.c \
			util.c
SUBST_SED.log=		-e "s,\([[:space:]]\)\(log(\),\1x\2,"

SUBST_CLASSES+=		config
SUBST_STAGE.config=	post-build
SUBST_FILES.config=	jftpgw.conf.sample
SUBST_SED.config=	-e "s/nobody/root/"

CHECK_PORTABILITY_SKIP+=	support/jftpgw.startscript.non-RH

.include "../../mk/bsd.pkg.mk"
