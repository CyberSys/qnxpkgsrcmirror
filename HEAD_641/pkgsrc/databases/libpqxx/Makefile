# $NetBSD: Makefile,v 1.21 2008/07/14 12:56:01 joerg Exp $
#

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../databases/libpqxx/Makefile.common"

COMMENT=		C++ interface to postgresql-lib
PKGREVISION=		2

NOT_FOR_PLATFORM=	NetBSD-*-pc532

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
PKGCONFIG_OVERRIDE+=	libpqxx.pc.in
GNU_CONFIGURE=		yes

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD"
# No strerror_r
CONFIGURE_ARGS+=	--disable-thread-safety
.endif

# Avoid an ICE in gcc2 on sparc64
CONFIGURE_ENV+=		F77=${FALSE:Q}

.include "../../mk/pgsql.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
