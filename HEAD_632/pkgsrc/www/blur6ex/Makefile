# $NetBSD: Makefile,v 1.10 2006/06/02 18:28:00 joerg Exp $
#

DISTNAME=	blur6ex-0.1.198
PKGREVISION=	4
CATEGORIES=	www
MASTER_SITES=	http://www.blursoft.com/releases/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.blursoft.com/
COMMENT=	Weblog and content framework

DEPENDS+=	${APACHE_PKG_PREFIX}-${PHP_PKG_PREFIX}>=4.0.0:../../www/ap-php
DEPENDS+=	${PHP_PKG_PREFIX}-mysql-[0-9]*:../../databases/php-mysql
DEPENDS+=	mysql-server>=4.1:../../databases/mysql5-server

NO_CONFIGURE=	yes
NO_BUILD=	yes

HTTPD_ROOT?=	share/httpd/htdocs
PLIST_SUBST+=	HTTPD_ROOT=${HTTPD_ROOT:Q}

BUILD_DEFS+=	HTTPD_ROOT

EGDIR=		share/examples/${PKGBASE}
PEGDIR=		${PREFIX}/${EGDIR}

INSTALLATION_DIRS=	${HTTPD_ROOT}/blog share/doc/${PKGBASE} \
			share/examples/${PKGBASE}

PKG_SYSCONFDIR.blur6exdb=	${PREFIX}/${HTTPD_ROOT}/blog/engine/core
PKG_SYSCONFDIR.blur6ex=		${PREFIX}/${HTTPD_ROOT}/blog

MESSAGE_SUBST+=	PKG_SYSCONFDIR.blur6exdb=${PKG_SYSCONFDIR.blur6exdb}
MESSAGE_SUBST+=	PKG_SYSCONFDIR.blur6ex=${PKG_SYSCONFDIR.blur6ex}

CONF_FILES=	${PEGDIR}/db.php ${PKG_SYSCONFDIR.blur6exdb}/db.php
CONF_FILES+=	${PEGDIR}/index.php ${PKG_SYSCONFDIR.blur6ex}/index.php

pre-install:
	${INSTALL_DATA} ${WRKSRC}/engine/core/db.php ${PEGDIR}
	${INSTALL_DATA} ${WRKSRC}/index.php ${PEGDIR}

do-install:
	${INSTALL_DATA}						\
		${WRKSRC}/install/INSTALL.txt			\
		${WRKSRC}/install/blur6ex_tables.sql		\
		${PREFIX}/share/doc/${PKGBASE}
	cd ${WRKSRC} && ${PAX} -rwppm '-s|.*/install.*$$||'	\
		'-s|./index.php$$||'				\
		'-s|./engine/core/db.php$$||' .			\
		${PREFIX}/${HTTPD_ROOT}/blog

.include "../../mk/apachever.mk"
.include "../../lang/php/phpversion.mk"
.include "../../mk/bsd.pkg.mk"
