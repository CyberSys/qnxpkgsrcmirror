# $NetBSD: Makefile,v 1.26 2009/01/17 23:36:22 adam Exp $

DISTNAME=	glpk-4.35
CATEGORIES=	math
MASTER_SITES=	ftp://ftp.gnu.org/gnu/glpk/

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/glpk/glpk.html
COMMENT=	Library for solving linear programming problems

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=		yes
USE_TOOLS+=		gmake
GNU_CONFIGURE=		yes

.include "../../devel/gmp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
