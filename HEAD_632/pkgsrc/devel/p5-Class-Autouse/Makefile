# $NetBSD: Makefile,v 1.12 2007/11/16 03:11:25 hiramatsu Exp $

DISTNAME=	Class-Autouse-1.29
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Class-Autouse/
COMMENT=	Run-time class loading on first method call

DEPENDS+=	p5-ExtUtils-AutoInstall>=0.61:../../devel/p5-ExtUtils-AutoInstall
DEPENDS+=	p5-Scalar-List-Utils>=1.19:../../devel/p5-Scalar-List-Utils

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/Class/Autouse/.packlist

MAKE_ENV+=	PERL_EXTUTILS_AUTOINSTALL=--skip

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
