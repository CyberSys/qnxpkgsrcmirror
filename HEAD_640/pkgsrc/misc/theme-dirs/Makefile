# $NetBSD: Makefile,v 1.10 2008/06/20 01:09:27 joerg Exp $
#

DISTNAME=	theme-dirs-1.1
PKGREVISION=	1
CATEGORIES=	misc gnome kde
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	# empty
COMMENT=	Shared theme directories

PKG_DESTDIR_SUPPORT=	user-destdir

NO_BUILD=	yes
NO_CONFIGURE=	yes
NO_CHECKSUM=	yes
NO_EXTRACT=	yes
PLIST_SRC=	# empty
USE_DIRS=	xdg-1.1
USE_LANGUAGES=	# empty
WRKSRC=		${WRKDIR}

.include "dirs.mk"
.include "../../mk/bsd.prefs.mk"

REQD_DIRS+=	${THEME_DIRS:O:S/^/${PREFIX}\//}

do-install:	# nothing

.include "../../mk/bsd.pkg.mk"
