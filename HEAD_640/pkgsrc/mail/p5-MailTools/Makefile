# $NetBSD: Makefile,v 1.45 2008/10/19 19:18:20 he Exp $

DISTNAME=	MailTools-2.04
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
SVR4_PKGNAME=	p5mto
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

MAINTAINER=	rhaen@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/MailTools/
COMMENT=	Perl5 modules related to mail applications

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_DEPENDS+=	p5-Net>=1.09:../../net/p5-Net
DEPENDS+=	p5-TimeDate-[0-9]*:../../time/p5-TimeDate
# just needed for tests
#DEPENDS+=	p5-Test-Pod-[0-9]*:../../devel/p5-Test-Pod

PERL5_PACKLIST=		auto/Mail/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
