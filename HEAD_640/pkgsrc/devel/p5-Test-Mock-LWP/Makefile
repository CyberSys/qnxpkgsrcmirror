# $NetBSD: Makefile,v 1.2 2008/10/19 19:18:01 he Exp $
#

DISTNAME=	Test-Mock-LWP-0.05
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5 net
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Test-Mock-LWP/
COMMENT=	Perl 5 package providing easy mocking of LWP packages

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Test/Mock/LWP/.packlist

DEPENDS+=	p5-Test-MockObject>=1.08:../../devel/p5-Test-MockObject

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
