# $NetBSD: Makefile,v 1.13 2008/10/19 19:18:30 he Exp $

DISTNAME=		Mac-Macbinary-0.06
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		1
SVR4_PKGNAME=		p5mmb
CATEGORIES=		misc perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Mac/}

MAINTAINER=		pkgsrc-users@NetBSD.org
COMMENT=		Perl5 module for decoding Macbinary files

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Mac/Macbinary/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
