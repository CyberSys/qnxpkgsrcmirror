# $NetBSD: Makefile,v 1.19 2008/10/19 19:18:45 he Exp $
#

DISTNAME=		Crypt-DSA-0.14
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		1
SVR4_PKGNAME=		p5dsa
CATEGORIES=		security perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Crypt/}

MAINTAINER=		heinz@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Crypt-DSA/
COMMENT=		Perl5 module for the DSA public key algorithm

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		p5-Digest-SHA1-[0-9]*:../../security/p5-Digest-SHA1
DEPENDS+=		p5-Data-Buffer-[0-9]*:../../devel/p5-Data-Buffer
DEPENDS+=		p5-Convert-PEM>=0.07:../../textproc/p5-Convert-PEM

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Crypt/DSA/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
