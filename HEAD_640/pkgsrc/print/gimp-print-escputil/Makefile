# $NetBSD: Makefile,v 1.25 2008/06/20 01:09:33 joerg Exp $

DISTNAME=	gimp-print-4.2.7
PKGNAME=	gimp-print-escputil-4.2.7
PKGREVISION=	1
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gimp-print/}

MAINTAINER=	gdt@NetBSD.org
HOMEPAGE=	http://gimp-print.sourceforge.net/
COMMENT=	Epson Stylus inkjet printer tool

PKG_DESTDIR_SUPPORT=	user-destdir

#the lib is not really needed, but the build system wants it
BUILDLINK_DEPMETHOD.gimp-print-lib=	build
CONFLICTS+=	gimp<=1.2.3

USE_TOOLS+=		gmake lex
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-libgimpprint=no
CONFIGURE_ARGS+=	--without-cups --without-gimp --without-samples
CONFIGURE_ARGS+=	--without-translated-ppds --without-user-guide

.include "../../print/gimp-print-lib/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
