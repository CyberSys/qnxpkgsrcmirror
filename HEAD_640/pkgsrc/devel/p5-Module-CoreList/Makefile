# $NetBSD: Makefile,v 1.18 2009/01/20 23:42:43 he Exp $
#

DISTNAME=	Module-CoreList-2.17
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5mcl
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Module-CoreList/
COMMENT=	Perl 5 module inventorying modules shipped with core Perl

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Module/CoreList/.packlist

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
