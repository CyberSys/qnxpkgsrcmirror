# $NetBSD: Makefile,v 1.3 2005/08/06 06:19:23 jlam Exp $

DISTNAME=	Number-Compare-0.01
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5nbc
PKGREVISION=	1
CATEGORIES=	math perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Number/}

MAINTAINER=	hiramatu@boreas.dti.ne.jp
HOMEPAGE=	http://search.cpan.org/dist/Number-Compare/
COMMENT=	Compiles a simple comparison to an anonymous subroutine

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/Number/Compare/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
