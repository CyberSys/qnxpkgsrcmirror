# $NetBSD: Makefile,v 1.8 2008/11/04 09:52:39 adam Exp $

PKGNAME=	postgresql82-plperl-${BASE_VERS}
COMMENT=	PL/Perl procedural language for the PostgreSQL backend

DEPENDS+=	postgresql82-server>=${BASE_VERS}:../../databases/postgresql82-server

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../databases/postgresql82/Makefile.common"

PERL5_CONFIGURE=	no
CONFIGURE_ARGS+=	--with-perl

BUILD_DIRS=		src/pl/plperl
MAKE_FILE=		GNUmakefile
BUILD_MAKE_FLAGS=	PGXS=1

USE_TOOLS+=		perl
USE_LIBTOOL=		yes
PKG_LIBTOOL=		${PKG_SHLIBTOOL}

.include "../../databases/postgresql82-client/buildlink3.mk"
.include "../../lang/perl5/module.mk"

.include "../../mk/bsd.pkg.mk"
