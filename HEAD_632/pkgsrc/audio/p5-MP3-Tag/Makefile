# $NetBSD: Makefile,v 1.14 2007/02/02 22:48:32 wiz Exp $

DISTNAME=	tagged-0.40
PKGNAME=	p5-MP3-Tag-0.40
SVR4_PKGNAME=	p5mp3
PKGREVISION=	2
CATEGORIES=	audio perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MP3/}

MAINTAINER=	damon@brodiefamily.org
HOMEPAGE=	http://tagged.sourceforge.net/
COMMENT=	This is a perl module to read/write tags of mp3-files

DEPENDS+=	p5-Compress-Zlib>=1.0:../../devel/p5-Compress-Zlib

PERL5_PACKLIST=		auto/MP3/Tag/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
