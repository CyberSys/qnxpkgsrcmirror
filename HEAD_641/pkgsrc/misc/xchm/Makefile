# $NetBSD: Makefile,v 1.42 2009/08/10 17:50:04 minskim Exp $
#

DISTNAME=	xchm-1.17
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xchm/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://xchm.sourceforge.net/
COMMENT=	CHM viewer for UNIX

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c c++
GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes

.include "../../devel/chmlib/buildlink3.mk"
.include "../../x11/wxGTK28/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
