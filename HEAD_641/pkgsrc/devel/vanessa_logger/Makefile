# $NetBSD: Makefile,v 1.7 2008/06/20 01:09:17 joerg Exp $
#

DISTNAME=		vanessa_logger-0.0.7
PKGREVISION=		2
CATEGORIES=		devel
MASTER_SITES=		http://www.vergenet.net/linux/vanessa/download/vanessa_logger/0.0.7/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.vergenet.net/linux/vanessa/
COMMENT=		Library that provides a generic logging layer

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

# The SunPro compiler does not understand __FUNCTION__, as well as
# __func__. So __FILE__ is the nearest replacement.
.include "../../mk/compiler.mk"
.if !empty(PKGSRC_COMPILER:Msunpro)
SUBST_CLASSES+=			__function__
SUBST_STAGE.__function__=	post-patch
SUBST_FILES.__function__=	libvanessa_logger/vanessa_logger.h
SUBST_SED.__function__=		-e "s|__FUNCTION__|__FILE__|g"
.endif

.include "../../mk/bsd.pkg.mk"
