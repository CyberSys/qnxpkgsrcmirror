# $NetBSD: Makefile,v 1.24 2008/09/15 15:28:58 taca Exp $

DISTNAME=	ruby-gd-0.8.0
CATEGORIES=	graphics

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://rubyforge.org/projects/ruby-gd/
COMMENT=	Ruby extension to drive the GD library

GEM_BUILD=		gemspec
GEM_CLEANBUILD=		Makefile *.o GD.${RUBY_DLEXT} mkmf.log

CONFIGURE_ARGS+=	--with-gd-dir=${BUILDLINK_PREFIX.gd:Q}
CONFIGURE_ARGS+=	--with-jpeg
CONFIGURE_ARGS+=	--with-jpeg-dir=${BUILDLINK_PREFIX.jpeg:Q}
CONFIGURE_ARGS+=	--with-ttf
CONFIGURE_ARGS+=	--with-ttf-dir=${BUILDLINK_PREFIX.freetype-lib:Q}
CONFIGURE_ARGS+=	--with-freetype
CONFIGURE_ARGS+=	--with-freetype-dir=${BUILDLINK_PREFIX.freetype2:Q}
CONFIGURE_ARGS+=	--enable-gd2_0

.include "../../misc/rubygems/rubygem.mk"

.include "../../graphics/freetype-lib/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../graphics/gd/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
