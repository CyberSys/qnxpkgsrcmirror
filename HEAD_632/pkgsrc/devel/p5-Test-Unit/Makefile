# $NetBSD: Makefile,v 1.12 2006/06/18 12:15:48 rillig Exp $

DISTNAME=	Test-Unit-0.24
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5tun
PKGREVISION=	3
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://cpan.uwinnipeg.ca/dist/Test-Unit
COMMENT=	Perl extension module for Unit Tests

DEPENDS+=	p5-Class-Inner-[0-9]*:../../devel/p5-Class-Inner
DEPENDS+=	p5-Devel-Symdump-[0-9]*:../../devel/p5-Devel-Symdump
DEPENDS+=	p5-Error-[0-9]*:../../devel/p5-Error

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/Test/Unit/.packlist

REPLACE_PERL+=	*.pl

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
