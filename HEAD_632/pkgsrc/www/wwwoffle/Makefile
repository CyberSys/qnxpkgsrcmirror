# $NetBSD: Makefile,v 1.70 2007/12/02 11:46:47 wiz Exp $

DISTNAME=	wwwoffle-2.9a
PKGREVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://www.gedanken.freeserve.co.uk/download-wwwoffle/
EXTRACT_SUFX=	.tgz

MAINTAINER=	abs@NetBSD.org
HOMEPAGE=	http://www.gedanken.demon.co.uk/wwwoffle/
COMMENT=	WWW proxy with support for offline browsing

USE_TOOLS+=	gmake gzip perl tar
GNU_CONFIGURE=	yes

CONFIGURE_ARGS+= --with-confdir=${PKG_SYSCONFDIR:Q}
CONFIGURE_ARGS+= --with-spooldir=${VARBASE}/wwwoffle

PKG_SYSCONFSUBDIR=	wwwoffle
CONF_FILES+=		${PREFIX}/share/examples/wwwoffle/wwwoffle.conf ${PKG_SYSCONFDIR}/wwwoffle.conf
CONF_FILES_MODE=	0640
PLIST_SUBST+=		GZIP_CMD=${GZIP_CMD:Q}

INSTALLATION_DIRS=	sbin libdata

RCD_SCRIPTS=		wwwoffled

SUBST_CLASSES+=			fix-paths
SUBST_STAGE.fix-paths=		pre-configure
SUBST_MESSAGE.fix-paths=	Fixing absolute paths.
SUBST_FILES.fix-paths=		cache/search/namazu/scripts/wwwoffle-namazu
SUBST_FILES.fix-paths+=		cache/search/hyperestraier/scripts/wwwoffle-estseek
SUBST_SED.fix-paths=		-e 's,@PREFIX@,${PREFIX},g'

.include "options.mk"

post-extract:
	chmod -R go-w ${WRKSRC}

post-build:
	cd ${WRKSRC}/cache/search/htdig/scripts; \
	for f in wwwoffle-ht*; do \
		${MV} $$f $$f.old; \
		${SED} -e '/htsearch/s#^#${PREFIX}/libexec/cgi-bin/#' \
		  -e 's#/usr/local#${PREFIX}#' $$f.old > $$f; \
		${RM} $$f.old; \
	done

# For bulk-build machines: a one-time install/deinstall, if wwwoffle
# is never run, leaves an incomplete cache directory, which the install
# target incorrectly calculates to be a pre-2.2 cache. This tricks it
# into setting up the cache directory properly.
pre-install:
	${MKDIR} ${VARBASE}/wwwoffle/prevtime1

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/conf/upgrade-config.pl \
	  ${PREFIX}/sbin/wwwoffle-upgrade-config.pl
	${INSTALL_SCRIPT} ${WRKSRC}/conf/upgrade-config-2.0-2.5.pl \
	  ${PREFIX}/sbin/wwwoffle-upgrade-config-2.0-2.5.pl
# Directories other than html and search are automatically created at run time
	${TAR} cCf / - var/wwwoffle/html var/wwwoffle/search | ${GZIP_CMD} -9 \
		> ${PREFIX}/libdata/wwwoffle-spool.tar.gz
	${RMDIR} ${PREFIX}/share/doc/wwwoffle/ru
	${RMDIR} ${PREFIX}/share/doc/wwwoffle/nl
	${RMDIR} ${PREFIX}/share/doc/wwwoffle/it
	@${ECHO}
	@${ECHO} ==+===+===+===+===+===+===+===+===+===+===+===+===+===+===+=
	@${ECHO}
	@${ECHO} Attention pkgsrc source users:
	@${ECHO}
	@${ECHO} 'Please run' "\`make finish'" 'from this directory *after*'
	@${ECHO} '(optionally) running' "\`make package'", 'in order to fix'
	@${ECHO} 'up the installed "wwwoffle.pac" files to your hostname'
	@${ECHO} 'and convert your config file and cache to the new format.'
	@${ECHO}
	@${ECHO} ==+===+===+===+===+===+===+===+===+===+===+===+===+===+===+=
	@${ECHO}

# We don't do the following automatically, as that would inconvenience
# package build machines, not to mention putting the wrong information
# into the "wwwoffle.pac" files.
.PHONY: finish
finish:
	${SETENV} CONFDIR="${PKG_SYSCONFDIR}" PKG_PREFIX="${PREFIX}" \
		${SH} INSTALL _ POST-INSTALL

.include "../../mk/bsd.pkg.mk"
