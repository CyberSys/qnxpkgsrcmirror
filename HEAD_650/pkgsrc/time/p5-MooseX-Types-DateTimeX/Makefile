# $NetBSD: Makefile,v 1.9 2013/05/31 12:42:27 wiz Exp $
#

DISTNAME=	MooseX-Types-DateTimeX-0.10
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MooseX/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/MooseX-Types-DateTimeX/
COMMENT=	Extensions to MooseX::Types::DateTime::ButMaintained
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-DateTimeX-Easy>=0.085:../../time/p5-DateTimeX-Easy
DEPENDS+=	p5-Moose>=0.41:../../devel/p5-Moose
DEPENDS+=	p5-MooseX-Types>=0.04:../../devel/p5-MooseX-Types
DEPENDS+=	p5-MooseX-Types-DateTime-ButMaintained>=0.04:../../time/p5-MooseX-Types-DateTime-ButMaintained
DEPENDS+=	p5-Time-Duration-Parse>=0.06:../../time/p5-Time-Duration-Parse
DEPENDS+=	p5-namespace-clean>=0.08:../../devel/p5-namespace-clean

BUILD_DEPENDS+=	p5-Test-Exception>=0.27:../../devel/p5-Test-Exception
BUILD_DEPENDS+=	p5-Test-use-ok>=0.02:../../devel/p5-Test-use-ok

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/MooseX/Types/DateTimeX/.packlist
PERL5_MODULE_TYPE=	Module::Install::Bundled

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
