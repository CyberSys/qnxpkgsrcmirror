# $NetBSD: Makefile,v 1.7 2007/11/18 13:28:26 hiramatsu Exp $
#

DISTNAME=	Class-Trigger-0.12
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5ctr
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

MAINTAINER=	hiramatu@boreas.dti.ne.jp
HOMEPAGE=	http://search.cpan.org/dist/Class-Trigger/
COMMENT=	Mixin to add/call inheritable triggers

DEPENDS+=	p5-Class-Data-Inheritable>=0.02:../../devel/p5-Class-Data-Inheritable
DEPENDS+=	p5-IO-stringy>=0.02:../../devel/p5-IO-stringy

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=	auto/Class/Trigger/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
