# $NetBSD: Makefile,v 1.3 2008/10/19 19:17:55 he Exp $
#

DISTNAME=	IO-InSitu-0.0.2
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/IO-InSitu/
COMMENT=	Perl 5 module to do in-situ processing on a file

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-version-[0-9]*:../../devel/p5-version

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/IO/InSitu/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
