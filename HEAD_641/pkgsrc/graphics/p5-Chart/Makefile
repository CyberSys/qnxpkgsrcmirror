# $NetBSD: Makefile,v 1.9 2009/07/17 18:00:16 adrianp Exp $

DISTNAME=	Chart-2.4.1
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	graphics perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Chart/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~chartgrp/
COMMENT=	Perl5 charting library

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		p5-GD>=1.20:../../graphics/p5-GD

USE_LANGUAGES=		# empty

PERL5_PACKLIST=		auto/Chart/.packlist

post-extract:
	${CHMOD} a-x ${WRKSRC}/Chart/*.pm

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
