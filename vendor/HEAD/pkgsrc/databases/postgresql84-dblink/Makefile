# $NetBSD: Makefile,v 1.13 2013/11/29 12:54:02 joerg Exp $

PKGNAME=	${DISTNAME:C/-/84-dblink-/}
COMMENT=	Remote database connection dblink module

DEPENDS+=	postgresql84-server>=${PKGVERSION_NOREV}:../../databases/postgresql84-server

MAKE_JOBS_SAFE=	no

.include "../../databases/postgresql84/Makefile.common"

CONFIGURE_ARGS+=	--with-openssl
BUILD_MAKE_FLAGS=	PGXS=1
CFLAGS.SunOS+=		-D_POSIX_PTHREAD_SEMANTICS

BUILD_DIRS=		src/interfaces/libpq
BUILD_DIRS+=		contrib/dblink
INSTALL_DIRS=		contrib/dblink
REQD_DIRS+=		share/doc/postgresql/contrib
REQD_DIRS+=		share/postgresql/contrib

.include "../../databases/postgresql84-client/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
