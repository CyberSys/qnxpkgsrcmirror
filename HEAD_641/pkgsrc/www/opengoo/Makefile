# $NetBSD: Makefile,v 1.7 2009/08/06 03:07:47 taca Exp $
#

DISTNAME=	opengoo_1.5.1
PKGNAME=	${DISTNAME:S/_/-/}
PKGREVISION=	1
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=opengoo/}
EXTRACT_SUFX=	.zip
DIST_SUBDIR=	${DISTNAME}-20090806

MAINTAINER=	taca@NetBSD.org
HOMEPAGE=	http://www.opengoo.org/
COMMENT=	Easy to use Open Source Web Office
LICENSE=	gnu-gpl-v3

DEPENDS+=	${PHP_PKG_PREFIX}-mysql>=5.1.0:../../databases/php-mysql
DEPENDS+=	${PHP_PKG_PREFIX}-mbstring>=5.1.0:../../misc/php-mbstring
DEPENDS+=	${PHP_PKG_PREFIX}-zip>=5.1.0:../../archivers/php-zip
DEPENDS+=	${PHP_PKG_PREFIX}-gd>=5.1.0:../../graphics/php-gd
DEPENDS+=	${PHP_PKG_PREFIX}-dom>=5.1.0:../../textproc/php5-dom
DEPENDS+=	${PHP_PKG_PREFIX}-imap>=5.1.0:../../mail/php-imap

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/opengoo
USE_TOOLS=	pax
NO_BUILD=	yes

OWN_DIRS_PERMS+= ${OG_DIR}/public/files ${BINOWN} ${APACHE_GROUP} 0775
OWN_DIRS_PERMS+= ${OG_DIR}/upload ${BINOWN} ${APACHE_GROUP} 0770
OWN_DIRS_PERMS+= ${OG_DIR}/cache ${BINOWN} ${APACHE_GROUP} 0770
OWN_DIRS_PERMS+= ${OG_DIR}/tmp ${BINOWN} ${APACHE_GROUP} 0770
OWN_DIRS_PERMS+= ${OG_DIR}/config ${BINOWN} ${APACHE_GROUP} 0770
MAKE_DIRS_PERMS+= ${OG_DIR}/tmp/saveatt ${BINOWN} ${APACHE_GROUP} 0770

BUILD_DEFS+=	APACHE_GROUP APACHE_USER
FILES_SUBST+=	OG_DIR=${OG_DIR} APACHE_USER=${APACHE_USER}
PLIST_SUBST+=	OG_DIR=${OG_DIR}

PRINT_PLIST_AWK+=	/^${OG_DIR:S|/|\\/|g}/ \
			{ gsub(/${OG_DIR:S|/|\\/|g}/, "$${OG_DIR}"); \
			print; next; }

.include "../../mk/bsd.prefs.mk"

OG_DIR?=	share/opengoo

post-extract:
	cd ${WRKSRC}; ${FIND} . -type f -exec ${CHMOD} -x {} \;

pre-install:
	cd ${WRKSRC}; ${RM} -f .buildpath .project \
		application/views/files/.cvsignore \
		environment/classes/.cvsignore \
		config/empty.config.php

do-install:
	cd ${WRKSRC}; ${FIND} . -type f -print | \
		pax -rw ${DESTDIR}${PREFIX}/${OG_DIR}

.include "../../lang/php/phpversion.mk"
.include "../../mk/bsd.pkg.mk"
