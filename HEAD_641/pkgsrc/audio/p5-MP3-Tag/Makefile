# $NetBSD: Makefile,v 1.17 2009/04/11 23:15:19 sno Exp $

DISTNAME=	tagged-0.40
PKGNAME=	p5-MP3-Tag-0.40
PKGREVISION=	4
SVR4_PKGNAME=	p5mp3
CATEGORIES=	audio perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MP3/}

MAINTAINER=	damon@brodiefamily.org
HOMEPAGE=	http://tagged.sourceforge.net/
COMMENT=	This is a perl module to read/write tags of mp3-files

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-IO-Compress>=2.017:../../devel/p5-IO-Compress

PERL5_PACKLIST=		auto/MP3/Tag/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
