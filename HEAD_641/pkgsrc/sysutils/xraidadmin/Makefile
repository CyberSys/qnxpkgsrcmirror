# $NetBSD: Makefile,v 1.14 2009/05/19 08:59:35 wiz Exp $
#

DISTNAME=		RAIDAdmin1.3.1archive
PKGNAME=		xraidadmin-1.3.1
PKGREVISION=		1
CATEGORIES=		sysutils
MASTER_SITES=		http://download.info.apple.com/Mac_OS_X/061-1325.20040706.bNhy4/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.apple.com/downloads/macosx/apple/xserveraidadmintools.html
COMMENT=		Tool to administer Apple's Xserve RAID
LICENSE=		apple-admin-license

RESTRICTED=		Redistribution not permitted
NO_SRC_ON_CDROM=	${RESTRICTED}
NO_SRC_ON_FTP=	${RESTRICTED}
NO_BIN_ON_CDROM=	${RESTRICTED}
NO_BIN_ON_FTP=	${RESTRICTED}

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}/RAID\ Admin\ 1.3.1

NO_BUILD=		yes
USE_JAVA=		run
PKG_JVMS_ACCEPTED=	sun-jdk13 sun-jdk14
INSTALLATION_DIRS=	bin libexec/xraidadmin

do-configure:
	${SED} -e 's|@SH@|${SH}|' -e 's|@PKG_JAVA_HOME@|${PKG_JAVA_HOME}|' \
		-e 's|@PREFIX@|${PREFIX}|' ${FILESDIR}/xraidadmin.in >	   \
		${WRKSRC}/xraidadmin

do-install:
	${INSTALL_DATA} ${WRKSRC}/RAID_Admin.jar ${DESTDIR}${PREFIX}/libexec/xraidadmin/RAID_Admin.jar
	${INSTALL_SCRIPT} ${WRKSRC}/xraidadmin ${DESTDIR}${PREFIX}/bin/xraidadmin

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
