# $NetBSD: Makefile,v 1.15 2007/02/22 19:01:26 wiz Exp $
#

DISTNAME=		bk_edit-0.6.23
PKGNAME=		${DISTNAME:S/_//}
PKGREVISION=		2
CATEGORIES=		www
MASTER_SITES=		http://www.vakuumverpackt.de/nettools/bk_edit/

MAINTAINER=		wiz@NetBSD.org
HOMEPAGE=		http://www.vakuumverpackt.de/nettools/bk_edit/
COMMENT=		Bookmark manager and editor

USE_TOOLS+=		bison

HAS_CONFIGURE=		yes
CONFIGURE_ARGS+=	--prefix=${PREFIX:Q}

MAKE_ENV+=		PKG_CFLAGS=${CFLAGS:M*:Q}
MAKE_ENV+=		PKG_LDFLAGS=${LDFLAGS:M*:Q}

.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
