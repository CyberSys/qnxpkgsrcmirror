# $NetBSD: Makefile,v 1.4 2008/10/19 19:17:58 he Exp $
#

DISTNAME=	Path-Class-0.16
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/K/KW/KWILLIAMS/}

MAINTAINER=	bad@netbsd.org
HOMEPAGE=	http://search.cpan.org/~kwilliams/Path-Class-0.16/
COMMENT=	Cross-platform path specification manipulation

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=	auto/Path/Class/.packlist

DEPENDS+=	p5-PathTools>=3.19:../../devel/p5-PathTools

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
