# $NetBSD: Makefile,v 1.2 2008/10/19 19:17:54 he Exp $
#

DISTNAME=	File-Policy-1.005
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=File/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/File-Policy/
COMMENT=	Perl 5 module to provide site policy for file I/O functions

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/File/Policy/.packlist

DEPENDS+=	p5-File-Slurp-[0-9]*:../../devel/p5-File-Slurp
DEPENDS+=	p5-Log-Trace-[0-9]*:../../devel/p5-Log-Trace
DEPENDS+=	p5-PathTools-[0-9]*:../../devel/p5-PathTools
DEPENDS+=	p5-Test-Assertions-[0-9]*:../../devel/p5-Test-Assertions

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
