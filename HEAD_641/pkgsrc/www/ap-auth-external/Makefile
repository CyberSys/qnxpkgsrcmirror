# $NetBSD: Makefile,v 1.7 2009/07/22 00:56:27 schmonz Exp $
#

DISTNAME=	mod_auth_external-${DISTVERS}
PKGREVISION=	2
PKGNAME=	${APACHE_PKG_PREFIX}-auth-external-${DISTVERS}
CATEGORIES=	www
MASTER_SITES=	http://mod-auth-external.googlecode.com/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://code.google.com/p/mod-auth-external/
COMMENT=	Apache module for external program authentication

PKG_APACHE_ACCEPTED=	apache13

.include "../../mk/apache.mk"

APACHE_MODULE_NAME=	mod_auth_external.${MODULE_EXT}

DISTVERS=	2.1.19
MODULE_EXT=	so
MESSAGE_SUBST+=	MODULE_NAME=external_auth_module
.include "../../www/apache/module.mk"
.include "../../mk/bsd.pkg.mk"
