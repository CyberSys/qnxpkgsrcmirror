# $NetBSD: Makefile,v 1.17 2007/02/22 19:27:07 wiz Exp $
#

DISTNAME=		gss-0.0.15
CATEGORIES=		security
MASTER_SITES=		http://josefsson.org/gss/releases/ \
			${MASTER_SITE_GNU:=gss/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.gnu.org/software/gss/
COMMENT=		GNU Generic Security Service Library

CONFLICTS+=		heimdal-[0-9]*

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_TOOLS+=		pkg-config
GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
INFO_FILES=		# PLIST

PKGCONFIG_OVERRIDE+=	gss.pc.in

.include "../../mk/bsd.pkg.mk"
