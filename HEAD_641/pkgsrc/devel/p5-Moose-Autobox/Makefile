# $NetBSD: Makefile,v 1.1.1.1 2009/03/22 15:08:35 seb Exp $
#

DISTNAME=	Moose-Autobox-0.09
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/R/RJ/RJBS/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Moose-Autobox/
COMMENT=	Perl 5 module providing autoboxed wrappers for native datatypes

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Moose/Autobox/.packlist

DEPENDS+=	p5-autobox>=2.23:../../devel/p5-autobox
DEPENDS+=	p5-Moose>=0.42:../../devel/p5-Moose
DEPENDS+=	p5-Perl6-Junction>=1.40000:../../devel/p5-Perl6-Junction
BUILD_DEPENDS+=	p5-Test-Exception>=0.21:../../devel/p5-Test-Exception

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
